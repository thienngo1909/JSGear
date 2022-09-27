package com.dao;

import com.model.CartInfo;
import com.model.OrderInfo;
import com.model.PaginationResult;

public interface OrderDao {
	public void saveOrder(CartInfo cartInfo);
	
	public OrderInfo getOrderInfoById(String orderId);
	

}
