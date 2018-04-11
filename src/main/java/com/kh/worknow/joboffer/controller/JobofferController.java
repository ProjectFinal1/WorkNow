package com.kh.worknow.joboffer.controller;
 
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.worknow.joboffer.model.service.Resume_BoardService;

@Controller
public class JobofferController {
	
		@Autowired
		private Resume_BoardService resume_boardservice;
		
		@RequestMapping(value = "receive.re", method = RequestMethod.GET)
		public String recevoir(Locale locale, Model model) {
			System.out.println("받은 신청 페이지");
					
			return "/joboffer/joboffer_receive";
		}
		
		@RequestMapping(value = "announcement.an", method = RequestMethod.GET)
		public String announcement(Locale locale, Model model) {
			System.out.println("공고 등록 페이지");
					
			return "/joboffer/joboffer_announcement";
		}
	}
		

