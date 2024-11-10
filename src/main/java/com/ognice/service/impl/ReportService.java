/**
 *
 */
package com.ognice.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.dao.ReportMapper;
import com.ognice.domain.Report;
import com.ognice.service.IReportService;
/**
*
*  service接口实现类
*
**/
@Service("reportService")
public class ReportService implements IReportService {
    @Resource
    private ReportMapper reportMapper;

    public Report getReportById(Integer id) {
        return reportMapper.selectReportById(id);
    } public Report getReportByProId(Integer id) {
        return reportMapper.selectReportByProId(id);
    }

    public String save(Report record) {
            if (1 == reportMapper.insert(record)) {
                return "添加成功";
            }
        return "添加失败";
    }

    public PageResult getPages(PageSearchParam param) {
        PageResult pageResult = new PageResult();
        pageResult.setPagesize(param.getPagesize());
        pageResult.setPage(param.getPage());
        param.setPage((param.getPage() - 1) * param.getPagesize());
        List<Report> reports = reportMapper.page(param);
        pageResult.setData(reports);
        param.setPage(null);
        pageResult.setTotal(reportMapper.page(param).size());
        pageResult.setTotalPage((int) Math.ceil(((double) pageResult.getTotal() / pageResult.getPagesize())));
        return pageResult;
    }

    public int update(Report record) {
        return reportMapper.update(record);
    }

    public int delete(Integer id) {
        return reportMapper.delete(id);
    }

    public List<Report> all() {
		// TODO Auto-generated method stub
		return reportMapper.page(new PageSearchParam());
	}

}
