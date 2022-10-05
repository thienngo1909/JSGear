package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.AccountDao;
import com.entity.Account;
import com.entity.Role;
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
	@Override
	public List<AccountInfo> getAllAccount() {
		// TODO Auto-generated method stub
		return accountDao.getAllAccount();
	}
	@Override
	public void saveAccount(Account account, Role role) {
		// TODO Auto-generated method stub
		accountDao.saveRoleName(account, role);
	}
	@Override
	public List<Role> getAllRoleName() {
		// TODO Auto-generated method stub
		return accountDao.getAllRoleName();
	}
	@Override
	public Role getAccountRole(Account account) {
		// TODO Auto-generated method stub
		return accountDao.getAccountRole(account);
	}
	@Override
	public Role getRoleById(int roleId) {
		// TODO Auto-generated method stub
		return accountDao.getRoleById(roleId);
	}
	@Override
	public AccountInfo getAccountInfoByUserName(String userName) {
		// TODO Auto-generated method stub
		return accountDao.getAccountInfoByUserName(userName);
	}

}
