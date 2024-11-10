/**
*
*/
package com.ognice.service;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Files;

/**
*
*  service接口类
*
**/
public interface IFilesService {
//根据id获取
public Files getFilesById(Integer id);
//保存入库
public String save(Files record);
//获取全部数据
public List<Files> all();
//分页获取
public PageResult getPages(PageSearchParam param);
//更新
public int update(Files record);
//删除
public int delete(Integer id);

}
