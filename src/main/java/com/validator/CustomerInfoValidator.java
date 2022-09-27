package com.validator;

import org.apache.commons.validator.routines.EmailValidator;
import org.apache.commons.validator.util.ValidatorUtils;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.validation.ValidationUtils;

import com.model.CustomerInfo;

@Component
public class CustomerInfoValidator implements Validator{
	
	private EmailValidator emailValidator = EmailValidator.getInstance();
	
	@Override
	public boolean supports(Class<?> clazz) {
		return CustomerInfo.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		CustomerInfo customerInfo = (CustomerInfo) target;
		
		//Check 
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty.customerForm.name");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty.customerForm.email");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "NotEmpty.customerForm.address");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone", "NotEmpty.customerForm.phone");
		if(!emailValidator.isValid(customerInfo.getEmail())) {
			errors.rejectValue("email", "Pattern.customerForm.email");
		}
		
	}

}
