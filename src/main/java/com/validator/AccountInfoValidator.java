package com.validator;

import org.apache.commons.validator.util.ValidatorUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.entity.Account;
import com.model.AccountInfo;
import com.service.AccountService;

@Component
public class AccountInfoValidator implements Validator{

	@Autowired
	private AccountService accountService;
	
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return AccountInfo.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		AccountInfo accountInfo = (AccountInfo) target;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName", "NotEmpty.registerForm.userName");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty.registerForm.password");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty.registerForm.name");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty.registerForm.email");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "NotEmpty.registerForm.address");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone", "NotEmpty.registerForm.phone");
		
		String userName = accountInfo.getUserName();
		Account account = accountService.getAccountByUserName(userName);
		if(userName != null && account != null) {
			errors.rejectValue("userName", "Duplicate.registerForm.userName");
		}
	}

}
