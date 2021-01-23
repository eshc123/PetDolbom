package com.eshc.petdolbom.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eshc.petdolbom.member.Member;

import com.eshc.petdolbom.member.dao.MemberDaoImpl;
import com.eshc.petdolbom.pet.Pet;


@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDaoImpl memberDao;
	
	@Override
	public void createMember(Member member) {
		// TODO Auto-generated method stub
		
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