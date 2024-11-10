/**
*
*/
package com.ognice.service;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Highapply;

import java.util.List;

/**
*
* 省级申请书 service接口类
*
**/
public interface IHighapplyService {
//根据id获取
public Highapply getHighapplyById(Integer id);
    public Highapply getHighapplyByProId(Integer id);
//保存入库
public String save(Highapply record);
//获取全部数据
public List<Highapply> all();
//分页获取
public PageResult getPages(PageSearchParam param);
//更新
public int update(Highapply record);
//删除
public int delete(Integer id);

}
