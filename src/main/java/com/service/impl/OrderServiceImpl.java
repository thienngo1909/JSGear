package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.OrderDao;
import com.entity.Customer;
import com.entity.Order;
import com.model.CartInfo;
import com.model.OrderDetailInfo;
import com.model.OrderInfo;
import com.model.PaginationResult;
import com.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService{
	
	@Autowired
	private OrderDao orderDao;

	@Override
	public List<OrderInfo> getOrderByCustomer(int id) {
		// TODO Auto-generated method stub
		return orderDao.getOrderByCustomer(id);
	}

	@Override
	public void saveOrder(CartInfo cartInfo) {
		// TODO Auto-generated method stub
		orderDao.saveOrder(cartInfo);
	}

	@Override
	public OrderInfo getOrderInfoById(String orderId) {
		// TODO Auto-generated method stub
		return orderDao.getOrderInfoById(orderId);
	}

	@Override
	public PaginationResult<OrderInfo> getAllOrderInfo(int page, int maxResult) {
		// TODO Auto-generated method stub
		return orderDao.getAllOrderInfo(page, maxResult);
	}

	@Override
	public List<OrderDetailInfo> GetAllOrderDetail(String orderId) {
		// TODO Auto-generated method stub
		return orderDao.GetAllOrderDetail(orderId);
	}

}
