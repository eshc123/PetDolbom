package com.eshc.petdolbom.dolbom;

import java.util.ArrayList;

public class FullTime {
	
	private int fullTimeIdx;
	private String memId;
	private ArrayList<String> fullTimeCaredPet;
	private int fullTimeStatus;
	public int getFullTimeIdx() {
		return fullTimeIdx;
	}
	public void setFullTimeIdx(int fullTimeIdx) {
		this.fullTimeIdx = fullTimeIdx;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public ArrayList<String> getFullTimeCaredPet() {
		return fullTimeCaredPet;
	}
	public void setFullTimeCaredPet(ArrayList<String> fullTimeCaredPet) {
		this.fullTimeCaredPet = fullTimeCaredPet;
	}
	public int getFullTimeStatus() {
		return fullTimeStatus;
	}
	public void setFullTimeStatus(int fullTimeStatus) {
		this.fullTimeStatus = fullTimeStatus;
	}
	
}
