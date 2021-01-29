package com.eshc.petdolbom.dolbom.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.eshc.petdolbom.dolbom.FullTime;
import com.eshc.petdolbom.dolbom.FullTimeReservation;
import com.eshc.petdolbom.dolbom.FullTimeVO;
import com.eshc.petdolbom.dolbom.PartTime;
import com.eshc.petdolbom.dolbom.PartTimeReservation;
import com.eshc.petdolbom.dolbom.PartTimeVO;
@Repository
public class DolbomDaoImpl implements DolbomDao{
	
	@Inject
    private SqlSession sqlSession;
    
    private static final String Namespace = "com.eshc.mapper.dolbomMapper";
	    
	
	@Override
	public List<PartTimeVO> searchPartTime() throws Exception {
		return sqlSession.selectList(Namespace+".selectPartTimeDolbom",1);
		
	}

	@Override
	public List<FullTimeVO> searchFullTime() throws Exception {
		 return sqlSession.selectList(Namespace+".selectFullTimeDolbom",1);
	}

	@Override
	public int insertFullTime(FullTime fullTime) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public FullTime selectFullTime(FullTime fullTime) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateFullTime(FullTime fullTime) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteFullTime(FullTime fullTime) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertPartTime(PartTime partTime) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public PartTime selectPartTime(PartTime partTime) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updatePartTime(PartTime partTime) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deletePartTime(PartTime partTime) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertFullTimeReservation(FullTimeReservation fullTimeReservation) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public FullTimeReservation selectFullTimeReservation(FullTimeReservation fullTimeReservation) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateFullTimeReservation(FullTimeReservation fullTimeReservation) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteFullTimeReservation(FullTimeReservation fullTimeReservation) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertPartTimeReservation(PartTimeReservation partTimeReservation) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public PartTimeReservation selectPartTimeReservation(PartTimeReservation partTimeReservation) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updatePartTimeReservation(PartTimeReservation partTimeReservation) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deletePartTimeReservation(PartTimeReservation partTimeReservation) {
		// TODO Auto-generated method stub
		return 0;
	}

}
