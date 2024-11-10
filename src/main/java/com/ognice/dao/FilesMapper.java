package com.ognice.dao;

import java.util.List;

import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Files;
/**
*
*  dao类
*
**/
public interface FilesMapper {
    int delete(Integer id);

    int insert(Files record);

    Files selectFilesById(Integer id);

    int update(Files record);

    List<Files> page(PageSearchParam param);
}