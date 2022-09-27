package com.dao;

import com.entity.Account;
import com.entity.Customer;
import com.entity.Role;
import com.model.CustomerInfo;

public interface CustomerDao {
	public CustomerInfo getCustomerInfoById(int id);
	
	public Role getCustomerRole(String roleName);
	
	public Customer getCustomerById(int id);
	
	public Customer registerNewCustomer(CustomerInfo customerInfo);
}
