package com.sqr.co.viewModel;

import java.util.List;

public class MenuTreeItem {

	private Long id;
	private Long parentId;
	private String controller;
	private String action;
	private String name;
	private String parameters;
	
	private List<MenuTreeItem> children;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getParentId() {
		return parentId;
	}
	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}
	public String getController() {
		return controller;
	}
	public void setController(String controller) {
		this.controller = controller;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getParameters() {
		return parameters;
	}
	public void setParameters(String parameters) {
		this.parameters = parameters;
	}
	public List<MenuTreeItem> getChildren() {
		return children;
	}
	public void setChildren(List<MenuTreeItem> children) {
		this.children = children;
	}
}
