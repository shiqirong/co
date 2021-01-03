package com.sqr.co.dao;

import com.sqr.co.bean.Newscategory;

public interface NewscategoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Newscategory record);

    int insertSelective(Newscategory record);

    Newscategory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Newscategory record);

    int updateByPrimaryKey(Newscategory record);
}