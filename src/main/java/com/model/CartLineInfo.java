package com.model;

public class CartLineInfo {
	
	private ProductInfo productInfo;
	
	private double amount;
	
	private int quantity;

	public ProductInfo getProductInfo() {
		return productInfo;
	}

	public void setProductInfo(ProductInfo productInfo) {
		this.productInfo = productInfo;
	}

	public double getAmount() {
		return productInfo.getPrice() * this.quantity; // update sau khi co productInfo.getPrice().
	}

	

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	
	
	
}
