package com.dao.impl;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CustomerDao;
import com.dao.OrderDao;
import com.dao.ProductDao;
import com.entity.Customer;
import com.entity.Order;
import com.entity.OrderDetail;
import com.entity.Product;
import com.model.CartInfo;
import com.model.CartLineInfo;
import com.model.CustomerInfo;
import com.model.OrderDetailInfo;
import com.model.OrderInfo;

import com.service.ProductService;

import com.model.PaginationResult;


@Repository
@Transactional
public class OrderDaoImpl implements OrderDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private CustomerDao customerDao;
	
	private int getMaxOrderNum() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "select max(ORD.orderNum) from Order ORD";

		Query<Integer> query = session.createQuery(hql);
		Integer value = (Integer) query.uniqueResult();

		if(value == null) {
			return 0;
		}
		return value;
		 
	}
	
	@Override
	public void saveOrder(CartInfo cartInfo) {
		Session session = sessionFactory.getCurrentSession();
		
 		int orderNum = getMaxOrderNum() + 1;
		
		Order order = new Order();
		order.setId(UUID.randomUUID().toString());
		order.setOrderDate(new Date());
		order.setOrderNum(orderNum);
		order.setAmount(cartInfo.getAmountTotal());
		
		CustomerInfo customerInfo = cartInfo.getCustomerInfo();
//		Customer customer = new Customer();
//		customer.setFullName(customerInfo.getName());
//		customer.setEmail(customerInfo.getEmail());
//		customer.setPhone(customerInfo.getPhone());
//		customer.setAddress(customerInfo.getAddress());
		
//		session.persist(customer);//customer đang là một thuộc tính của Order(có mối quan hệ với order)
		//trước khi em set customer vào order thì em phải lưu customer xuống database trước rồi mới được set như vầy order.setCustomer(customer)
		
		//phải lấy customer từ trong db ra trước mới set vào order.setCustomer(customer);
		Customer customer = customerDao.getCustomerById(customerInfo.getId());
		order.setCustomer(customer);
		session.persist(order);
		
		List<CartLineInfo> cartLineInfos = cartInfo.getCartLineInfos();
		for(CartLineInfo cartLineInfo : cartLineInfos) { 
			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setId(UUID.randomUUID().toString());
			orderDetail.setOrder(order);
			orderDetail.setPrice(cartLineInfo.getProductInfo().getPrice());
   			orderDetail.setAmount(cartLineInfo.getAmount());
			orderDetail.setQuantity(cartLineInfo.getQuantity());
			
			String code = cartLineInfo.getProductInfo().getCode();
			Product product = productDao.getProductByCode(code);
			orderDetail.setProduct(product);
			
			session.persist(orderDetail);
		}
		cartInfo.setOrderNum(orderNum);
		session.flush();
	}
	
	public Order GetOrderById(String orderId) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "Select ORD From Order Where ORD.id = :ORDERID";
		Query<Order> query = session.createQuery(hql);
		query.setParameter("ORDERID", orderId);
		Order order = (Order) query.uniqueResult();
		return order;
	}

	@Override
	public OrderInfo getOrderInfoById(String orderId) {
		// TODO Auto-generated method stub
		Order order = GetOrderById(orderId);
		if(order == null) {
			return null;
		}
		CustomerInfo customerInfo = new CustomerInfo(order.getCustomer().getId(), order.getCustomer().getFullName(), order.getCustomer().getAddress(), order.getCustomer().getEmail(),
				order.getCustomer().getPhone());
		OrderInfo orderInfo = new OrderInfo(order.getId(), order.getOrderDate(), order.getOrderNum(), order.getAmount(), customerInfo);
		return orderInfo;
	}

	@Override
	public PaginationResult<OrderInfo> getAllOrderInfo(int page, int maxResult) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT NEW " + OrderInfo.class.getName() + " (ORD.id, ORD.orderDate, ORD.orderNum, ORD.amount, ORD.customer) FROM Order ORD ORDER BY ORD.orderNum DESC";
		Query<OrderInfo> query = session.createQuery(hql);
		List<OrderInfo> orderInfos = query.list();
		PaginationResult<OrderInfo> paginationResult = new PaginationResult<OrderInfo>(query, page, maxResult);
		return paginationResult;
	}

	@Override
	public List<OrderDetailInfo> GetAllOrderDetail(String orderId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT NEW " + OrderDetailInfo.class.getName() + " (ORD.id, ORD.product.code, ORD.product.name, "
				+ "ORD.quantity, ORD.price, ORD.amount) FROM OrderDetail ORD WHERE ORD.order.id = :ORDERID";
		Query<OrderDetailInfo> query = session.createQuery(hql);
		query.setParameter("ORDERID", orderId);
		List<OrderDetailInfo> orderDetailInfos = query.list();
		return orderDetailInfos;
	}

	@Override
	public List<OrderInfo> getOrderByCustomer(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String hql = "Select new " + OrderInfo.class.getName() + "(ORD.id, ORD.orderDate, ORD.orderNum, ORD.amount) From Order ORD Where ORD.customer.id = :ID";
		Query<OrderInfo> query = session.createQuery(hql);
		query.setParameter("ID", id);
		List<OrderInfo> orderInfo = query.list();
		return orderInfo;
	}

}
