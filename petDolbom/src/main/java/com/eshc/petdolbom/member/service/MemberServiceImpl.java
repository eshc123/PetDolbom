package com.eshc.petdolbom.member.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eshc.petdolbom.member.Member;

import com.eshc.petdolbom.member.dao.MemberDaoImpl;
import com.eshc.petdolbom.pet.Pet;
import com.eshc.petdolbom.pet.PetVO;


@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDaoImpl memberDao;
	
	
	
	@Override
	public List<PetVO> selectPets(String ownerId) throws Exception {
		return memberDao.selectPets(ownerId);
	}

	@Override
	public void addPet(Pet pet) throws Exception {
		memberDao.addPet(pet);
	}

	@Override
	public int idCheck(String id) throws Exception {
		return memberDao.idCheck(id);
	}

	@Override
	public Member getInfo(HttpSession session) throws Exception {
		return memberDao.getInfo(session.getAttribute("memberId").toString());
	}

	@Override
	public boolean loginMember(Member member,HttpSession session) throws Exception  {
		boolean result =memberDao.selectMemberById(member.getId()).getPassword().equals(member.getPassword());
		if(memberDao.selectMemberById(member.getId()).getPassword().equals(member.getPassword())){
			Member loginMember = memberDao.selectMemberById(member.getId());
			session.setAttribute("memberId", loginMember.getId());
			session.setAttribute("memberPw", loginMember.getPassword());
			session.setAttribute("memberStatus", loginMember.getDolbomi_status());
		}
		return result;
	}

	@Override
	public List<Member> selectMembers() throws Exception {
		// TODO Auto-generated method stub
		return memberDao.selectMembers();
	}

	@Override
	public void createMember(Member member) {
		// TODO Auto-generated method stub
		memberDao.insertMember(member);
		
	}

	@Override
	public Member getMember(Member member) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member updateMember(Member member) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteMember(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void createPet(Pet pet) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Pet getPet(Pet pet) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Pet updatePet(Pet pet) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deletePet(Pet pet) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}