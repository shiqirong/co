package com.sqr.co.dao;

import com.sqr.co.bean.Userrolesrelation;

public interface UserrolesrelationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Userrolesrelation record);

    int insertSelective(Userrolesrelation record);

    Userrolesrelation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Userrolesrelation record);

    int updateByPrimaryKey(Userrolesrelation record);
}