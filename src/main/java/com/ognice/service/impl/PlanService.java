/**
 *
 */
package com.ognice.service.impl;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.dao.PlanMapper;
import com.ognice.domain.Plan;
import com.ognice.service.IPlanService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
/**
*
* 创新计划管理 service接口实现类
*
**/
@Service("planService")
public class PlanService implements IPlanService {
    @Resource
    private PlanMapper planMapper;

    public Plan getPlanById(Integer id) {
        return planMapper.selectPlanById(id);
    }

    public String save(Plan record) {
            if (1 == planMapper.insert(record)) {
                return "添加成功";
            }
        return "添加失败";
    }

    public PageResult getPages(PageSearchParam param) {
        PageResult pageResult = new PageResult();
        pageResult.setPagesize(param.getPagesize());
        pageResult.setPage(param.getPage());
        param.setPage((param.getPage() - 1) * param.getPagesize());
        List<Plan> plans = planMapper.page(param);
        pageResult.setData(plans);
        param.setPage(null);
        pageResult.setTotal(planMapper.page(param).size());
        pageResult.setTotalPage((int) Math.ceil(((double) pageResult.getTotal() / pageResult.getPagesize())));
        return pageResult;
    }

    public int update(Plan record) {
        return planMapper.update(record);
    }

    public int delete(Integer id) {
        return planMapper.delete(id);
    }

    public List<Plan> all() {
		// TODO Auto-generated method stub
		return planMapper.page(new PageSearchParam());
	}

}
