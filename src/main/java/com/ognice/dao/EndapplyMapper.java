package com.ognice.dao;

import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Endapply;

import java.util.List;

/**
*
*  dao类
*
**/
public interface EndapplyMapper {
    int delete(Integer id);

    int insert(Endapply record);

    Endapply selectEndapplyById(Integer id);
    Endapply selectEndapplyByProId(Integer id);

    int update(Endapply record);

    List<Endapply> page(PageSearchParam param);
}