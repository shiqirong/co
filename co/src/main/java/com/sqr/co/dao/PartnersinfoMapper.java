package com.sqr.co.dao;

import java.util.List;

import com.sqr.co.bean.Partnersinfo;

public interface PartnersinfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Partnersinfo record);

    int insertSelective(Partnersinfo record);

    Partnersinfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Partnersinfo record);

    int updateByPrimaryKey(Partnersinfo record);

	List<Partnersinfo> selectAll();
}