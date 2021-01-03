package com.sqr.co.common;

public class PageInput {
	
	private int page;
	private int limit;
	
	public PageInput() {
		
	}
	
	public PageInput(int page,int limit) {
		setPage(page);
		setLimit(limit);
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		if(this.page<1)
			this.page=1;
		this.page = page;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		if(this.limit<1)
			this.limit=1;
		this.limit = limit;
	}
	

}
