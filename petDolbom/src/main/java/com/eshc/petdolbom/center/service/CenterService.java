package com.eshc.petdolbom.center.service;

import com.eshc.petdolbom.center.Center;
import com.eshc.petdolbom.center.CenterLongPeriodReservation;
import com.eshc.petdolbom.center.CenterTrainingReservation;

public interface CenterService {
	void createCenter(Center center);
	Center getCenter(Center center);
	Center updateCenter(Center center);
	int deleteCenter(Center center);
	
	void createCenterTrainingReservation(CenterTrainingReservation centerTrainingReservation);
	Center getCenterTrainingReservation(CenterTrainingReservation centerTrainingReservation);
	Center updateCenterTrainingReservation(CenterTrainingReservation centerTrainingReservation);
	int deleteCenterTrainingReservation(CenterTrainingReservation centerTrainingReservation);
	
	void createCenterLongPeriodReservation(CenterLongPeriodReservation centerLongPeriodReservation);
	Center getCenterLongPeriodReservation(CenterLongPeriodReservation centerLongPeriodReservation);
	Center updateCenterLongPeriodReservation(CenterLongPeriodReservation centerLongPeriodReservation);
	int deleteCenterLongPeriodReservation(CenterLongPeriodReservation centerLongPeriodReservation);
}
