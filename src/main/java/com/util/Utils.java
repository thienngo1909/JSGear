package com.util;

import javax.servlet.http.HttpServletRequest;

import com.model.CartInfo;

public class Utils {
	public static CartInfo getCartInfoInSession(HttpServletRequest request) {
		CartInfo cartInfo = (CartInfo) request.getSession().getAttribute("myCartInfo");
		
		if(cartInfo == null) {
			cartInfo = new CartInfo();
			request.getSession().setAttribute("myCartInfo", cartInfo);
		}
		return cartInfo;
	}
}
