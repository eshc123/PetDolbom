package com.eshc.petdolbom.dolbom.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.eshc.petdolbom.dolbom.service.DolbomService;
import com.eshc.petdolbom.member.Member;

@Controller
@RequestMapping("/dolbom")
public class DolbomController {
	
//	@Autowired
//	DolbomService dolbomService;
	
	@ModelAttribute("cp")
	public String getContextPath(HttpServletRequest request) {
		return request.getContextPath();
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String searchPageDolbom() {

		return "/dolbom/search";
	}
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String searchDolbom() {

		return "";
	}
	@RequestMapping(value = "/getReserv", method = RequestMethod.GET)
	public String getReservations() {

		return "";
	}
	@RequestMapping(value = "/apply", method = RequestMethod.GET)
	public String applyPage() {

		return "";
	}
	@RequestMapping(value = "/detail", method = RequestMethod.POST)
	public String applyDolbom() {

		return "";
	}
	@RequestMapping(value = "/date", method = RequestMethod.GET)
	public String selectDate() {

		return "";
	}
	@RequestMapping(value = "/pet", method = RequestMethod.GET)
	public String selectPet() {

		return "";
	}
	@RequestMapping(value = "/adminDolbomApply", method = RequestMethod.GET)
	public String FormApplyDolbomAdmin() {

		return "";
	}
	@RequestMapping(value = "/adminDolbomApply", method = RequestMethod.POST)
	public String acceptApplyDolbomAdmin() {

		return "";
	}
	@RequestMapping(value = "/adminDolbomApply", method = RequestMethod.PUT)
	public String cancelApplyDolbomAdmin() {

		return "";
	}
	@RequestMapping(value = "/adminDolbomSearch", method = RequestMethod.GET)
	public String listSearchDolbomAdmin() {

		return "";
	}
	@RequestMapping(value = "/adminDolbomSearch", method = RequestMethod.POST)
	public String pauseSearchDolbomAdmin() {

		return "";
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
