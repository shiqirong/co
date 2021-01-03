package com.sqr.co.dao;

import com.sqr.co.bean.Fileinfo;

public interface FileinfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Fileinfo record);

    int insertSelective(Fileinfo record);

    Fileinfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Fileinfo record);

    int updateByPrimaryKey(Fileinfo record);
}