package com.ognice.dao;

import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Comment;

import java.util.List;

/**
*
* 反馈管理 dao类
*
**/
public interface CommentMapper {
    int delete(Integer id);

    int insert(Comment record);

    Comment selectCommentById(Integer id);

    int update(Comment record);

    List<Comment> page(PageSearchParam param);
}