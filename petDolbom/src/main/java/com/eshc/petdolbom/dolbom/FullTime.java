package com.eshc.petdolbom.dolbom;

import java.util.List;

public class FullTime {
	
	private int fullTimeIdx;
	private String memId;
	private List<String> fullTimeCaredPet;
	private int fullTimeStatus;
	
	public FullTime(int fullTimeIdx, String memId, List<String> fullTimeCaredPet, int fullTimeStatus) {
		super();
		this.fullTimeIdx = fullTimeIdx;
		this.memId = memId;
		this.fullTimeCaredPet = fullTimeCaredPet;
		this.fullTimeStatus = fullTimeStatus;
	}
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
	public List<String> getFullTimeCaredPet() {
		return fullTimeCaredPet;
	}
	public void setFullTimeCaredPet(List<String> fullTimeCaredPet) {
		this.fullTimeCaredPet = fullTimeCaredPet;
	}
	public int getFullTimeStatus() {
		return fullTimeStatus;
	}
	public void setFullTimeStatus(int fullTimeStatus) {
		this.fullTimeStatus = fullTimeStatus;
	}
	
	
}
