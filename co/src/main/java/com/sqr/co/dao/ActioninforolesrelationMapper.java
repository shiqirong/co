package com.sqr.co.dao;

import com.sqr.co.bean.Actioninforolesrelation;

public interface ActioninforolesrelationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Actioninforolesrelation record);

    int insertSelective(Actioninforolesrelation record);

    Actioninforolesrelation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Actioninforolesrelation record);

    int updateByPrimaryKey(Actioninforolesrelation record);
}