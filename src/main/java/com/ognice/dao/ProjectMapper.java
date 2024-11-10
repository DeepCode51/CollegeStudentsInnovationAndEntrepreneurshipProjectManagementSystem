package com.ognice.dao;

import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Project;

import java.util.List;

/**
*
* 项目管理 dao类
*
**/
public interface ProjectMapper {
    int delete(Integer id);

    int insert(Project record);

    Project selectProjectById(Integer id);

    int update(Project record);

    List<Project> page(PageSearchParam param);
}