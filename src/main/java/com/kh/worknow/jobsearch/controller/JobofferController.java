package com.kh.worknow.jobsearch.controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


public class JobofferController {

	
	@RequestMapping(value = "r", method = RequestMethod.GET)
	public ModelAndView receiveList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
		
		return mv;
	}
	
		
	

}