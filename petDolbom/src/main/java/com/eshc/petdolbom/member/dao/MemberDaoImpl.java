package com.eshc.petdolbom.member.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.eshc.petdolbom.member.Member;
import com.eshc.petdolbom.pet.Pet;
import com.eshc.petdolbom.pet.PetVO;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Inject
    private SqlSession sqlSession;
    
    private static final String Namespace = "com.eshc.mapper.memberMapper";
	    
    
    
    @Override
	public List<PetVO> selectPets(String ownerId) throws Exception {
    	return sqlSession.selectList(Namespace+".getPets",ownerId);
	}


	@Override
	public void addPet(Pet pet) throws Exception {
    	sqlSession.insert(Namespace+".addPet",pet);
	}


	@Override
	public int idCheck(String id) throws Exception {
    	return sqlSession.selectOne(Namespace+".idCheck",id);
	}


	@Override
	public Member getInfo(String id) throws Exception {
    	return sqlSession.selectOne(Namespace+".selectMemberById",id);
	}


	@Override
    public List<Member> selectMembers() throws Exception {
 
        return sqlSession.selectList(Namespace+".selectMembers");
    }
    
	
	@Override
	public Member selectMemberById(String id) throws Exception {
		 return sqlSession.selectOne(Namespace+".selectMemberById",id);
	}


	@Override
	public int insertMember(Member member) {
		sqlSession.insert(Namespace+".insertMember",member);
		return 0;
	}

	@Override
	public Member selectMember(Member member) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateMember(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMember(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertPet(Pet pet) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Pet selectPet(Pet pet) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updatePet(Pet pet) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deletePet(Pet pet) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}