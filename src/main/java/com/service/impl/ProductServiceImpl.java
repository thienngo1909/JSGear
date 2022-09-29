package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProductDao;
import com.entity.Category;
import com.entity.Producer;
import com.entity.Product;
import com.model.PaginationResult;
import com.model.ProductInfo;
import com.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductDao productDao;
	
	@Override
	public PaginationResult<ProductInfo> getAllProductInfos(int page, int maxResult, String likeName) {
		// TODO Auto-generated method stub
		return productDao.getAllProductInfos(page, maxResult, likeName);
	}

	@Override
	public PaginationResult<ProductInfo> getProductInfosByCategory(int page, int maxResult, String likeName,
			int idCategory) {
		// TODO Auto-generated method stub
		return productDao.getProductInfosByCategory(page, maxResult, likeName, idCategory);
	}

	@Override
	public PaginationResult<ProductInfo> getProductByName(int page, int maxResult, String name) {
		// TODO Auto-generated method stub
		return productDao.getProductByName(page, maxResult, name);
	}

	@Override
	public ProductInfo getProductInfoByCode(String code) {
		// TODO Auto-generated method stub
		return productDao.getProductInfoByCode(code);
	}

	@Override
	public Product getProductByCode(String code) {
		// TODO Auto-generated method stub
		return productDao.getProductByCode(code);
	}

	@Override
	public void saveProductInfo(ProductInfo productInfo) {
		productDao.saveProductInfo(productInfo);
		
	}

	@Override
	public boolean deleteProduct(String code) {
		// TODO Auto-generated method stub
		return productDao.deleteProduct(code);
	}

	@Override
	public List<Category> getAllCategory() {
		// TODO Auto-generated method stub
		return productDao.getAllCategory();
	}

	@Override
	public List<Producer> getAllProducer() {
		// TODO Auto-generated method stub
		return productDao.getAllProducer();
	}

}
