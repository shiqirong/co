package com.sqr.co.service;

import java.util.List;


import com.sqr.co.bean.Newsinfo;
import com.sqr.co.dto.News_GetPaged_InputDto;

public interface INewsService {
	
	public List<Newsinfo> GetPaged(News_GetPaged_InputDto input) ;

	public Newsinfo getDetail(Integer id);
	
	public Newsinfo getNext( int category,int subCategory,Integer orderIndex);
	
	public Newsinfo getPrev(int category,int subCategory,Integer orderIndex);
}
