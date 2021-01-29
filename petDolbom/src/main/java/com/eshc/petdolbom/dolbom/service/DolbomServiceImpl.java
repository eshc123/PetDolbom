package com.eshc.petdolbom.dolbom.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eshc.petdolbom.dolbom.DolbomTime;
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
	public List<DolbomTime> searchDolbomTime() throws Exception {
		List<DolbomTime> dolbomTimeList=  new ArrayList<>();
		for(int i=0;i<dolbomDao.searchPartTime().size();i++) {
			List<String> caredList = new ArrayList<>();
			for(int j=0;j<dolbomDao.searchPartTime().get(i).getCared_pet().split(",").length;j++) {
				caredList.add(dolbomDao.searchPartTime().get(i).getCared_pet().split(",")[j]);
			}
			dolbomTimeList.add(new DolbomTime(dolbomDao.searchPartTime().get(i).getPart_service_idx(),
					dolbomDao.searchPartTime().get(i).getMember_id(),
					caredList,
					dolbomDao.searchPartTime().get(i).getStart_time()+"~"+dolbomDao.searchPartTime().get(i).getEnd_time(),
					"시간제",
					dolbomDao.searchPartTime().get(i).getName(),
					dolbomDao.searchPartTime().get(i).getAddress()));
		}
		for(int i=0;i<dolbomDao.searchFullTime().size();i++) {
			List<String> caredList = new ArrayList<>();
			for(int j=0;j<dolbomDao.searchFullTime().get(i).getCared_pet().split(",").length;j++) {
				caredList.add(dolbomDao.searchFullTime().get(i).getCared_pet().split(",")[j]);
			}
			dolbomTimeList.add(new DolbomTime(dolbomDao.searchFullTime().get(i).getFull_service_idx(),
					dolbomDao.searchFullTime().get(i).getMember_id(),
					caredList,
					"09:00~18:00",
					"종일",
					dolbomDao.searchFullTime().get(i).getName(),
					dolbomDao.searchFullTime().get(i).getAddress()));
		}
		//dolbomDao.searchFullTime();
		return dolbomTimeList;
	}
	@Override
	public List<PartTime> searchPartTime() throws Exception {
		List<PartTime> partTimeList=  new ArrayList<>();
		for(int i=0;i<dolbomDao.searchPartTime().size();i++) {
			List<String> caredList = new ArrayList<>();
			for(int j=0;j<dolbomDao.searchPartTime().get(i).getCared_pet().split(",").length;j++) {
				caredList.add(dolbomDao.searchPartTime().get(i).getCared_pet().split(",")[j]);
			}
			partTimeList.add(new PartTime(dolbomDao.searchPartTime().get(i).getPart_service_idx(),
					dolbomDao.searchPartTime().get(i).getMember_id(),
					caredList,
					dolbomDao.searchPartTime().get(i).getStart_time()+"~"+dolbomDao.searchPartTime().get(i).getEnd_time(),
					dolbomDao.searchPartTime().get(i).getPart_service_status()));
		}
		//dolbomDao.searchFullTime();
		return partTimeList;
	}

	@Override
	public List<FullTime> searchFullTime() throws Exception {
		
		List<FullTime> fullTimeList=  new ArrayList<>();
		for(int i=0;i<dolbomDao.searchFullTime().size();i++) {
			List<String> caredList = new ArrayList<>();
			for(int j=0;j<dolbomDao.searchFullTime().get(i).getCared_pet().split(",").length;j++) {
				caredList.add(dolbomDao.searchFullTime().get(i).getCared_pet().split(",")[j]);
			}
			fullTimeList.add(new FullTime(dolbomDao.searchFullTime().get(i).getFull_service_idx(),dolbomDao.searchFullTime().get(i).getMember_id(),caredList,dolbomDao.searchFullTime().get(i).getFull_service_idx()));
		}
		//dolbomDao.searchFullTime();
		return fullTimeList;
	}

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
