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
import com.ognice.dao.XueyuanMapper;
import com.ognice.domain.Xueyuan;
import com.ognice.service.IXueyuanService;
/**
*
* 学院管理 service接口实现类
*
**/
@Service("xueyuanService")
public class XueyuanService implements IXueyuanService {
    @Resource
    private XueyuanMapper xueyuanMapper;

    public Xueyuan getXueyuanById(Integer id) {
        return xueyuanMapper.selectXueyuanById(id);
    }

    public String save(Xueyuan record) {
            if (1 == xueyuanMapper.insert(record)) {
                return "添加成功";
            }
        return "添加失败";
    }

    public PageResult getPages(PageSearchParam param) {
        PageResult pageResult = new PageResult();
        pageResult.setPagesize(param.getPagesize());
        pageResult.setPage(param.getPage());
        param.setPage((param.getPage() - 1) * param.getPagesize());
        List<Xueyuan> xueyuans = xueyuanMapper.page(param);
        pageResult.setData(xueyuans);
        param.setPage(null);
        pageResult.setTotal(xueyuanMapper.page(param).size());
        pageResult.setTotalPage((int) Math.ceil(((double) pageResult.getTotal() / pageResult.getPagesize())));
        return pageResult;
    }

    public int update(Xueyuan record) {
        return xueyuanMapper.update(record);
    }

    public int delete(Integer id) {
        return xueyuanMapper.delete(id);
    }

    public List<Xueyuan> all() {
		// TODO Auto-generated method stub
		return xueyuanMapper.page(new PageSearchParam());
	}

}
