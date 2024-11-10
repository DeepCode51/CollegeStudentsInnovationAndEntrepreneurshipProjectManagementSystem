package com.ognice.dao;

import java.util.List;

import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Scorelog;
/**
*
*  dao类
*
**/
public interface ScorelogMapper {
    int delete(Integer id);

    int insert(Scorelog record);

    Scorelog selectScorelogById(Integer id);

    int update(Scorelog record);

    List<Scorelog> page(PageSearchParam param);
}