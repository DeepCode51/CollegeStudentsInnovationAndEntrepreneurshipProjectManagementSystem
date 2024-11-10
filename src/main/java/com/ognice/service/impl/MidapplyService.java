/**
 *
 */
package com.ognice.service.impl;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.dao.MidapplyMapper;
import com.ognice.domain.Midapply;
import com.ognice.service.IMidapplyService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
/**
*
*  service接口实现类
*
**/
@Service("midapplyService")
public class MidapplyService implements IMidapplyService {
    @Resource
    private MidapplyMapper midapplyMapper;

    public Midapply getMidapplyById(Integer id) {
        return midapplyMapper.selectMidapplyById(id);
    }
    public Midapply getMidapplyByProId(Integer id) {
        return midapplyMapper.selectMidapplyByProId(id);
    }

    public String save(Midapply record) {
            if (1 == midapplyMapper.insert(record)) {
                return "添加成功";
            }
        return "添加失败";
    }

    public PageResult getPages(PageSearchParam param) {
        PageResult pageResult = new PageResult();
        pageResult.setPagesize(param.getPagesize());
        pageResult.setPage(param.getPage());
        param.setPage((param.getPage() - 1) * param.getPagesize());
        List<Midapply> midapplys = midapplyMapper.page(param);
        pageResult.setData(midapplys);
        param.setPage(null);
        pageResult.setTotal(midapplyMapper.page(param).size());
        pageResult.setTotalPage((int) Math.ceil(((double) pageResult.getTotal() / pageResult.getPagesize())));
        return pageResult;
    }

    public int update(Midapply record) {
        return midapplyMapper.update(record);
    }

    public int delete(Integer id) {
        return midapplyMapper.delete(id);
    }

    public List<Midapply> all() {
		// TODO Auto-generated method stub
		return midapplyMapper.page(new PageSearchParam());
	}

}
