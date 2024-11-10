package com.ognice.dao;

import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Plan;

import java.util.List;
/**
*
* 创新计划管理 dao类
*
**/
public interface PlanMapper {
    int delete(Integer id);

    int insert(Plan record);

    Plan selectPlanById(Integer id);

    int update(Plan record);

    List<Plan> page(PageSearchParam param);
}