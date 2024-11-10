package com.ognice.dao;

import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Highapply;

import java.util.List;
/**
*
* 省级申请书 dao类
*
**/
public interface HighapplyMapper {
    int delete(Integer id);

    int insert(Highapply record);

    Highapply selectHighapplyById(Integer id);
    Highapply selectHighapplyByProId(Integer id);

    int update(Highapply record);

    List<Highapply> page(PageSearchParam param);
}