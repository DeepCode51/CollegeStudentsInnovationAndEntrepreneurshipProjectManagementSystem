/**
*
*/
package com.ognice.service;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Midapply;

import java.util.List;

/**
*
*  service接口类
*
**/
public interface IMidapplyService {
//根据id获取
public Midapply getMidapplyById(Integer id);
    public Midapply getMidapplyByProId(Integer id);
//保存入库
public String save(Midapply record);
//获取全部数据
public List<Midapply> all();
//分页获取
public PageResult getPages(PageSearchParam param);
//更新
public int update(Midapply record);
//删除
public int delete(Integer id);

}
