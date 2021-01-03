package com.sqr.co.dao;

import java.util.List;

import com.sqr.co.bean.Actioninfo;

public interface ActioninfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Actioninfo record);

    int insertSelective(Actioninfo record);

    Actioninfo selectByPrimaryKey(Long id);

    List<Actioninfo> selectBySystemId(Long systemId);
    
    int updateByPrimaryKeySelective(Actioninfo record);

    int updateByPrimaryKey(Actioninfo record);
}