/**
*
*/
package com.ognice.service;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Report;

import java.util.List;

/**
*
*  service接口类
*
**/
public interface IReportService {
//根据id获取
public Report getReportById(Integer id);
    public Report getReportByProId(Integer id);

//保存入库
public String save(Report record);
//获取全部数据
public List<Report> all();
//分页获取
public PageResult getPages(PageSearchParam param);
//更新
public int update(Report record);
//删除
public int delete(Integer id);

}
