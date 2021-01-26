package com.eshc.petdolbom.member.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.eshc.petdolbom.member.Member;
import com.eshc.petdolbom.pet.Pet;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Inject
    private SqlSession sqlSession;
    
    private static final String Namespace = "com.eshc.mapper.memberMapper";
	    
    @Override
    public List<Member> selectMembers() throws Exception {
 
        return sqlSession.selectList(Namespace+".selectMembers");
    }

	
	@Override
	public int insertMember(Member member) {
		// TODO Auto-generated method stub
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