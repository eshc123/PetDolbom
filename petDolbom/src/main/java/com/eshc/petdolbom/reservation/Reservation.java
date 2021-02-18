package com.eshc.petdolbom.reservation;

import java.util.List;

public class Reservation {
	
	private String date;
	private String day;
	private String status;
	private String memberId;
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public Reservation(String date, String day, String status, String memberId) {
		super();
		this.date = date;
		this.day = day;
		this.status = status;
		this.memberId = memberId;
	}
	
	
}
