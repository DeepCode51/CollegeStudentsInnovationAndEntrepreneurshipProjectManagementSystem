package com.ognice.dao;

import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Projectapply;

import java.util.List;
/**
*
* 申请书 dao类
*
**/
public interface ProjectapplyMapper {
    int delete(Integer id);

    int insert(Projectapply record);

    Projectapply selectProjectapplyById(Integer id);
    Projectapply selectProjectapplyByProjectId(Integer id);

    int update(Projectapply record);

    List<Projectapply> page(PageSearchParam param);
}