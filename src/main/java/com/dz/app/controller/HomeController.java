package com.dz.app.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	//by default get method support if not specified
	@RequestMapping
	public String checkHelth() {
		System.out.println("I am Allive..");
//		return "PageName";
		return "home";
	}
	
//	@RequestMapping("/test")
	@RequestMapping("test")
	public String tesPage() {
		return "test";
	}
	
	@RequestMapping("testmodel")
	public String tesModel(Model model) {
		
//		Model is used to set data in http session. 	
//		model.addAttribute("key","value")
		
		model.addAttribute("name","ankush chaurassiya");
		
		List<String> list = new ArrayList<String>();
		list.add("aman");
		list.add("chaman");
		list.add("changan");
		
		model.addAttribute("friends",list);
		
		return "model-responce-page";
	}
	
	
}
