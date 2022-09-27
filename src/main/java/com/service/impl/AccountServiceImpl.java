package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.AccountDao;
import com.entity.Account;
import com.model.AccountInfo;
import com.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService{

	@Autowired
	private AccountDao accountDao;
	
	@Override
	public Account getAccountByUserName(String userName) {
		// TODO Auto-generated method stub
		return accountDao.getAccountByUserName(userName);
	}
	@Override
	public void registerNewAccount(AccountInfo accountInfo) {
		// TODO Auto-generated method stub
		accountDao.registerNewAccount(accountInfo);
	}
	@Override
	public String getAccountRoleName(int id) {
		// TODO Auto-generated method stub
		return accountDao.getAccountRoleName(id);
	}

}
