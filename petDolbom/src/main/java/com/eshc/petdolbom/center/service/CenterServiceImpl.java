package com.eshc.petdolbom.center.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eshc.petdolbom.center.Center;
import com.eshc.petdolbom.center.CenterLongPeriodReservation;
import com.eshc.petdolbom.center.CenterTrainingReservation;
import com.eshc.petdolbom.center.dao.CenterDaoImpl;
@Service
public class CenterServiceImpl implements CenterService{

	@Autowired
	CenterDaoImpl centerDao;
	
	@Override
	public void createCenter(Center center) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Center getCenter(Center center) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Center updateCenter(Center center) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteCenter(Center center) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void createCenterTrainingReservation(CenterTrainingReservation centerTrainingReservation) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Center getCenterTrainingReservation(CenterTrainingReservation centerTrainingReservation) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Center updateCenterTrainingReservation(CenterTrainingReservation centerTrainingReservation) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteCenterTrainingReservation(CenterTrainingReservation centerTrainingReservation) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void createCenterLongPeriodReservation(CenterLongPeriodReservation centerLongPeriodReservation) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Center getCenterLongPeriodReservation(CenterLongPeriodReservation centerLongPeriodReservation) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Center updateCenterLongPeriodReservation(CenterLongPeriodReservation centerLongPeriodReservation) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteCenterLongPeriodReservation(CenterLongPeriodReservation centerLongPeriodReservation) {
		// TODO Auto-generated method stub
		return 0;
	}

}
