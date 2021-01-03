package com.sqr.co.dao;

import com.sqr.co.bean.Productcategory;

public interface ProductcategoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Productcategory record);

    int insertSelective(Productcategory record);

    Productcategory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Productcategory record);

    int updateByPrimaryKey(Productcategory record);
}