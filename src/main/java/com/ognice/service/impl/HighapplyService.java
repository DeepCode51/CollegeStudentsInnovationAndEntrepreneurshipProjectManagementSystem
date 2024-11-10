/**
 *
 */
package com.ognice.service.impl;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.dao.HighapplyMapper;
import com.ognice.domain.Highapply;
import com.ognice.service.IHighapplyService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
/**
*
* 省级申请书 service接口实现类
*
**/
@Service("highapplyService")
public class HighapplyService implements IHighapplyService {
    @Resource
    private HighapplyMapper highapplyMapper;

    public Highapply getHighapplyById(Integer id) {
        return highapplyMapper.selectHighapplyById(id);
    }
    public Highapply getHighapplyByProId(Integer id) {
        return highapplyMapper.selectHighapplyByProId(id);
    }
    public String save(Highapply record) {
            if (1 == highapplyMapper.insert(record)) {
                return "添加成功";
            }
        return "添加失败";
    }

    public PageResult getPages(PageSearchParam param) {
        PageResult pageResult = new PageResult();
        pageResult.setPagesize(param.getPagesize());
        pageResult.setPage(param.getPage());
        param.setPage((param.getPage() - 1) * param.getPagesize());
        List<Highapply> highapplys = highapplyMapper.page(param);
        pageResult.setData(highapplys);
        param.setPage(null);
        pageResult.setTotal(highapplyMapper.page(param).size());
        pageResult.setTotalPage((int) Math.ceil(((double) pageResult.getTotal() / pageResult.getPagesize())));
        return pageResult;
    }

    public int update(Highapply record) {
        return highapplyMapper.update(record);
    }

    public int delete(Integer id) {
        return highapplyMapper.delete(id);
    }

    public List<Highapply> all() {
		// TODO Auto-generated method stub
		return highapplyMapper.page(new PageSearchParam());
	}

}
