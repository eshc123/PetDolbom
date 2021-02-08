package com.eshc.petdolbom.dolbom.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.eshc.petdolbom.dolbom.DolbomiApplyVO;
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
	public void updateDolbomiStatus(String memId, int status) throws Exception {
		Map<String, Object> parameters2 = new HashMap<String, Object>();
		parameters2.put("dolbomi_status", status);
		parameters2.put("member_id", memId);
		sqlSession.update("updateDolbomiStatus",parameters2);
		
	}

	@Override
	public List<DolbomiApplyVO> searchFullDolbomi() throws Exception {
		return sqlSession.selectList(Namespace+".selectFullDolbomi");
	}

	@Override
	public List<DolbomiApplyVO> searchPartDolbomi() throws Exception {
		return sqlSession.selectList(Namespace+".selectPartDolbomi");

	}

	@Override
	public FullTimeVO searchFullTimeById(String id) throws Exception {
		return sqlSession.selectOne(Namespace+".selectFullTimeDolbomById",id);
	}

	@Override
	public PartTimeVO searchPartTimeById(String id) throws Exception {
		return sqlSession.selectOne(Namespace+".selectPartTimeDolbomById",id);
	}

	@Override
	public List<FullTimeVO> searchRegionFullTime(String address) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("full_service_status", 1);
		parameters.put("address", address);

		return sqlSession.selectList(Namespace+".selectRegionFullTimeDolbom",parameters);
	}

	@Override
	public List<PartTimeVO> searchRegionPartTime(String address) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("part_service_status", 1);
		parameters.put("address", address);

		return sqlSession.selectList(Namespace+".selectRegionPartTimeDolbom",parameters);
		
	}

	@Override
	public List<PartTimeVO> searchPartTime() throws Exception {
		return sqlSession.selectList(Namespace+".selectPartTimeDolbom",1);
		
	}

	@Override
	public List<FullTimeVO> searchFullTime() throws Exception {
		 return sqlSession.selectList(Namespace+".selectFullTimeDolbom",1);
	}

	@Override
	public void insertFullTime(String memId,String caredPet) {
		Map<String, Object> parameters = new HashMap<String, Object>();
		Map<String, Object> parameters2 = new HashMap<String, Object>();
		parameters.put("member_id", memId);
		parameters.put("cared_pet", caredPet);
		parameters.put("full_service_status", 1);
		sqlSession.insert(Namespace+".insertDolbomiFull",parameters);
		parameters2.put("dolbomi_status", 1);
		parameters2.put("member_id", memId);
		sqlSession.update("updateDolbomiStatus",parameters2);
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
	public void insertPartTime(String memId,String caredPet,String startTime,String endTime) {
		Map<String, Object> parameters = new HashMap<String, Object>();
		Map<String, Object> parameters2 = new HashMap<String, Object>();
		parameters.put("member_id", memId);
		parameters.put("cared_pet", caredPet);
		parameters.put("start_time", startTime);
		parameters.put("end_time", endTime);
		parameters.put("part_service_status", 1);
		sqlSession.insert(Namespace+".insertDolbomiPart",parameters);
		parameters2.put("dolbomi_status", 1);
		parameters2.put("member_id", memId);
		sqlSession.update("updateDolbomiStatus",parameters2);
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
