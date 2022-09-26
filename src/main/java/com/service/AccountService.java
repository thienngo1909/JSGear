package com.service;

import com.entity.Account;
import com.model.AccountInfo;

public interface AccountService {
	public Account getAccountByUserName(String userName);
	
	public void registerNewAccount(AccountInfo accountInfo);
	
	public String getAccountRoleName(int id);
}
