package com.mycompany.webapp.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.service.Ch13Service1;
import com.mycompany.webapp.service.Ch13Service2;

@Controller
@RequestMapping("/ch13")
public class Ch13Controller {
	//Field-------------------------------------
	private static final Logger logger = LoggerFactory.getLogger(Ch13Controller.class);
	
	//방법1
	//@Resource
	private Ch13Service1 service1;
	
	//@Resource
	private Ch13Service2 service2;
	
	
	//Constructor-------------------------------
	//방법2
	/*@Autowired
	public Ch13Controller(Ch13Service1 service1,Ch13Service2 service2) {
		logger.info("실행");
		this.service1 = service1;
		this.service2 = service2;
	}*/
	
	//Method------------------------------------
	//방법3
	@Autowired
	public void setService1(Ch13Service1 service1) {
		logger.info("실행");
		this.service1 = service1;
		
	}
	@Autowired
	public void setService2(Ch13Service2 service2) {
		logger.info("실행");
		this.service2 = service2;
		
	}
	
	
	@GetMapping("/content")
	public String content() {
		logger.info("실행");
		return "ch13/content";
	}
	
	

	@GetMapping("/service1")
	public String service1() {
		logger.info("실행");
		service1.method();
		return "redirect:/ch13/content";
	}
	
	@GetMapping("/service2")
	public String service2() {
		logger.info("실행");
		service2.method();
		return "redirect:/ch13/content";
	}
}
