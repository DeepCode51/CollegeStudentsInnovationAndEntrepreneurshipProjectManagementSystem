package com.ognice.dao;

import java.util.List;

import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Yjslog;
/**
*
*  dao类
*
**/
public interface YjslogMapper {
    int delete(Integer id);

    int insert(Yjslog record);

    Yjslog selectYjslogById(Integer id);

    int update(Yjslog record);

    List<Yjslog> page(PageSearchParam param);
}