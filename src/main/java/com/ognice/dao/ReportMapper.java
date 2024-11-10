package com.ognice.dao;

import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Report;

import java.util.List;
/**
*
*  dao类
*
**/
public interface ReportMapper {
    int delete(Integer id);

    int insert(Report record);

    Report selectReportById(Integer id);
    Report selectReportByProId(Integer id);

    int update(Report record);

    List<Report> page(PageSearchParam param);
}