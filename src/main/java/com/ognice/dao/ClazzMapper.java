package com.ognice.dao;

import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Clazz;

import java.util.List;

/**
*
* 班级管理 dao类
*
**/
public interface ClazzMapper {
    int delete(Integer id);

    int insert(Clazz record);

    Clazz selectClazzById(Integer id);

    int update(Clazz record);

    List<Clazz> page(PageSearchParam param);
}