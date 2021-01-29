package com.eshc.petdolbom.dolbom;

import java.util.List;

public class PartTime {
	
	private int partTimeIdx;
	private String memId;
	private List<String> partTimeCaredPet;
	private String time;
	private int partTimeStatus;
	
	
	
	public PartTime(int partTimeIdx, String memId, List<String> partTimeCaredPet, String time, int partTimeStatus) {
		super();
		this.partTimeIdx = partTimeIdx;
		this.memId = memId;
		this.partTimeCaredPet = partTimeCaredPet;
		this.time = time;
		this.partTimeStatus = partTimeStatus;
	}
	
	public int getPartTimeIdx() {
		return partTimeIdx;
	}
	public void setPartTimeIdx(int partTimeIdx) {
		this.partTimeIdx = partTimeIdx;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public List<String> getPartTimeCaredPet() {
		return partTimeCaredPet;
	}
	public void setPartTimeCaredPet(List<String> partTimeCaredPet) {
		this.partTimeCaredPet = partTimeCaredPet;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getPartTimeStatus() {
		return partTimeStatus;
	}
	public void setPartTimeStatus(int partTimeStatus) {
		this.partTimeStatus = partTimeStatus;
	}
	
	
	

	
	
}
