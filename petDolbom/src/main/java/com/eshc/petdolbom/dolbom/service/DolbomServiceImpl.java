package com.eshc.petdolbom.dolbom.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eshc.petdolbom.dolbom.FullTime;
import com.eshc.petdolbom.dolbom.FullTimeReservation;
import com.eshc.petdolbom.dolbom.PartTime;
import com.eshc.petdolbom.dolbom.PartTimeReservation;
import com.eshc.petdolbom.dolbom.dao.DolbomDaoImpl;

@Service
public class DolbomServiceImpl implements DolbomService{

	@Autowired
	DolbomDaoImpl dolbomDao;
	
	@Override
	public void createFullTime(FullTime fullTime) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public FullTime getFullTime(FullTime fullTime) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FullTime updateFullTime(FullTime fullTime) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteFullTime(FullTime fullTime) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void createPartTime(PartTime partTime) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public PartTime getPartTime(PartTime partTime) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PartTime updatePartTime(PartTime partTime) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deletePartTime(PartTime partTime) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void createFullTimeReservation(FullTimeReservation fullTimeReservation) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public FullTimeReservation getFullTimeReservation(FullTimeReservation fullTimeReservation) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FullTimeReservation updateFullTimeReservation(FullTimeReservation fullTimeReservation) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteFullTimeReservation(FullTimeReservation fullTimeReservation) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void createPartTimeReservation(PartTimeReservation partTimeReservation) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public PartTimeReservation getPartTimeReservation(PartTimeReservation partTimeReservation) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PartTimeReservation updatePartTimeReservation(PartTimeReservation partTimeReservation) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deletePartTimeReservation(PartTimeReservation partTimeReservation) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
