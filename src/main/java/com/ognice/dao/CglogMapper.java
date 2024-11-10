package com.ognice.dao;

import java.util.List;

import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Cglog;
/**
*
*  dao类
*
**/
public interface CglogMapper {
    int delete(Integer id);

    int insert(Cglog record);

    Cglog selectCglogById(Integer id);

    int update(Cglog record);

    List<Cglog> page(PageSearchParam param);
}