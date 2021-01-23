package com.eshc.petdolbom.member.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.eshc.petdolbom.member.Member;
import com.eshc.petdolbom.member.service.MemberService;
import com.eshc.petdolbom.pet.Pet;

@Controller
@RequestMapping("/member")
public class MemberController {
//	
//	@Autowired
//	@Qualifier("memberService")
//	MemberService service;
	
	@ModelAttribute("cp")
	public String getContextPath(HttpServletRequest request) {
		return request.getContextPath();
	}
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "/index";
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
	public String submitLogin(Member member, HttpSession session) {
		
//		Member mem = service.getMember(member);
//		if(mem == null) 
//			return "/member/loginForm";
//		
//		session.setAttribute("member", mem);
		
		return "/member/login";
	}
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String formRegister(Member member) {
		
		//service.createMember(member);
		
		return "/member/register";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String submitRegister(Member member) {
		
		//service.createMember(member);
		
		return "/member/joinOk";
	}
//	
//	@ModelAttribute("serverTime")
//	public String getServerTime(Locale locale) {
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		return dateFormat.format(date);
//	}
//	
//	// Join
//	@RequestMapping("/joinForm")
//	public String joinForm(Member member) {
//		return "/member/joinForm";
//	}
//

//	
//	// Login
//	@RequestMapping("/loginForm")
//	public String loginForm(Member member) {
//		return "/member/loginForm";
//	}
//	
	
//	
	// Logout
	@RequestMapping("/logout")
	public String logout(Member member, HttpSession session) {
		
//		session.invalidate();
		
		return "/member/logoutOk";
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
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView formMemberUpdate(Member member, HttpServletRequest request) {
		
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
	public String infoPet(Member member, HttpServletRequest request) {
		
		
		return "/member/removeOk";
	}
	@RequestMapping(value = "/addPet", method = RequestMethod.GET)
	public String formAddPet(Pet pet, HttpServletRequest request) {
		
		
		return "/member/removeOk";
	}	
	@RequestMapping(value = "/addPet", method = RequestMethod.POST)
	public String submitAddPet(Pet pet, HttpServletRequest request) {
		
		
		return "/member/removeOk";
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
		
		
		return "/member/removeOk";
	}
	@RequestMapping(value = "/adminLogin", method = RequestMethod.POST)
	public String submitAdminLogin(Member member, HttpServletRequest request) {
		
		
		return "/member/removeOk";
	}
}
