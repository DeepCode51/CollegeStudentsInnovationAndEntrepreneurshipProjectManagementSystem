/**
*
*/
package com.ognice.service;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Projectapply;

import java.util.List;

/**
*
* 申请书 service接口类
*
**/
public interface IProjectapplyService {
//根据id获取
public Projectapply getProjectapplyById(Integer id);
    public Projectapply getProjectapplyByProjectId(Integer id);
//保存入库
public String save(Projectapply record);
//获取全部数据
public List<Projectapply> all();
//分页获取
public PageResult getPages(PageSearchParam param);
//更新
public int update(Projectapply record);
//删除
public int delete(Integer id);

}
