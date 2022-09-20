package com.model;

public class CustomerInfo {
	private String name;
	
	private String address;
	
	private String email;
	
	private String phone;
	
	private boolean Valid;

	public boolean isValid() {
		return Valid;
	}

	public void setValid(boolean isValid) {
		this.Valid = isValid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	
	
}
