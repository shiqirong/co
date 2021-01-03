package com.sqr.co.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sqr.co.bean.Newsinfo;
import com.sqr.co.dao.NewsinfoMapper;
import com.sqr.co.dto.News_GetPaged_InputDto;

@Service
public class NewsService implements INewsService {

	@Autowired
	private NewsinfoMapper newsinfoMapper;
	
	@Override
	public List<Newsinfo> GetPaged(News_GetPaged_InputDto input) {
		List<Newsinfo> lst= newsinfoMapper.getPaged(input.getCategory(),input.getSubCategory(),(input.getPage()-1)*input.getLimit(),input.getLimit());
		return lst;
	}

}
