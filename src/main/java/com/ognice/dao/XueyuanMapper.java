package com.ognice.dao;

import java.util.List;

import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Xueyuan;
/**
*
* 学院管理 dao类
*
**/
public interface XueyuanMapper {
    int delete(Integer id);

    int insert(Xueyuan record);

    Xueyuan selectXueyuanById(Integer id);

    int update(Xueyuan record);

    List<Xueyuan> page(PageSearchParam param);
}