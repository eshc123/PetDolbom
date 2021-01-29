package com.eshc.petdolbom.dolbom;

import java.util.List;

public class DolbomTime {
	
	private int dolbomTimeIdx;
	private String memId;
	private List<String> dolbomTimeCaredPet;
	private String time;
	private String dolbomTimeStatus;
	private String name;
	private String address;
	public DolbomTime(int dolbomTimeIdx, String memId, List<String> dolbomTimeCaredPet, String time,
			String dolbomTimeStatus, String name, String address) {
		super();
		this.dolbomTimeIdx = dolbomTimeIdx;
		this.memId = memId;
		this.dolbomTimeCaredPet = dolbomTimeCaredPet;
		this.time = time;
		this.dolbomTimeStatus = dolbomTimeStatus;
		this.name = name;
		this.address = address;
	}
	public int getDolbomTimeIdx() {
		return dolbomTimeIdx;
	}
	public void setDolbomTimeIdx(int dolbomTimeIdx) {
		this.dolbomTimeIdx = dolbomTimeIdx;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public List<String> getDolbomTimeCaredPet() {
		return dolbomTimeCaredPet;
	}
	public void setDolbomTimeCaredPet(List<String> dolbomTimeCaredPet) {
		this.dolbomTimeCaredPet = dolbomTimeCaredPet;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getDolbomTimeStatus() {
		return dolbomTimeStatus;
	}
	public void setDolbomTimeStatus(String dolbomTimeStatus) {
		this.dolbomTimeStatus = dolbomTimeStatus;
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
	
	
}
