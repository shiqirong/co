package com.sqr.co.dao;

import com.sqr.co.bean.Useractionrelation;

public interface UseractionrelationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Useractionrelation record);

    int insertSelective(Useractionrelation record);

    Useractionrelation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Useractionrelation record);

    int updateByPrimaryKey(Useractionrelation record);
}