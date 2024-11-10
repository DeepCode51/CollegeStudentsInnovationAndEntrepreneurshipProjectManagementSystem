package com.ognice.dao;

import java.util.List;

import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Cost;
/**
*
*  dao类
*
**/
public interface CostMapper {
    int delete(Integer id);

    int insert(Cost record);

    Cost selectCostById(Integer id);

    int update(Cost record);

    List<Cost> page(PageSearchParam param);
}