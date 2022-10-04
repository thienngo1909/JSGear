package com.service;

import java.util.List;

import com.entity.Customer;
import com.entity.Order;
import com.model.CustomerInfo;

public interface CustomerService {
	public void saveCustomerInfo(CustomerInfo customerInfo);
	
	public CustomerInfo getCustomerInfoById(int id);
	
	public Customer getCustomerById(int id);
}
