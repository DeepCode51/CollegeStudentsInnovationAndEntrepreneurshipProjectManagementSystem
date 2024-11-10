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
import com.ognice.dao.CostMapper;
import com.ognice.domain.Cost;
import com.ognice.service.ICostService;
/**
*
*  service接口实现类
*
**/
@Service("costService")
public class CostService implements ICostService {
    @Resource
    private CostMapper costMapper;

    public Cost getCostById(Integer id) {
        return costMapper.selectCostById(id);
    }

    public String save(Cost record) {
            if (1 == costMapper.insert(record)) {
                return "添加成功";
            }
        return "添加失败";
    }

    public PageResult getPages(PageSearchParam param) {
        PageResult pageResult = new PageResult();
        pageResult.setPagesize(param.getPagesize());
        pageResult.setPage(param.getPage());
        param.setPage((param.getPage() - 1) * param.getPagesize());
        List<Cost> costs = costMapper.page(param);
        pageResult.setData(costs);
        param.setPage(null);
        pageResult.setTotal(costMapper.page(param).size());
        pageResult.setTotalPage((int) Math.ceil(((double) pageResult.getTotal() / pageResult.getPagesize())));
        return pageResult;
    }

    public int update(Cost record) {
        return costMapper.update(record);
    }

    public int delete(Integer id) {
        return costMapper.delete(id);
    }

    public List<Cost> all() {
		// TODO Auto-generated method stub
		return costMapper.page(new PageSearchParam());
	}

}
