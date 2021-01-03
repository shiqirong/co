package com.sqr.co.dao;

import com.sqr.co.bean.Ssosites;

public interface SsositesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Ssosites record);

    int insertSelective(Ssosites record);

    Ssosites selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Ssosites record);

    int updateByPrimaryKey(Ssosites record);
}