package com.eshc.petdolbom.dolbom;


public class DolbomiApply {
	
	private String id;
	private String name;
	private String time;
	private String address;
	private String cared_pet;
	private String license;
	
	public DolbomiApply(String id, String name, String time, String address, String cared_pet, String license) {
		super();
		this.id = id;
		this.name = name;
		this.time = time;
		this.address = address;
		this.cared_pet = cared_pet;
		this.license = license;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getCared_pet() {
		return cared_pet;
	}
	public void setCared_pet(String cared_pet) {
		this.cared_pet = cared_pet;
	}
	public String getLicense() {
		return license;
	}
	public void setLicense(String license) {
		this.license = license;
	}
	
}
