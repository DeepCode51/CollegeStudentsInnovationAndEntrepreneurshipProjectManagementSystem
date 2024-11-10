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
import com.ognice.dao.CglogMapper;
import com.ognice.domain.Cglog;
import com.ognice.service.ICglogService;
/**
*
*  service接口实现类
*
**/
@Service("cglogService")
public class CglogService implements ICglogService {
    @Resource
    private CglogMapper cglogMapper;

    public Cglog getCglogById(Integer id) {
        return cglogMapper.selectCglogById(id);
    }

    public String save(Cglog record) {
            if (1 == cglogMapper.insert(record)) {
                return "添加成功";
            }
        return "添加失败";
    }

    public PageResult getPages(PageSearchParam param) {
        PageResult pageResult = new PageResult();
        pageResult.setPagesize(param.getPagesize());
        pageResult.setPage(param.getPage());
        param.setPage((param.getPage() - 1) * param.getPagesize());
        List<Cglog> cglogs = cglogMapper.page(param);
        pageResult.setData(cglogs);
        param.setPage(null);
        pageResult.setTotal(cglogMapper.page(param).size());
        pageResult.setTotalPage((int) Math.ceil(((double) pageResult.getTotal() / pageResult.getPagesize())));
        return pageResult;
    }

    public int update(Cglog record) {
        return cglogMapper.update(record);
    }

    public int delete(Integer id) {
        return cglogMapper.delete(id);
    }

    public List<Cglog> all() {
		// TODO Auto-generated method stub
		return cglogMapper.page(new PageSearchParam());
	}

}
