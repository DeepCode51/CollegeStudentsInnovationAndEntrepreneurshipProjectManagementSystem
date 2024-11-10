/**
*
*/
package com.ognice.service;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Clazz;

import java.util.List;

/**
*
* 班级管理 service接口类
*
**/
public interface IClazzService {
//根据id获取
public Clazz getClazzById(Integer id);
//保存入库
public String save(Clazz record);
//获取全部数据
public List<Clazz> all();
//分页获取
public PageResult getPages(PageSearchParam param);
//更新
public int update(Clazz record);
//删除
public int delete(Integer id);

}
