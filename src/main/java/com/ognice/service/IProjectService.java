/**
*
*/
package com.ognice.service;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Project;

import java.util.List;

/**
*
* 项目管理 service接口类
*
**/
public interface IProjectService {
//根据id获取
public Project getProjectById(Integer id);
//保存入库
public String save(Project record);
//获取全部数据
public List<Project> all();
//分页获取
public PageResult getPages(PageSearchParam param);
//更新
public int update(Project record);
//删除
public int delete(Integer id);

}
