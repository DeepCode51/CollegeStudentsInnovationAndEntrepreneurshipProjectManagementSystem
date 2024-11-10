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
import com.ognice.dao.YjslogMapper;
import com.ognice.domain.Yjslog;
import com.ognice.service.IYjslogService;
/**
*
*  service接口实现类
*
**/
@Service("yjslogService")
public class YjslogService implements IYjslogService {
    @Resource
    private YjslogMapper yjslogMapper;

    public Yjslog getYjslogById(Integer id) {
        return yjslogMapper.selectYjslogById(id);
    }

    public String save(Yjslog record) {
            if (1 == yjslogMapper.insert(record)) {
                return "添加成功";
            }
        return "添加失败";
    }

    public PageResult getPages(PageSearchParam param) {
        PageResult pageResult = new PageResult();
        pageResult.setPagesize(param.getPagesize());
        pageResult.setPage(param.getPage());
        param.setPage((param.getPage() - 1) * param.getPagesize());
        List<Yjslog> yjslogs = yjslogMapper.page(param);
        pageResult.setData(yjslogs);
        param.setPage(null);
        pageResult.setTotal(yjslogMapper.page(param).size());
        pageResult.setTotalPage((int) Math.ceil(((double) pageResult.getTotal() / pageResult.getPagesize())));
        return pageResult;
    }

    public int update(Yjslog record) {
        return yjslogMapper.update(record);
    }

    public int delete(Integer id) {
        return yjslogMapper.delete(id);
    }

    public List<Yjslog> all() {
		// TODO Auto-generated method stub
		return yjslogMapper.page(new PageSearchParam());
	}

}
