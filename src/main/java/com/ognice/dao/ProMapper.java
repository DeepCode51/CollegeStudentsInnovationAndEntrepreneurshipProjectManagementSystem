package com.ognice.dao;

import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Pro;

import java.util.List;
/**
*
* 专业管理 dao类
*
**/
public interface ProMapper {
    int delete(Integer id);

    int insert(Pro record);

    Pro selectProById(Integer id);

    int update(Pro record);

    List<Pro> page(PageSearchParam param);
}