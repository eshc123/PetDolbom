package com.eshc.petdolbom.dolbom;


public class PartTimeVO {
	
	private int part_service_idx;
	private String member_id;
	private String cared_pet;
	private String start_time;
	private String end_time;
	private int part_service_status;
	private String name;
	private String address;
	public int getPart_service_idx() {
		return part_service_idx;
	}
	public void setPart_service_idx(int part_service_idx) {
		this.part_service_idx = part_service_idx;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getCared_pet() {
		return cared_pet;
	}
	public void setCared_pet(String cared_pet) {
		this.cared_pet = cared_pet;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public int getPart_service_status() {
		return part_service_status;
	}
	public void setPart_service_status(int part_service_status) {
		this.part_service_status = part_service_status;
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
