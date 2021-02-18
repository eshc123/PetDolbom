package com.eshc.petdolbom.member.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.eshc.petdolbom.dolbom.DolbomTime;
import com.eshc.petdolbom.dolbom.service.DolbomService;
import com.eshc.petdolbom.member.Member;
import com.eshc.petdolbom.member.service.MemberService;
import com.eshc.petdolbom.pet.Pet;
import com.eshc.petdolbom.pet.PetVO;

@Controller
@RequestMapping("/member")
public class MemberController {
//	
	@Autowired
	MemberService service;
	
	@Autowired
	DolbomService dolbomService;
	
	@ModelAttribute("cp")
	public String getContextPath(HttpServletRequest request) {
		return request.getContextPath();
	}
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String index() throws Exception {
		List<Member> memberList = service.selectMembers();
		System.out.println("asd");
		System.out.println(memberList.toString());
		return "/home";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String formLogin(Member member, HttpSession session) {
		
//		Member mem = service.getMember(member);
//		if(mem == null) 
//			return "/member/loginForm";
//		
//		session.setAttribute("member", mem);
		
		return "/member/login";
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView submitLogin(Member member, HttpSession session) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		if(service.loginMember(member,session)) {
			mav.setViewName("/member/main");
			mav.addObject("msg","success");
//			return "/member/main";
		}
		else { 
			mav.setViewName("/member/login");
			mav.addObject("msg","failure");		
		}
		return mav;
		
	}
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Member member, HttpSession session) {
		
//		Member mem = service.getMember(member);
//		if(mem == null) 
//			return "/member/loginForm";
//		
//		session.setAttribute("member", mem);
		
		return "/member/main";
	}
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String formRegister(Member member) {
		
		//service.createMember(member);
		
		return "/member/register";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String submitRegister(Member member) {
		member.setLicense("asd");
		member.setDolbomi_status(0);
		service.createMember(member);
		
		return "/member/login";
	}
	@RequestMapping(value = "/idCheck", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(String id) throws Exception {
		return service.idCheck(id);
	}

	@RequestMapping("/logout")
	public String logout(Member member, HttpSession session) {
		
		session.invalidate();
		
		return "/member/login";
	}
//	
//	// Modify
//	@RequestMapping(value = "/modifyForm")
//	public ModelAndView modifyForm(HttpServletRequest request) {
//		
//		HttpSession session = request.getSession();
//		Member member = (Member) session.getAttribute("member");
//		
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("member", service.getMember(member));
//		
//		mav.setViewName("/member/modifyForm");
//		
//		return mav;
//	}
//	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public ModelAndView formMemberUpdate(HttpSession session) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("member", service.getInfo(session));
		mav.setViewName("/member/mypage");
//		HttpSession session = request.getSession();
//		
//		Member mem = service.updateMember(member);
//		if(mem == null) {
//			mav.setViewName("/member/modifyForm");
//		} else { 
//			session.setAttribute("member", mem);
//			
//			mav.addObject("memAft", mem);
//			mav.setViewName("/member/modifyOk");
//		}
		
		return mav;
	}
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView submitMemberUpdate(Member member, HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
//		HttpSession session = request.getSession();
//		
//		Member mem = service.updateMember(member);
//		if(mem == null) {
//			mav.setViewName("/member/modifyForm");
//		} else { 
//			session.setAttribute("member", mem);
//			
//			mav.addObject("memAft", mem);
//			mav.setViewName("/member/modifyOk");
//		}
		
		return mav;
	}
//	
//	// Remove
//	@RequestMapping("/removeForm")
//	public ModelAndView removeForm(HttpServletRequest request) {
//		
//		ModelAndView mav = new ModelAndView();
//		
//		HttpSession session =  request.getSession();
//		Member member = (Member) session.getAttribute("member");
//		
//		mav.addObject("member", member);
//		mav.setViewName("/member/removeForm");
//		
//		return mav;
//	}
//	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String submitMemberDelete(Member member, HttpServletRequest request) {
		
//		int result = service.deleteMember(member);
//		
//		if(result == 0)
//			return "/member/removeForm";
//		
//		HttpSession session = request.getSession();
//		session.invalidate();
		
		return "/member/removeOk";
	}
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String formMemberDelete(Member member, HttpServletRequest request) {
		
//		int result = service.deleteMember(member);
//		
//		if(result == 0)
//			return "/member/removeForm";
//		
//		HttpSession session = request.getSession();
//		session.invalidate();
		
		return "/member/removeOk";
	}
	@RequestMapping(value = "/pet", method = RequestMethod.GET)
	public ModelAndView infoPet(HttpSession session)  throws Exception {
		List<PetVO> petList = service.selectPets(session.getAttribute("memberId").toString());
		System.out.println(session.getId());
		ModelAndView mav = new ModelAndView();
		mav.addObject("petList",petList);
		mav.setViewName("/member/pet");
		return mav;
	}
	@RequestMapping(value = "/addPet", method = RequestMethod.GET)
	public String formAddPet(Pet pet, HttpServletRequest request) {
		
		
		return "/member/removeOk";
	}	
	@RequestMapping(value = "/pet", method = RequestMethod.POST)
	public String submitAddPet(Pet pet,HttpSession session) throws Exception {
		pet.setOwnerId(session.getAttribute("memberId").toString());
		service.addPet(pet);
		return "redirect:/member/pet";
	}
	@RequestMapping(value = "/updatePet", method = RequestMethod.GET)
	public String formUpdatePet(Pet pet, HttpServletRequest request) {
		
		
		return "/member/removeOk";
	}	
	@RequestMapping(value = "/updatePet", method = RequestMethod.POST)
	public String submitUpdatePet(Pet pet, HttpServletRequest request) {
		
		
		return "/member/removeOk";
	}
	@RequestMapping(value = "/adminLogin", method = RequestMethod.GET)
	public String formAdminLogin(Member member, HttpServletRequest request) {
		
		
		return "/member/adminLogin";
	}
	@RequestMapping(value = "/adminLogin", method = RequestMethod.POST)
	public ModelAndView submitAdminLogin(Member member) throws Exception {
		ModelAndView mav = new ModelAndView();
		if(member.getId().equals("admin") && member.getPassword().equals("12341234")) {
			mav.addObject("dolbomiFullList",dolbomService.searchFullDolbomi(1));
			mav.addObject("dolbomiPartList",dolbomService.searchPartDolbomi(1));
			mav.setViewName("/dolbom/adminDolbomApply");
			return mav;
		}
		else {
			
			mav.setViewName("/member/adminLogin");
			mav.addObject("msg","다시 확인해주세요.");
			return mav;
		}
	}
}
