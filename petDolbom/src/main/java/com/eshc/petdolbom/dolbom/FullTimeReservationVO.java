package com.eshc.petdolbom.dolbom;

public class FullTimeReservationVO {
	
	private int full_reservation_idx;
	private int full_service_idx;
	private String full_service_date;
	private String full_service_applicant_id;
	private int full_service_pet_idx;
	private int full_service_reservation_status;
	
	
	public FullTimeReservationVO() {
		super();
	}

	public FullTimeReservationVO(int full_reservation_idx, int full_service_idx, String full_service_date,
			String full_service_applicant_id, int full_service_pet_idx, int full_service_reservation_status) {
		super();
		this.full_reservation_idx = full_reservation_idx;
		this.full_service_idx = full_service_idx;
		this.full_service_date = full_service_date;
		this.full_service_applicant_id = full_service_applicant_id;
		this.full_service_pet_idx = full_service_pet_idx;
		this.full_service_reservation_status = full_service_reservation_status;
	}

	public int getFull_reservation_idx() {
		return full_reservation_idx;
	}
	public void setFull_reservation_idx(int full_reservation_idx) {
		this.full_reservation_idx = full_reservation_idx;
	}
	public int getFull_service_idx() {
		return full_service_idx;
	}
	public void setFull_service_idx(int full_service_idx) {
		this.full_service_idx = full_service_idx;
	}
	public String getFull_service_date() {
		return full_service_date;
	}
	public void setFull_service_date(String full_service_date) {
		this.full_service_date = full_service_date;
	}
	public String getFull_service_applicant_id() {
		return full_service_applicant_id;
	}
	public void setFull_service_applicant_id(String full_service_applicant_id) {
		this.full_service_applicant_id = full_service_applicant_id;
	}
	public int getFull_service_pet_idx() {
		return full_service_pet_idx;
	}
	public void setFull_service_pet_idx(int full_service_pet_idx) {
		this.full_service_pet_idx = full_service_pet_idx;
	}
	public int getFull_service_reservation_status() {
		return full_service_reservation_status;
	}
	public void setFull_service_reservation_status(int full_service_reservation_status) {
		this.full_service_reservation_status = full_service_reservation_status;
	}
	

}
