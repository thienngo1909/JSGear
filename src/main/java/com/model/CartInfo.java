package com.model;

import java.util.ArrayList;
import java.util.List;

import com.entity.Product;

public class CartInfo {
	
	private int orderNum;
	
	private CustomerInfo customerInfo;
	
	private List<CartLineInfo> cartLineInfos = new ArrayList<CartLineInfo>();

	public int getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}

	public CustomerInfo getCustomerInfo() {
		return customerInfo;
	}

	public void setCustomerInfo(CustomerInfo customerInfo) {
		this.customerInfo = customerInfo;
	}

	public List<CartLineInfo> getCartLineInfos() {
		return cartLineInfos;
	}

	public void setCartLineInfos(List<CartLineInfo> cartLineInfos) {
		this.cartLineInfos = cartLineInfos;
	}
	
	private CartLineInfo getCartLineInfoByCode(String code) {
		for(CartLineInfo cartLineInfo : this.cartLineInfos) {
			if(cartLineInfo.getProductInfo().getCode().equals(code)) {
				return cartLineInfo;
			}
		}
		return null;
	}
	
	public void addProduct(ProductInfo productInfo, int quantity) {
		CartLineInfo cartLineInfo = getCartLineInfoByCode(productInfo.getCode());
		
		if(cartLineInfo == null) {
			cartLineInfo = new CartLineInfo();
			cartLineInfo.setQuantity(0);
			cartLineInfo.setProductInfo(productInfo);
			this.cartLineInfos.add(cartLineInfo);
		}
		
		int newQuantity = cartLineInfo.getQuantity() + quantity;
		if(newQuantity <= 00) {
			this.cartLineInfos.remove(cartLineInfo);
		} else {
			cartLineInfo.setQuantity(newQuantity);
		}
	}
	
	public void removeProduct(String code) {
		CartLineInfo cartLineInfo = getCartLineInfoByCode(code);
		if(cartLineInfo != null) {
			this.cartLineInfos.remove(cartLineInfo);
		}
	}
	
	
	public void updateProduct(String code, int quantity) {
		CartLineInfo cartLineInfo = getCartLineInfoByCode(code);
		
		if(cartLineInfo != null) {
			if(quantity <= 0) {
				this.cartLineInfos.remove(cartLineInfo);
			} else {
				cartLineInfo.setQuantity(quantity);
			}
		}
	}
	public boolean isEmpty() {
		return this.cartLineInfos.isEmpty();
	}
	
	public boolean isValidCustomer() {
		return this.customerInfo != null && this.customerInfo.isValid(); // update 
	}
	
	public int getQuantityTotal() {
		int quantity = 0;
		for(CartLineInfo cartlineInfo : this.cartLineInfos) {
			quantity += cartlineInfo.getQuantity();
		}
		return quantity;
	}
	
	public double getAmountTotal() {
		double amount = 0;
		for(CartLineInfo cartLineInfo : this.cartLineInfos) {
			amount += cartLineInfo.getAmount();
		}
		return amount;
	}
	
	public void updateQuantity(CartInfo cartInfo) {
		if(cartInfo != null) {
			List<CartLineInfo> cartLineInfos = cartInfo.getCartLineInfos();
			for(CartLineInfo cartLineInfo : cartLineInfos) {
				updateProduct(cartLineInfo.getProductInfo().getCode(), cartLineInfo.getQuantity());
			}
		}
	}
	
	
}
