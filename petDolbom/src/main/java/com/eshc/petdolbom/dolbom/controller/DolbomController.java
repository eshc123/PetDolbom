package com.eshc.petdolbom.dolbom.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.eshc.petdolbom.dolbom.DolbomTime;
import com.eshc.petdolbom.dolbom.FullTime;
import com.eshc.petdolbom.dolbom.FullTimeReservation;
import com.eshc.petdolbom.dolbom.FullTimeReservationVO;
import com.eshc.petdolbom.dolbom.service.DolbomService;
import com.eshc.petdolbom.member.Member;
import com.eshc.petdolbom.member.service.MemberService;
import com.eshc.petdolbom.reservation.Reservation;

@Controller
@RequestMapping("/dolbom")
public class DolbomController {
	
	@Autowired
	DolbomService dolbomService;
	
	@Autowired
	MemberService memberService;
	
	@ModelAttribute("cp")
	public String getContextPath(HttpServletRequest request) {
		return request.getContextPath();
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String searchPageDolbom(Model model) throws Exception {
		 List<FullTime> fullTimeList = dolbomService.searchFullTime();
		 List<DolbomTime> dolbomTimeList = dolbomService.searchDolbomTime();
		 
		 model.addAttribute("fullServiceList",fullTimeList);
		 model.addAttribute("dolbomServiceList",dolbomTimeList);
		return "/dolbom/search";
	}
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public ModelAndView searchDolbom(HttpServletRequest request)  throws Exception {
		//request.getParameter("region")
		ModelAndView mav = new ModelAndView();
		String [] regions = request.getParameterValues("region");
		List<DolbomTime> dolbomTimeList =
		dolbomService.searchRegionDolbomTime(regions);		 
		mav.addObject("dolbomServiceList",dolbomTimeList);
		//mav.addAttribute();
		 
		return mav;
	}
	@RequestMapping(value = "/getReserv", method = RequestMethod.GET)
	public String getReservations() {

		return "/dolbom/calendar";
	}
	@RequestMapping(value = "/dolbomi", method = RequestMethod.GET)
	public String dolbomiPage(HttpSession session) {
		if((int)session.getAttribute("memberStatus")==2) {
			return "/dolbom/dolbomiReceipt";
		}
		else if((int)session.getAttribute("memberStatus")==1) {
			return "/dolbom/warning";
		}
		else return "/dolbom/dolbomi";
	}
	@RequestMapping(value = "/dolbomi", method = RequestMethod.POST)
	public String dolbomiApply(HttpServletRequest request,HttpSession session) {
		String [] caredPets = request.getParameterValues("caredPet");
		String caredPet = "";
		String memId = session.getAttribute("memberId").toString();
		for(int i=0;i<caredPets.length;i++) {
			caredPet +=caredPets[i];
			if(i==caredPets.length-1)
				break;
			caredPet += ",";
		}
		if(request.getParameter("radio").equals("fullTime")) {
			dolbomService.createFullTime(memId, caredPet);
			session.setAttribute("memberStatus", 1);
		}
		else {
			dolbomService.createPartTime(memId, caredPet,request.getParameter("startTime"),request.getParameter("endTime"));
			session.setAttribute("memberStatus", 1);
		}
	
		return "redirect:/dolbom/dolbomi";
	}
	@RequestMapping(value = "/dolbomiFinished", method = RequestMethod.GET)
	public String dolbomiFinishedPage(HttpSession session) {
		if((int)session.getAttribute("memberStatus")>0) {
			return "/dolbom/dolbomiFinished";
		}
		else return "/dolbom/dolbomi";
	}
	@RequestMapping(value = "/apply", method = RequestMethod.GET) // 신청자 정보는 session, 봉사자 정보느?
	@ResponseBody
	public ModelAndView applyPage(String id,String status,HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();

		if(id.equals(session.getAttribute("memberId").toString())) {
			mav.setViewName("redirect:/dolbom/search");
			return mav;
		}
		if(status.equals("시간제")) {
			List<Reservation> reservations = dolbomService.searchPartReservation(id);
			List<String> dates = new ArrayList<String>();

			for(int i=0;i<reservations.size();i++) {
				dates.add(reservations.get(i).getDate());
			}
			mav.setViewName("dolbom/partApply");
			mav.addObject("partTime",dolbomService.searchPartTimeById(id));
			mav.addObject("dolbomiId",id);
			mav.addObject("pets",dolbomService.searchPartTimeById(id).getDolbomTimeCaredPet().toString().replace("[", "").replace("]",""));
			mav.addObject("member",memberService.getInfo(session));
			mav.addObject("myPets",memberService.selectPets(session.getAttribute("memberId").toString()));
			mav.addObject("disableDate",dates );
			
			return mav;
		}
		else {
			List<Reservation> reservations = dolbomService.searchFullReservation(id);
			List<String> dates = new ArrayList<String>();

			for(int i=0;i<reservations.size();i++) {
				dates.add(reservations.get(i).getDate());
			}
			mav.setViewName("dolbom/fullApply");
			mav.addObject("fullTime",dolbomService.searchFullTimeById(id));
			mav.addObject("dolbomiId",id);
			mav.addObject("pets",dolbomService.searchFullTimeById(id).getDolbomTimeCaredPet().toString().replace("[", "").replace("]",""));
			mav.addObject("member",memberService.getInfo(session));
			mav.addObject("myPets",memberService.selectPets(session.getAttribute("memberId").toString()));
			mav.addObject("disableDate",dates );
			return mav;
		}
		//System.out.println(id+status);
		//mav.addObject("dolbomi", )
		
	}
	@RequestMapping(value = "/apply", method = RequestMethod.POST)
	public String applyDolbom(HttpServletRequest request,HttpSession session) throws Exception{
		
		String pet = request.getParameter("myPet").replace(" ", "");
		int petIdx = Integer.parseInt(pet);
		FullTimeReservation fullTimeReservation = 
				new FullTimeReservation(dolbomService.searchFullTimeById(request.getParameter("dolbomiId").toString()).getDolbomTimeIdx(),request.getParameter("date").toString(),
				session.getAttribute("memberId").toString(),petIdx,1);
		
		dolbomService.createFullTimeReservation(fullTimeReservation);
		return "redirect:/dolbom/search"+request.getParameter("dolbomiId").toString();
	}
	@RequestMapping(value = "/date", method = RequestMethod.GET)
	public String selectDate() {

		return "";
	}
	@RequestMapping(value = "/pet", method = RequestMethod.GET)
	public String selectPet() {

		return "";
	}
	

	@RequestMapping(value = "/adminDolbomAccept", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView dolbomiAccept(String id,HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		dolbomService.updateDolbomiStatus(id, 2);
		mav.addObject("dolbomiFullList",dolbomService.searchFullDolbomi(1));
		mav.addObject("dolbomiPartList",dolbomService.searchPartDolbomi(1));
		mav.setView(new RedirectView("/dolbom/adminDolbomApply",true));
		System.out.println(id);
		return mav;
	}
	@RequestMapping(value = "/adminDolbomCancel", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView dolbomiCancel(String id,HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		dolbomService.updateDolbomiStatus(id, 0);
		mav.addObject("dolbomiFullList",dolbomService.searchFullDolbomi(1));
		mav.addObject("dolbomiPartList",dolbomService.searchPartDolbomi(1));
		mav.setView(new RedirectView("/dolbom/adminDolbomApply",true));
		return mav;
	}
	@RequestMapping(value = "/adminDolbomStop", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView dolbomiStop(String id,HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		dolbomService.updateDolbomiStatus(id, 0);
		mav.addObject("dolbomiFullList",dolbomService.searchFullDolbomi(1));
		mav.addObject("dolbomiPartList",dolbomService.searchPartDolbomi(1));
		mav.setView(new RedirectView("/dolbom/adminDolbomSearch",true));
		return mav;
	}
	
	@RequestMapping(value = "/adminDolbomApply", method = RequestMethod.GET)
	public ModelAndView listApplyDolbomAdmin() throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.addObject("dolbomiFullList",dolbomService.searchFullDolbomi(1));
		mav.addObject("dolbomiPartList",dolbomService.searchPartDolbomi(1));
		mav.setViewName("/dolbom/adminDolbomApply");
		return mav;
	}
	@RequestMapping(value = "/adminDolbomSearch", method = RequestMethod.GET)
	public ModelAndView searchDolbomAdmin() throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.addObject("dolbomiFullList",dolbomService.searchFullDolbomi(2));
		mav.addObject("dolbomiPartList",dolbomService.searchPartDolbomi(2));
		mav.setViewName("/dolbom/adminDolbomSearch");
		return mav;
	}
	@RequestMapping(value = "/adminDolbomAdd", method = RequestMethod.GET)
	public String formAddDolbomAdmin() {

		return "";
	}
	@RequestMapping(value = "/adminDolbomAdd", method = RequestMethod.POST)
	public String submitAddDolbomAdmin() {

		return "";
	}
}
