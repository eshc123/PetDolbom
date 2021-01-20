package com.eshc.petdolbom.center;

import java.util.ArrayList;

public class Center {
	
	private int centIdx;
	private String centAddress;
	private String centName;
	private ArrayList<String> centCaredPet;
	
	public int getCentIdx() {
		return centIdx;
	}
	public void setCentIdx(int centIdx) {
		this.centIdx = centIdx;
	}
	public String getCentAddress() {
		return centAddress;
	}
	public void setCentAddress(String centAddress) {
		this.centAddress = centAddress;
	}
	public String getCentName() {
		return centName;
	}
	public void setCentName(String centName) {
		this.centName = centName;
	}
	public ArrayList<String> getCentCaredPet() {
		return centCaredPet;
	}
	public void setCentCaredPet(ArrayList<String> centCaredPet) {
		this.centCaredPet = centCaredPet;
	}
	
	
}
