package com.sqr.co.dao;

import com.sqr.co.bean.Dicinfo;

public interface DicinfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Dicinfo record);

    int insertSelective(Dicinfo record);

    Dicinfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Dicinfo record);

    int updateByPrimaryKey(Dicinfo record);
}