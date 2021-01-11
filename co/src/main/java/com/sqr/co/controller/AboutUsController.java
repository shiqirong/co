package com.sqr.co.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/aboutus")
public class AboutUsController extends BaseController {

	
	@RequestMapping("/contactus")
	public String ContactUs() {
		return "aboutus/contactus";
	}
}
