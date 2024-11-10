/**
 *
 */
package com.ognice.service.impl;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.dao.EndapplyMapper;
import com.ognice.domain.Endapply;
import com.ognice.service.IEndapplyService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
/**
*
*  service接口实现类
*
**/
@Service("endapplyService")
public class EndapplyService implements IEndapplyService {
    @Resource
    private EndapplyMapper endapplyMapper;

    public Endapply getEndapplyById(Integer id) {
        return endapplyMapper.selectEndapplyById(id);
    }
    public Endapply getEndapplyByProId(Integer id) {
        return endapplyMapper.selectEndapplyByProId(id);
    }

    public String save(Endapply record) {
            if (1 == endapplyMapper.insert(record)) {
                return "添加成功";
            }
        return "添加失败";
    }

    public PageResult getPages(PageSearchParam param) {
        PageResult pageResult = new PageResult();
        pageResult.setPagesize(param.getPagesize());
        pageResult.setPage(param.getPage());
        param.setPage((param.getPage() - 1) * param.getPagesize());
        List<Endapply> endapplys = endapplyMapper.page(param);
        pageResult.setData(endapplys);
        param.setPage(null);
        pageResult.setTotal(endapplyMapper.page(param).size());
        pageResult.setTotalPage((int) Math.ceil(((double) pageResult.getTotal() / pageResult.getPagesize())));
        return pageResult;
    }

    public int update(Endapply record) {
        return endapplyMapper.update(record);
    }

    public int delete(Integer id) {
        return endapplyMapper.delete(id);
    }

    public List<Endapply> all() {
		// TODO Auto-generated method stub
		return endapplyMapper.page(new PageSearchParam());
	}

}
