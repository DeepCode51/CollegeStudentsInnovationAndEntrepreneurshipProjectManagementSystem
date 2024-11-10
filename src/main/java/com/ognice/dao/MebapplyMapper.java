package com.ognice.dao;

import java.util.List;

import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Mebapply;
/**
*
*  dao类
*
**/
public interface MebapplyMapper {
    int delete(Integer id);

    int insert(Mebapply record);

    Mebapply selectMebapplyById(Integer id);

    int update(Mebapply record);

    List<Mebapply> page(PageSearchParam param);
}