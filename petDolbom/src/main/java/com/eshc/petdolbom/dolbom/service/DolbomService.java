package com.eshc.petdolbom.dolbom.service;

import com.eshc.petdolbom.dolbom.FullTime;
import com.eshc.petdolbom.dolbom.FullTimeReservation;
import com.eshc.petdolbom.dolbom.PartTime;
import com.eshc.petdolbom.dolbom.PartTimeReservation;

public interface DolbomService {
	void createFullTime(FullTime fullTime);
	FullTime getFullTime(FullTime fullTime);
	FullTime updateFullTime(FullTime fullTime);
	int deleteFullTime(FullTime fullTime);
	
	void createPartTime(PartTime partTime);
	PartTime getPartTime(PartTime partTime);
	PartTime updatePartTime(PartTime partTime);
	int deletePartTime(PartTime partTime);
	
	void createFullTimeReservation(FullTimeReservation fullTimeReservation);
	FullTimeReservation getFullTimeReservation(FullTimeReservation fullTimeReservation);
	FullTimeReservation updateFullTimeReservation(FullTimeReservation fullTimeReservation);
	int deleteFullTimeReservation(FullTimeReservation fullTimeReservation);
	
	void createPartTimeReservation(PartTimeReservation partTimeReservation);
	PartTimeReservation getPartTimeReservation(PartTimeReservation partTimeReservation);
	PartTimeReservation updatePartTimeReservation(PartTimeReservation partTimeReservation);
	int deletePartTimeReservation(PartTimeReservation partTimeReservation);
}
