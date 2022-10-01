package com.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.CustomerDao;
import com.entity.Customer;
import com.entity.Order;
import com.entity.Role;
import com.model.CustomerInfo;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao{
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public CustomerInfo getCustomerInfoById(int id) {
		// TODO Auto-generated method stub
		Customer customer = getCustomerById(id);
		if(customer == null) {
			return null;
		}
		CustomerInfo customerInfo = new CustomerInfo(customer.getId(), customer.getFullName(), customer.getAddress(), customer.getEmail(), customer.getPhone());
		return customerInfo;
	}

	@Override
	public Customer getCustomerById(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String hql = "Select CUS From Customer CUS Where CUS.id LIKE :ID";
		Query<Customer> query = session.createQuery(hql);
		query.setParameter("ID", id);
		Customer customer = (Customer) query.uniqueResult();
		return customer;
	}
	
	@Override
	public Customer registerNewCustomer(CustomerInfo customerInfo) {
		// TODO Auto-generated method stub
		Customer customer = new Customer();
		customer.setFullName(customerInfo.getName());
		customer.setAddress(customerInfo.getAddress());
		customer.setEmail(customerInfo.getEmail());
		customer.setPhone(customerInfo.getPhone());
		return customer;
	}

	@Override
	public Role getCustomerRole(String roleName) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String hql = "Select ROLE From Role ROLE Where ROLE.roleName LIKE :ROLENAME";
		Query<Role> query = session.createQuery(hql);
		query.setParameter("ROLENAME", roleName);
		Role role = (Role) query.uniqueResult();
		return role;
	}

}
