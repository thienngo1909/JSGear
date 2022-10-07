package com.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.entity.Product;
import com.model.CartInfo;
import com.model.CartLineInfo;
import com.service.ProductService;

@Component
public class CartInfoValidator implements Validator{

	@Autowired
	private ProductService productService;
	
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return CartInfo.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		CartInfo  cartInfo  = (CartInfo) target;
		 for (CartLineInfo cartLineInfo : cartInfo.getCartLineInfos()) {
			 Product product = productService.getProductByCode(cartLineInfo.getProductInfo().getCode());
			 if(cartLineInfo.getQuantity()>product.getQuantity())
				 errors.rejectValue("cartLineInfos","Quantity.notenough");
		}
		
		
		
	}

}
