/**
*
*/
package com.ognice.service;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Changelog;

import java.util.List;

/**
*
* 变更记录 service接口类
*
**/
public interface IChangelogService {
//根据id获取
public Changelog getChangelogById(Integer id);
    public Changelog getChangelogByProId(Integer id);
//保存入库
public String save(Changelog record);
//获取全部数据
public List<Changelog> all();
//分页获取
public PageResult getPages(PageSearchParam param);
//更新
public int update(Changelog record);
//删除
public int delete(Integer id);

}
