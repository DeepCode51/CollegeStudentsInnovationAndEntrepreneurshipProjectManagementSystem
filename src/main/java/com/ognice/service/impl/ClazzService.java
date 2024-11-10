/**
 *
 */
package com.ognice.service.impl;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.dao.ClazzMapper;
import com.ognice.domain.Clazz;
import com.ognice.service.IClazzService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
/**
*
* 班级管理 service接口实现类
*
**/
@Service("clazzService")
public class ClazzService implements IClazzService {
    @Resource
    private ClazzMapper clazzMapper;

    public Clazz getClazzById(Integer id) {
        return clazzMapper.selectClazzById(id);
    }

    public String save(Clazz record) {
            if (1 == clazzMapper.insert(record)) {
                return "添加成功";
            }
        return "添加失败";
    }

    public PageResult getPages(PageSearchParam param) {
        PageResult pageResult = new PageResult();
        pageResult.setPagesize(param.getPagesize());
        pageResult.setPage(param.getPage());
        param.setPage((param.getPage() - 1) * param.getPagesize());
        List<Clazz> clazzs = clazzMapper.page(param);
        pageResult.setData(clazzs);
        param.setPage(null);
        pageResult.setTotal(clazzMapper.page(param).size());
        pageResult.setTotalPage((int) Math.ceil(((double) pageResult.getTotal() / pageResult.getPagesize())));
        return pageResult;
    }

    public int update(Clazz record) {
        return clazzMapper.update(record);
    }

    public int delete(Integer id) {
        return clazzMapper.delete(id);
    }

    public List<Clazz> all() {
		// TODO Auto-generated method stub
		return clazzMapper.page(new PageSearchParam());
	}

}
