package com.eshc.petdolbom.dolbom;

import java.util.ArrayList;

public class PartTime {
	
	private int partTimeIdx;
	private String memId;
	private ArrayList<String> partTimeCaredPet;
	private int partTimeStatus;
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
	public ArrayList<String> getPartTimeCaredPet() {
		return partTimeCaredPet;
	}
	public void setPartTimeCaredPet(ArrayList<String> partTimeCaredPet) {
		this.partTimeCaredPet = partTimeCaredPet;
	}
	public int getPartTimeStatus() {
		return partTimeStatus;
	}
	public void setPartTimeStatus(int partTimeStatus) {
		this.partTimeStatus = partTimeStatus;
	}
	
	
}
