package com.service;

import java.util.List;

import com.entity.Customer;
import com.entity.Order;
import com.model.CartInfo;
import com.model.OrderDetailInfo;
import com.model.OrderInfo;
import com.model.PaginationResult;

public interface OrderService {
	public List<OrderInfo> getOrderByCustomer(int id);
	
	public void saveOrder(CartInfo cartInfo);
	
	public OrderInfo getOrderInfoById(String orderId);
	
	public PaginationResult<OrderInfo> getAllOrderInfo(int page, int maxResult);
	
	public List<OrderDetailInfo> GetAllOrderDetail(String orderId);
}
