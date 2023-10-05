package com.mc.home;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
		
	@RequestMapping(value = "home.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		log.info("Welcome home! The client locale is{}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat
			= DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formatedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formatedDate);
		return "index";
	}
	
	@RequestMapping(value = "home1.do", method = RequestMethod.GET)
	public String home1(Locale locale, Model model) {
		
		log.info("Welcome home! The client locale is{}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat
			= DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formatedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formatedDate);
		return "header";
	}
	
}
