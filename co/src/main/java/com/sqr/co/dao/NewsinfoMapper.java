package com.sqr.co.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sqr.co.bean.Newsinfo;

public interface NewsinfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Newsinfo record);

    int insertSelective(Newsinfo record);

    Newsinfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Newsinfo record);

    int updateByPrimaryKeyWithBLOBs(Newsinfo record);

    int updateByPrimaryKey(Newsinfo record);

	List<Newsinfo> getPaged(@Param("category") int category,@Param("subCategory")int subCategory,@Param("page")int page, @Param("limit")int limit);

	Newsinfo getNext(@Param("orderIndex")Integer orderIndex); 

	Newsinfo getPrev(@Param("orderIndex")Integer orderIndex);
}