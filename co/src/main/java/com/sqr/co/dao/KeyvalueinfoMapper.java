package com.sqr.co.dao;

import com.sqr.co.bean.Keyvalueinfo;

public interface KeyvalueinfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Keyvalueinfo record);

    int insertSelective(Keyvalueinfo record);

    Keyvalueinfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Keyvalueinfo record);

    int updateByPrimaryKey(Keyvalueinfo record);
}