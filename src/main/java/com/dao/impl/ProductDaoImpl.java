package com.dao.impl;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ProductDao;
import com.entity.Category;
import com.entity.Producer;
import com.entity.Product;
import com.model.PaginationResult;
import com.model.ProductDetail;
import com.model.ProductInfo;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public PaginationResult<ProductInfo> getAllProductInfos(int page, int maxResult, String likeName) {
		Session session = sessionFactory.getCurrentSession();

		String hql = "SELECT NEW " + ProductInfo.class.getName()
				+ "(PRO.code, PRO.name, PRO.price, PRO.quantity) FROM Product PRO";
		if (likeName != null && likeName.length() > 0) {
			hql += " WHERE LOWER(PRO.code) LIKE :LIKENAME ";
		}
		hql += " ORDER BY PRO.createDate DESC ";

		Query<ProductInfo> query = session.createQuery(hql);
		List<ProductInfo> productInfos = query.list();
		PaginationResult<ProductInfo> paginationResult = new PaginationResult<ProductInfo>(query, page, maxResult);
		return paginationResult;
	}

	@Override
	public PaginationResult<ProductInfo> getProductByName(int page, int maxResult, String name) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT NEW " + ProductInfo.class.getName()
				+ " (PRO.code, PRO.name, PRO.price, PRO.quantity) FROM Product PRO WHERE LOWER(PRO.name) LIKE :LIKENAME ORDER BY PRO.createDate DESC ";
		Query<ProductInfo> query = session.createQuery(hql);
		if (name != null && name.length() > 0) {
			query.setParameter("LIKENAME", "%" + name.toLowerCase() + "%");
		}
		List<ProductInfo> productInfos = query.list();
		PaginationResult<ProductInfo> paginationResult = new PaginationResult<ProductInfo>(query, page, maxResult);
		return paginationResult;
	}

	public PaginationResult<ProductInfo> getProductInfosByCategory(int page, int maxResult, String likeName,
			String nameCategory,String nameProducer) {
		Category  category = getCategoryByName(nameCategory);
		Producer producer = getProducerByName(nameProducer);
		if(category==null&&producer==null)
			return getAllProductInfos(page, maxResult, likeName);
		else if(category!=null&& producer ==null) {
			return getAllByCategory(page, maxResult, likeName, category.getId());
		}
		else 
			return getAllProductByProducer(page, maxResult, likeName, category.getId(), producer.getId());
	}

	public PaginationResult<ProductInfo> getAllByCategory(int page, int maxResult, String likeName,
			int idCategory) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT NEW " + ProductInfo.class.getName()
				+ "(PRO.code, PRO.name, PRO.price, PRO.quantity) FROM Product PRO";
		hql += " WHERE PRO.category.id = :idCategory";
		hql += " ORDER BY PRO.createDate DESC ";
		Query<ProductInfo> query = session.createQuery(hql);
		query.setParameter("idCategory", idCategory);
		List<ProductInfo> productInfos = query.list();
		PaginationResult<ProductInfo> paginationResult = new PaginationResult<ProductInfo>(query, page, maxResult);
		return paginationResult;
	}
	
	public PaginationResult<ProductInfo> getAllProductByProducer(int page, int maxResult, String likeName,
			int idCategory, int idProducer) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT NEW " + ProductInfo.class.getName()
				+ "(PRO.code, PRO.name, PRO.price, PRO.quantity) FROM Product PRO";
		hql += " WHERE PRO.category.id = :idCategory AND PRO.producer.id = :idProducer";
		hql += " ORDER BY PRO.createDate DESC ";
		Query<ProductInfo> query = session.createQuery(hql);
		query.setParameter("idCategory", idCategory);
		query.setParameter("idProducer", idProducer);
		List<ProductInfo> productInfos = query.list();
		PaginationResult<ProductInfo> paginationResult = new PaginationResult<ProductInfo>(query, page, maxResult);
		return paginationResult;
	}

	@Override
	public PaginationResult<ProductInfo> getProductInfosByProducer(int page, int maxResult, String likeName,
			int idProducer) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT NEW " + ProductInfo.class.getName()
				+ "(PRO.code, PRO.name, PRO.price, PRO.quantity) FROM Product PRO";
		hql += " WHERE PRO.producer.id = :idProducer";
		hql += " ORDER BY PRO.createDate DESC ";
		Query<ProductInfo> query = session.createQuery(hql);
		query.setParameter("idCategory", idProducer);
		List<ProductInfo> productInfos = query.list();
		PaginationResult<ProductInfo> paginationResult = new PaginationResult<ProductInfo>(query, page, maxResult);
		return paginationResult;
	}

	public Product getProductByCode(String code) {
 		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT PRO FROM Product PRO WHERE PRO.code = :CODE";
		Query<Product> query = session.createQuery(hql);
		query.setParameter("CODE", code);
		Product product = (Product) query.uniqueResult();
		return product;
	}

	@Override
	public ProductInfo getProductInfoByCode(String code) {
		Product product = this.getProductByCode(code);
		ProductDetail productDetail = new ProductDetail(product.getDetail().getId(), product.getDetail().getInsurance(),
				product.getDetail().getWeight(), product.getDetail().getColor(),
				product.getDetail().getSpecifications());

		ProductInfo productInfo = new ProductInfo(product.getCode(), product.getName(), product.getPrice(),
				product.getQuantity(), productDetail, product.getCategory().getName(), product.getProducer().getName(),
				null);
		return productInfo;
	}

	@Override
	public void saveProductInfo(ProductInfo productInfo) {
		Session session = sessionFactory.getCurrentSession();
		String code = productInfo.getCode();
		Product product = null;
		boolean isNew = false;

		if (code != null) {
			product = getProductByCode(code);
			if (product == null)
				product = new Product();
			isNew = true;
			product.setCreateDate(new Date());
		}

		product.setCode(code);
		product.setName(productInfo.getName());
		product.setQuantity(productInfo.getQuantity());
		product.setPrice(productInfo.getPrice());
		product.setCategory(getCategoryByName(productInfo.getCategory()));
		product.setProducer(getProducerByName(productInfo.getProducer()));
		if (productInfo.getFileData() != null) {
			byte[] image = productInfo.getFileData().getBytes();
			if (image != null && image.length > 0)
				product.setImage(image);
		}
		if (isNew)
			session.persist(product);
		product.setDetail(updateDeatil(productInfo));
	
		session.flush();
	}

	public Producer getProducerByName(String name) {
		Producer producer = null;
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT PRO FROM Producer PRO WHERE PRO.name= :name";
		Query<Producer> query = session.createQuery(hql);
		query.setParameter("name", name);
		producer = (Producer) query.uniqueResult();
		return producer;
	}

	public Category getCategoryByName(String name) {
		Category category = null;
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT CAT FROM Category CAT WHERE CAT.name= :name";
		Query<Category> query = session.createQuery(hql);
		query.setParameter("name", name);
		category = (Category) query.uniqueResult();
		return category;
	}

	public com.entity.ProductDetail updateDeatil(ProductInfo productInfo) {
		Session session = sessionFactory.getCurrentSession();
		com.entity.ProductDetail productDetail = null;
		try {
			productDetail = session.get(com.entity.ProductDetail.class, productInfo.getDetail().getId());
			if (productDetail == null)
				productDetail = new com.entity.ProductDetail();
			productDetail.setColor(productInfo.getDetail().getColor());
			productDetail.setInsurance(productInfo.getDetail().getInsurance());
			productDetail.setSpecifications(productInfo.getDetail().getSpecification());
			productDetail.setWeight(productInfo.getDetail().getWeight());
			productDetail.setProduct(getProductByCode(productInfo.getCode()));
			session.save(productDetail);
		} catch (Exception e) {
			e.getMessage();
		}
		return productDetail;
	}

	public boolean deleteProduct(String code) {
		boolean isDelete = false;
		try {
			Session session = sessionFactory.getCurrentSession();
			Product product = session.get(Product.class, code);

			session.delete(product);

			isDelete = true;
		} catch (Exception e) {
			e.getMessage();
		}
		return isDelete;
	}

	@Override
	public List<Category> getAllCategory() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT C FROM Category C";
		Query<Category> query = session.createQuery(hql);
		List<Category> categories = query.getResultList();
		return categories;
	}

	@Override
	public List<Producer>getAllProducer() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT PRO FROM Producer PRO";
		Query<Producer> query = session.createQuery(hql);
		List<Producer> producers = query.getResultList();
		return producers;
	}



}
