package com.sqr.co.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sqr.co.bean.Partnersinfo;
import com.sqr.co.dao.PartnersinfoMapper;

@Service
public class PartnersInfoService implements IPartnersInfoService {

	@Autowired
	private PartnersinfoMapper partnersinfoMapper;
	
	@Override
	public List<Partnersinfo> getAll() {
		return partnersinfoMapper.selectAll();
	}

}
