package com.eshc.petdolbom.dolbom;

public class PartTimeReservationVO {
	private int part_reservation_idx;
	private int part_service_idx;
	private String part_service_date;
	private String part_service_applicant_id;
	private int part_service_pet_idx;
	private int part_service_reservation_status;
	
	
	public PartTimeReservationVO() {
		super();
	}
	public PartTimeReservationVO( int part_service_idx, String part_service_date,
			String part_service_applicant_id, int part_service_pet_idx, int part_service_reservation_status) {
		super();
		this.part_service_idx = part_service_idx;
		this.part_service_date = part_service_date;
		this.part_service_applicant_id = part_service_applicant_id;
		this.part_service_pet_idx = part_service_pet_idx;
		this.part_service_reservation_status = part_service_reservation_status;
	}
	public int getPart_reservation_idx() {
		return part_reservation_idx;
	}
	public void setPart_reservation_idx(int part_reservation_idx) {
		this.part_reservation_idx = part_reservation_idx;
	}
	public int getPart_service_idx() {
		return part_service_idx;
	}
	public void setPart_service_idx(int part_service_idx) {
		this.part_service_idx = part_service_idx;
	}
	public String getPart_service_date() {
		return part_service_date;
	}
	public void setPart_service_date(String part_service_date) {
		this.part_service_date = part_service_date;
	}
	public String getPart_service_applicant_id() {
		return part_service_applicant_id;
	}
	public void setPart_service_applicant_id(String part_service_applicant_id) {
		this.part_service_applicant_id = part_service_applicant_id;
	}
	public int getPart_service_pet_idx() {
		return part_service_pet_idx;
	}
	public void setPart_service_pet_idx(int part_service_pet_idx) {
		this.part_service_pet_idx = part_service_pet_idx;
	}
	public int getPart_service_reservation_status() {
		return part_service_reservation_status;
	}
	public void setPart_service_reservation_status(int part_service_reservation_status) {
		this.part_service_reservation_status = part_service_reservation_status;
	}
	
	
}
