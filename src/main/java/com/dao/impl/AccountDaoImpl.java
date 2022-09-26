package com.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.AccountDao;
import com.dao.CustomerDao;
import com.entity.Account;
import com.entity.Customer;
import com.entity.Role;
import com.model.AccountInfo;
import com.model.CustomerInfo;

@Repository
@Transactional
public class AccountDaoImpl implements AccountDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private CustomerDao customerDao;
	
//	@Bean
//	public PasswordEncoder passwordEncoder() {
//	    return new BCryptPasswordEncoder();
//	}
	
	@Override
	public Account getAccountByUserName(String userName) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT ACC FROM Account ACC WHERE ACC.userName = :USERNAME";
		Query<Account> query = session.createQuery(hql);
		query.setParameter("USERNAME", userName);
		Account account = (Account) query.uniqueResult();
		return account;
	} 

	@Override
	public void registerNewAccount(AccountInfo accountInfo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String userName = accountInfo.getUserName();
		Account account = null;
		Customer customer = null;
		boolean isNew = false;
		Role role = null;
		
		if(userName != null) {
			account = new Account();		
			account.setUserName(accountInfo.getUserName());
			String encryptedPassword = passwordEncoder.encode(accountInfo.getPassword());
			account.setPassword(encryptedPassword);
			
			CustomerInfo customerInfo = new CustomerInfo();
			customerInfo.setName(accountInfo.getName());
			customerInfo.setAddress(accountInfo.getAddress());
			customerInfo.setEmail(accountInfo.getEmail());
			customerInfo.setPhone(accountInfo.getPhone());
			customer = customerDao.registerNewCustomer(customerInfo);
//			role = customerDao.getCustomerRole("USER");
			role = new Role(3, "USER");
			account.setRole(role);			
			account.setCustomer(customer);
			account.setActive(true);
			account.setValid(true);
			customer.setAccount(account);
			isNew = true;
		}
		if(isNew) {
			session.persist(customer);
			session.persist(account);
		}
		session.flush();
	}

	@Override
	public String getAccountRoleName(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String hql = "Select ROLE From Role ROLE Where ROLE.id like :ID";
		Query<Role> query = session.createQuery(hql);
		query.setParameter("ID", id);
		Role role = (Role) query.uniqueResult();
		return role.getRoleName();
	}

}
