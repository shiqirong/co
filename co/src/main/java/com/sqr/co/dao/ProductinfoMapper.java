package com.sqr.co.dao;

import com.sqr.co.bean.Productinfo;

public interface ProductinfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Productinfo record);

    int insertSelective(Productinfo record);

    Productinfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Productinfo record);

    int updateByPrimaryKey(Productinfo record);
}