package com.model;

import java.io.Serializable;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.entity.Category;
import com.entity.Producer;
import com.entity.Product;

public class ProductInfo implements Serializable{
	
	
	private static final long serialVersionUID = 1L;

	private String code;
	
	private String name;
	
	private double price;
	
	private int quantity;
	
	private ProductDetail detail;
	
	private String category;
	
	private String producer;
	
	private boolean newProduct = false;
	
	private CommonsMultipartFile fileData;

	public ProductInfo() {
		super();
	}

	public ProductInfo(String code, String name, double price, int quantity, CommonsMultipartFile fileData) {
		super();
		this.code = code;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.fileData = fileData;
	}
	

	public ProductInfo(String code, String name, double price, int quantity, Category category,
			CommonsMultipartFile fileData) {
		super();
		this.code = code;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.fileData = fileData;
	}

	public ProductInfo(String code, String name, double price, int quantity) {
		super();
		this.code = code;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
	}

	public ProductInfo(Product product) {
		this.code = product.getCode();
		this.name = product.getName();
		this.price = product.getPrice();
		this.quantity = product.getQuantity();
	}

	
	

	public ProductInfo(String code, String name, double price, int quantity, ProductDetail detail, String category,
			String producer, CommonsMultipartFile fileData) {
		super();
		this.code = code;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.detail = detail;
		this.category = category;
		this.producer = producer;
		this.fileData = fileData;
	}

	public ProductDetail getDetail() {
		return detail;
	}

	public void setDetail(ProductDetail detail) {
		this.detail = detail;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public CommonsMultipartFile getFileData() {
		return fileData;
	}

	public void setFileData(CommonsMultipartFile fileData) {
		this.fileData = fileData;
	}

	

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getProducer() {
		return producer;
	}

	public void setProducer(String producer) {
		this.producer = producer;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public boolean isNewProduct() {
		return newProduct;
	}

	public void setNewProduct(boolean newProduct) {
		this.newProduct = newProduct;
	}
	
	
	
	
	
}
