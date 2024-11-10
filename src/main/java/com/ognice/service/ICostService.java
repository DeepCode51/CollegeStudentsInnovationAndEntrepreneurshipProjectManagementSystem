/**
*
*/
package com.ognice.service;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Cost;

import java.util.List;

/**
*
*  service接口类
*
**/
public interface ICostService {
//根据id获取
public Cost getCostById(Integer id);
//保存入库
public String save(Cost record);
//获取全部数据
public List<Cost> all();
//分页获取
public PageResult getPages(PageSearchParam param);
//更新
public int update(Cost record);
//删除
public int delete(Integer id);

}
