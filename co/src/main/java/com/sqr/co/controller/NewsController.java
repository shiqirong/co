package com.sqr.co.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sqr.co.bean.Newsinfo;
import com.sqr.co.dto.News_GetPaged_InputDto;
import com.sqr.co.service.INewsService;

@Controller
@RequestMapping("/news")
public class NewsController extends BaseController {
	
	@Autowired
	private INewsService newsService;
	
	@RequestMapping("/index")
	public String index() {
		List<Newsinfo> pagedData= newsService.GetPaged(new News_GetPaged_InputDto(1,10,1,1) );
		getRequest().setAttribute("newsList1", pagedData);
		pagedData= newsService.GetPaged(new News_GetPaged_InputDto(1,10,1,2) );
		getRequest().setAttribute("newsList2", pagedData);
		return "news/index";
	}
}
