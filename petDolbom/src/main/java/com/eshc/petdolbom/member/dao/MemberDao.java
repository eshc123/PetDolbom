package com.eshc.petdolbom.member.dao;

import java.util.List;

import com.eshc.petdolbom.member.Member;
import com.eshc.petdolbom.pet.Pet;
import com.eshc.petdolbom.pet.PetVO;

public interface MemberDao {
	int insertMember(Member member);
	Member selectMember(Member member);
	int updateMember(Member member);
	int deleteMember(Member member);
	int insertPet(Pet pet);
	Pet selectPet(Pet pet);
	int updatePet(Pet pet);
	int deletePet(Pet pet);
	
	public List<Member> selectMembers() throws Exception;
	public Member selectMemberById(String id) throws Exception;
	public Member getInfo(String id) throws Exception;
	public int idCheck(String id) throws Exception;
	public void addPet(Pet pet) throws Exception;
	public List<PetVO> selectPets(String ownerId) throws Exception;
	
}