package com.sqr.co.common;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.Consumer;
import java.util.stream.Collectors;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.sqr.co.bean.Actioninfo;
import com.sqr.co.bean.Partnersinfo;
import com.sqr.co.service.IActionService;
import com.sqr.co.service.IPartnersInfoService;
import com.sqr.co.viewModel.MenuTreeItem;

public class WebHelper {

//	@Autowired
//	public IActionService actionService;

	public void getMenuTree() {
		WebApplicationContext webApplicationContext = ContextLoader.getCurrentWebApplicationContext();
		IActionService actionService=webApplicationContext.getBean(IActionService.class);
		List<Actioninfo> menuList = actionService.getMenuList();  
		List<Actioninfo> rootsActioninfo= menuList.stream().filter(m->m.getParentid()==0).collect(Collectors.toList());
		List<MenuTreeItem> roots = new ArrayList<MenuTreeItem>();
		rootsActioninfo.forEach(a->{
			MenuTreeItem item=new MenuTreeItem();
			item.setAction(a.getAction()	);
			item.setController(a.getController());
			item.setId(a.getId());
			item.setName(a.getName());
			item.setParentId(a.getParentid());
			item.setParameters(a.getParameters());
			
			fillChildren(item, menuList);
			roots.add(item);
		});
		HttpServletRequest request=		((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		request.setAttribute("menuTree", roots);
		System.out.println(roots);
	}

	void fillChildren(MenuTreeItem parent, List<Actioninfo> source) {
		Actioninfo[] children = source.stream().filter(c -> c.getParentid() == parent.getId())
				.toArray(Actioninfo[]::new);
		List<MenuTreeItem> roots = new ArrayList<MenuTreeItem>();
		if (children != null && children.length > 0) {
			for (int i = 0; i < children.length; i++) {
				Actioninfo a=children[i];
				MenuTreeItem item=new MenuTreeItem();
				item.setAction(a.getAction()	);
				item.setController(a.getController());
				item.setId(a.getId());
				item.setName(a.getName());
				item.setParentId(a.getParentid());
				item.setParameters(a.getParameters());
				roots.add(item);
				fillChildren(item, source);
			}	
		}
		parent.setChildren(roots);
	}
	
	public void getPartnersinfo() {
		WebApplicationContext webApplicationContext = ContextLoader.getCurrentWebApplicationContext();
		IPartnersInfoService partnersInfoService=webApplicationContext.getBean(IPartnersInfoService.class);
		List<Partnersinfo> partnersInfoList=partnersInfoService.getAll();
		HttpServletRequest request=		((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		request.setAttribute("partnersInfoList", partnersInfoList);
	}

}
