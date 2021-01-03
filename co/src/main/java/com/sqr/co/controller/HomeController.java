package com.sqr.co.controller;

import java.util.List;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sqr.co.bean.Actioninfo;
import com.sqr.co.service.ActionService;
import com.sqr.co.service.IActionService;

@Controller
@RequestMapping("/home")
public class HomeController extends BaseController {

	@Autowired 
	public IActionService actionService; 
	
	@RequestMapping("/index")
	public String index() {
		System.out.println("home.index");
		List<Actioninfo> menuList=actionService.getMenuList();
		 
		getRequest().setAttribute("menuList", menuList);
		return "home/index";
	}
	
	@RequestMapping("/about")
	public String about(HttpServletRequest request) {
		System.out.println("home.index");
		List<Actioninfo> menuList=actionService.getMenuList();
		request.setAttribute("menuList", menuList);
		return "home/about";
	}
}
