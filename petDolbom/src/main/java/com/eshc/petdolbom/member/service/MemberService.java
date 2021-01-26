package com.eshc.petdolbom.member.service;

import java.util.List;

import com.eshc.petdolbom.member.Member;
import com.eshc.petdolbom.pet.Pet;

public interface MemberService {
	void createMember(Member member);
	Member getMember(Member member);
	Member updateMember(Member member);
	int deleteMember(Member member);
	
	void createPet(Pet pet);
	Pet getPet(Pet pet);
	Pet updatePet(Pet pet);
	int deletePet(Pet pet);
	
	public List<Member> selectMembers() throws Exception;
}