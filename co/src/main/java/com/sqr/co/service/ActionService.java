package com.sqr.co.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sqr.co.bean.Actioninfo;
import com.sqr.co.common.Const;
import com.sqr.co.dao.ActioninfoMapper;

@Service
public class ActionService implements IActionService {

	@Autowired
	private ActioninfoMapper actioninfoMapper;
	

	public List<Actioninfo> getMenuList(){
		return actioninfoMapper.selectBySystemId(Const.SYSTEM_Id); 
	}
}
