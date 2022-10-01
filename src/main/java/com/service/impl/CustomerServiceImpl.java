package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CustomerDao;
import com.entity.Customer;
import com.entity.Order;
import com.model.CustomerInfo;
import com.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	private CustomerDao customerDao;
	
	@Override
	public CustomerInfo getCustomerInfoById(int id) {
		// TODO Auto-generated method stub
		return customerDao.getCustomerInfoById(id);
	}

	@Override
	public Customer getCustomerById(int id) {
		// TODO Auto-generated method stub
		return customerDao.getCustomerById(id);
	}

}
