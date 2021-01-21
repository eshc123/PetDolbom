package com.eshc.petdolbom.center.dao;

import com.eshc.petdolbom.center.Center;
import com.eshc.petdolbom.center.CenterLongPeriodReservation;
import com.eshc.petdolbom.center.CenterTrainingReservation;

public interface CenterDao {
	int insertCenter(Center center);
	Center selectCenter(Center center);
	int updateCenter(Center center);
	int deleteCenter(Center center);
	
	int insertCenterTrainingReservation(CenterTrainingReservation centerTrainingReservation);
	Center selectCenterTrainingReservation(CenterTrainingReservation centerTrainingReservation);
	int updateCenterTrainingReservation(CenterTrainingReservation centerTrainingReservation);
	int deleteCenterTrainingReservation(CenterTrainingReservation centerTrainingReservation);
	
	int insertCenterLongPeriodReservation(CenterLongPeriodReservation centerLongPeriodReservation);
	Center selectCenterLongPeriodReservation(CenterLongPeriodReservation centerLongPeriodReservation);
	int updateCenterLongPeriodReservation(CenterLongPeriodReservation centerLongPeriodReservation);
	int deleteCenterLongPeriodReservation(CenterLongPeriodReservation centerLongPeriodReservation);
}
