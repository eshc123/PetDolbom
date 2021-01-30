package com.eshc.petdolbom.center.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.eshc.petdolbom.center.service.CenterService;


@Controller
@RequestMapping("/center")
public class CenterController {
	
//	@Autowired
//	CenterService centerService;
	
	@ModelAttribute("cp")
	public String getContextPath(HttpServletRequest request) {
		return request.getContextPath();
	}
	
	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public String infoCenter() {

		return "/center/info";
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detailCenter() {

		return "/center/detail";
	}
	@RequestMapping(value = "/training", method = RequestMethod.GET)
	public String searchTraining() {

		return "/center/training";
	}
	@RequestMapping(value = "/training", method = RequestMethod.POST)
	public String applyTraining() {

		return "";
	}
	@RequestMapping(value = "/longPeriod", method = RequestMethod.GET)
	public String searchLongPeriod() {

		return "/center/longPeriod";
	}
	@RequestMapping(value = "/longPeriod", method = RequestMethod.POST)
	public String applyLongPeriod() {

		return "";
	}
	@RequestMapping(value = "/adminCenterSearch", method = RequestMethod.GET)
	public String listSearchCenterAdmin() {

		return "";
	}
	@RequestMapping(value = "/adminCenterSearch", method = RequestMethod.POST)
	public String pauseSearchCenterAdmin() {

		return "";
	}
	@RequestMapping(value = "/addCenterSearch", method = RequestMethod.GET)
	public String formAddCenterAdmin() {

		return "";
	}
	@RequestMapping(value = "/addCenterSearch", method = RequestMethod.POST)
	public String submitAddCenterAdmin() {

		return "";
	}
}
