/**
*
*/
package com.ognice.service;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Endapply;

import java.util.List;

/**
*
*  service接口类
*
**/
public interface IEndapplyService {
//根据id获取
public Endapply getEndapplyById(Integer id);
    public Endapply getEndapplyByProId(Integer id);

//保存入库
public String save(Endapply record);
//获取全部数据
public List<Endapply> all();
//分页获取
public PageResult getPages(PageSearchParam param);
//更新
public int update(Endapply record);
//删除
public int delete(Integer id);

}
