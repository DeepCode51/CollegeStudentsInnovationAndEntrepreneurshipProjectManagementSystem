/**
*
*/
package com.ognice.service;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Comment;

import java.util.List;

/**
*
* 反馈管理 service接口类
*
**/
public interface ICommentService {
//根据id获取
public Comment getCommentById(Integer id);
//保存入库
public String save(Comment record);
//获取全部数据
public List<Comment> all();
//分页获取
public PageResult getPages(PageSearchParam param);
//更新
public int update(Comment record);
//删除
public int delete(Integer id);

}
