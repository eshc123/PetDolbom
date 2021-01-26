package com.eshc.petdolbom.member;

public class Member {
	
	private String id;
	private String password;
	private String address;
	private String name;
	private String phone_num;
	private String license;
	private int dolbomi_status;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone_num() {
		return phone_num;
	}
	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}
	public String getLicense() {
		return license;
	}
	public void setLicense(String license) {
		this.license = license;
	}
	public int getDolbomi_status() {
		return dolbomi_status;
	}
	public void setDolbomi_status(int dolbomi_status) {
		this.dolbomi_status = dolbomi_status;
	}
	
}
