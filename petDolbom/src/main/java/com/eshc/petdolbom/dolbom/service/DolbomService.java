package com.eshc.petdolbom.dolbom.service;

import java.util.List;

import com.eshc.petdolbom.dolbom.DolbomTime;
import com.eshc.petdolbom.dolbom.DolbomiApplyVO;
import com.eshc.petdolbom.dolbom.FullTime;
import com.eshc.petdolbom.dolbom.FullTimeReservation;
import com.eshc.petdolbom.dolbom.FullTimeReservationVO;
import com.eshc.petdolbom.dolbom.PartTime;
import com.eshc.petdolbom.dolbom.PartTimeReservationVO;
import com.eshc.petdolbom.reservation.Reservation;

public interface DolbomService {
	void createFullTime(String memId,String caredPet);
	FullTime getFullTime(FullTime fullTime);
	FullTime updateFullTime(FullTime fullTime);
	int deleteFullTime(FullTime fullTime);
	
	void createPartTime(String memId,String caredPet,String startTime,String endTime);
	PartTime getPartTime(PartTime partTime);
	PartTime updatePartTime(PartTime partTime);
	int deletePartTime(PartTime partTime);
	
	void createFullTimeReservation(FullTimeReservation fullTimeReservation) throws Exception;
	FullTimeReservationVO getFullTimeReservation(FullTimeReservationVO fullTimeReservation);
	FullTimeReservationVO updateFullTimeReservation(FullTimeReservationVO fullTimeReservation);
	int deleteFullTimeReservation(FullTimeReservationVO fullTimeReservation);
	
	void createPartTimeReservation(PartTimeReservationVO partTimeReservation) throws Exception;
	PartTimeReservationVO getPartTimeReservation(PartTimeReservationVO partTimeReservation);
	PartTimeReservationVO updatePartTimeReservation(PartTimeReservationVO partTimeReservation);
	int deletePartTimeReservation(PartTimeReservationVO partTimeReservation);
	
	public List<FullTime> searchFullTime() throws Exception;
	public List<PartTime> searchPartTime() throws Exception;
	public DolbomTime searchFullTimeById(String id) throws Exception;
	public DolbomTime searchPartTimeById(String id) throws Exception;
	public List<FullTime> searchRegionFullTime() throws Exception;
	public List<PartTime> searchRegionPartTime() throws Exception;
	public List<DolbomTime> searchDolbomTime() throws Exception;
	public List<DolbomTime> searchRegionDolbomTime(String [] regions) throws Exception;
	public List<DolbomiApplyVO> searchFullDolbomi(int status) throws Exception;
	public List<DolbomiApplyVO> searchPartDolbomi(int status) throws Exception;
	public void updateDolbomiStatus(String memId,int status) throws Exception;
	
	public List<Reservation> searchFullReservation(String id) throws Exception;
	public List<Reservation> searchPartReservation(String id) throws Exception;
	
}
