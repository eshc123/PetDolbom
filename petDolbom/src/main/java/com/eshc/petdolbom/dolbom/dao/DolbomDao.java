package com.eshc.petdolbom.dolbom.dao;

import java.util.List;

import com.eshc.petdolbom.dolbom.DolbomiApplyVO;
import com.eshc.petdolbom.dolbom.FullTime;
import com.eshc.petdolbom.dolbom.FullTimeReservation;
import com.eshc.petdolbom.dolbom.FullTimeVO;
import com.eshc.petdolbom.dolbom.PartTime;
import com.eshc.petdolbom.dolbom.PartTimeReservation;
import com.eshc.petdolbom.dolbom.PartTimeVO;

public interface DolbomDao {
	void insertFullTime(String memId,String caredPet);
	FullTime selectFullTime(FullTime fullTime);
	int updateFullTime(FullTime fullTime);
	int deleteFullTime(FullTime fullTime);
	
	void insertPartTime(String memId,String caredPet,String startTime,String endTime);
	PartTime selectPartTime(PartTime partTime);
	int updatePartTime(PartTime partTime);
	int deletePartTime(PartTime partTime);
	
	int insertFullTimeReservation(FullTimeReservation fullTimeReservation);
	FullTimeReservation selectFullTimeReservation(FullTimeReservation fullTimeReservation);
	int updateFullTimeReservation(FullTimeReservation fullTimeReservation);
	int deleteFullTimeReservation(FullTimeReservation fullTimeReservation);
	
	int insertPartTimeReservation(PartTimeReservation partTimeReservation);
	PartTimeReservation selectPartTimeReservation(PartTimeReservation partTimeReservation);
	int updatePartTimeReservation(PartTimeReservation partTimeReservation);
	int deletePartTimeReservation(PartTimeReservation partTimeReservation);
	
	public List<FullTimeVO> searchFullTime() throws Exception;
	public List<PartTimeVO> searchPartTime() throws Exception;
	public FullTimeVO searchFullTimeById(String id) throws Exception;
	public PartTimeVO searchPartTimeById(String id) throws Exception;
	public List<FullTimeVO> searchRegionFullTime(String address) throws Exception;
	public List<PartTimeVO> searchRegionPartTime(String address) throws Exception;
	public List<DolbomiApplyVO> searchFullDolbomi() throws Exception;
	public List<DolbomiApplyVO> searchPartDolbomi() throws Exception;
	public void updateDolbomiStatus(String memId,int status) throws Exception;

}
