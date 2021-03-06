package com.eshc.petdolbom.member.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.eshc.petdolbom.member.Member;
import com.eshc.petdolbom.pet.Pet;
import com.eshc.petdolbom.pet.PetVO;

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
	public boolean loginMember(Member member,HttpSession session) throws Exception;
	public Member getInfo(HttpSession session) throws Exception;
	public int idCheck(String id) throws Exception;
	public void addPet(Pet pet) throws Exception;
	public List<PetVO> selectPets(String ownerId) throws Exception;
}