package com.sqr.co.dto;

import com.sqr.co.common.PageInput;

public class News_GetPaged_InputDto extends PageInput{
	
	private int category;
	private int subCategory;
	
	public News_GetPaged_InputDto(int page,int limit,int category,int subCategory) {
		super(page,limit);
		setCategory(category);
		setSubCategory(subCategory);
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public int getSubCategory() {
		return subCategory;
	}
	public void setSubCategory(int subCategory) {
		this.subCategory = subCategory;
	}

}
