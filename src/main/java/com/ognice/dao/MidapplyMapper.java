package com.ognice.dao;

import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Midapply;

import java.util.List;

/**
*
*  dao类
*
**/
public interface MidapplyMapper {
    int delete(Integer id);

    int insert(Midapply record);

    Midapply selectMidapplyById(Integer id);
    Midapply selectMidapplyByProId(Integer id);

    int update(Midapply record);

    List<Midapply> page(PageSearchParam param);
}