package com.dao;

import com.entity.Account;
import com.entity.Role;
import com.model.AccountInfo;

public interface AccountDao {
	
	public Account getAccountByUserName(String userName);
	
	public String getAccountRoleName(int id);
	
	public void registerNewAccount(AccountInfo accountInfo);
}
