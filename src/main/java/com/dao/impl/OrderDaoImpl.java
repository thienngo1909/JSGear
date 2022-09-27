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

import com.dao.OrderDao;
import com.dao.ProductDao;
import com.entity.Customer;
import com.entity.Order;
import com.entity.OrderDetail;
import com.entity.Product;
import com.model.CartInfo;
import com.model.CartLineInfo;
import com.model.CustomerInfo;
import com.model.OrderInfo;

@Repository
@Transactional
public class OrderDaoImpl implements OrderDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private ProductDao productDao;
	
	private int getMaxOrderNum() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "select max(ORD.orderNum) from Order ORD";
		Query<Integer> query = session.createQuery(hql);
		Integer value = query.uniqueResult();
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
		order.setOrderNum(orderNum);
		order.setAmount(cartInfo.getAmountTotal());
		order.setOrderDate(new Date());
		
		CustomerInfo customerInfo = cartInfo.getCustomerInfo();
		Customer customer = new Customer();
		customer.setFullName(customerInfo.getName());
		customer.setAddress(customerInfo.getEmail());
		customer.setPhone(customer.getPhone());
		customer.setAddress(customerInfo.getAddress());
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
	}

	@Override
	public OrderInfo getOrderInfoById(String orderId) {
		// TODO Auto-generated method stub
		return null;
	}

}
