package com.model;

import javax.persistence.Column;

public class ProductDetail {

	private int id;

	private String insurance;
	
	private double weight;
	
	private String color;
	
	private String specification;

	


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getInsurance() {
		return insurance;
	}

	public void setInsurance(String insurance) {
		this.insurance = insurance;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getSpecification() {
		return specification;
	}

	public void setSpecification(String specification) {
		this.specification = specification;
	}

	

	public ProductDetail(int id,String insurance, double weight, String color, String specification) {
		super();
		this.id=id;
		this.insurance = insurance;
		this.weight = weight;
		this.color = color;
		this.specification = specification;
	}

	public ProductDetail() {
		super();
	}
	
	
}
