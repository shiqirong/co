package com.sqr.co.dao;

import com.sqr.co.bean.Filethumbnail;

public interface FilethumbnailMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Filethumbnail record);

    int insertSelective(Filethumbnail record);

    Filethumbnail selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Filethumbnail record);

    int updateByPrimaryKey(Filethumbnail record);
}