package com.dao;

import java.util.List;

import com.entity.Account;
import com.entity.Role;
import com.model.AccountInfo;

public interface AccountDao {
	
	public Account getAccountByUserName(String userName);
	
	public AccountInfo getAccountInfoByUserName(String userName);
	
	public String getAccountRoleName(int id);
	
	public void registerNewAccount(AccountInfo accountInfo);
	
	public List<AccountInfo> getAllAccount();
	
	public void saveRoleName(Account account, Role role);
	
	public Role getRoleById(int roleId);
	
	public List<Role> getAllRoleName();
	
	public Role getAccountRole(Account account);
}
