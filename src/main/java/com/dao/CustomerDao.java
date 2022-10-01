package com.dao;

import java.util.List;

import com.entity.Account;
import com.entity.Customer;
import com.entity.Order;
import com.entity.Role;
import com.model.CustomerInfo;

public interface CustomerDao {
	public CustomerInfo getCustomerInfoById(int id);
	
	public Role getCustomerRole(String roleName);
	
	public Customer getCustomerById(int id);
	
	public Customer registerNewCustomer(CustomerInfo customerInfo);
}
