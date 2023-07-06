package com.dz.app.model;

public class Employee {

	private Integer id;
	private String name;
	private String mobileNumber;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", mobileNumber=" + mobileNumber + "]";
	}
	
}
