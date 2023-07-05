package com.dz.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	//by default get method support if not specified
	@RequestMapping
	public String checkHelth() {
		System.out.println("I am Allive..");
		return "index";
	}
}
