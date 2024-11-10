/**
 *
 */
package com.ognice.service.impl;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.dao.ProMapper;
import com.ognice.domain.Pro;
import com.ognice.service.IProService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
/**
*
* 专业管理 service接口实现类
*
**/
@Service("proService")
public class ProService implements IProService {
    @Resource
    private ProMapper proMapper;

    public Pro getProById(Integer id) {
        return proMapper.selectProById(id);
    }

    public String save(Pro record) {
            if (1 == proMapper.insert(record)) {
                return "添加成功";
            }
        return "添加失败";
    }

    public PageResult getPages(PageSearchParam param) {
        PageResult pageResult = new PageResult();
        pageResult.setPagesize(param.getPagesize());
        pageResult.setPage(param.getPage());
        param.setPage((param.getPage() - 1) * param.getPagesize());
        List<Pro> pros = proMapper.page(param);
        pageResult.setData(pros);
        param.setPage(null);
        pageResult.setTotal(proMapper.page(param).size());
        pageResult.setTotalPage((int) Math.ceil(((double) pageResult.getTotal() / pageResult.getPagesize())));
        return pageResult;
    }

    public int update(Pro record) {
        return proMapper.update(record);
    }

    public int delete(Integer id) {
        return proMapper.delete(id);
    }

    public List<Pro> all() {
		// TODO Auto-generated method stub
		return proMapper.page(new PageSearchParam());
	}

}
