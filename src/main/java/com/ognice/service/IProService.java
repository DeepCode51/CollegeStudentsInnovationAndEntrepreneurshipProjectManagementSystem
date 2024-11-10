/**
*
*/
package com.ognice.service;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Pro;

import java.util.List;

/**
*
* 专业管理 service接口类
*
**/
public interface IProService {
//根据id获取
public Pro getProById(Integer id);
//保存入库
public String save(Pro record);
//获取全部数据
public List<Pro> all();
//分页获取
public PageResult getPages(PageSearchParam param);
//更新
public int update(Pro record);
//删除
public int delete(Integer id);

}
