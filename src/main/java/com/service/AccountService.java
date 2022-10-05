package com.service;

import java.util.List;

import com.entity.Account;
import com.entity.Role;
import com.model.AccountInfo;

public interface AccountService {
	public Account getAccountByUserName(String userName);
	
	public void registerNewAccount(AccountInfo accountInfo);
	
	public String getAccountRoleName(int id);
	
	public List<AccountInfo> getAllAccount();
	
	public void saveAccount(Account account, Role role);
	
	public List<Role> getAllRoleName();
	
	public Role getAccountRole(Account account);
	
	public Role getRoleById(int roleId);
	
	public AccountInfo getAccountInfoByUserName(String userName);
}
