package com.ognice.dao;

import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Changelog;

import java.util.List;

/**
*
* 变更记录 dao类
*
**/
public interface ChangelogMapper {
    int delete(Integer id);

    int insert(Changelog record);

    Changelog selectChangelogById(Integer id);
    Changelog selectChangelogByProId(Integer id);

    int update(Changelog record);

    List<Changelog> page(PageSearchParam param);
}