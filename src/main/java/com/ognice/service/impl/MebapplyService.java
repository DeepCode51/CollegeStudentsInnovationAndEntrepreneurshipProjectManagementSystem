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
import com.ognice.dao.MebapplyMapper;
import com.ognice.domain.Mebapply;
import com.ognice.service.IMebapplyService;
/**
*
*  service接口实现类
*
**/
@Service("mebapplyService")
public class MebapplyService implements IMebapplyService {
    @Resource
    private MebapplyMapper mebapplyMapper;

    public Mebapply getMebapplyById(Integer id) {
        return mebapplyMapper.selectMebapplyById(id);
    }

    public String save(Mebapply record) {
            if (1 == mebapplyMapper.insert(record)) {
                return "添加成功";
            }
        return "添加失败";
    }

    public PageResult getPages(PageSearchParam param) {
        PageResult pageResult = new PageResult();
        pageResult.setPagesize(param.getPagesize());
        pageResult.setPage(param.getPage());
        param.setPage((param.getPage() - 1) * param.getPagesize());
        List<Mebapply> mebapplys = mebapplyMapper.page(param);
        pageResult.setData(mebapplys);
        param.setPage(null);
        pageResult.setTotal(mebapplyMapper.page(param).size());
        pageResult.setTotalPage((int) Math.ceil(((double) pageResult.getTotal() / pageResult.getPagesize())));
        return pageResult;
    }

    public int update(Mebapply record) {
        return mebapplyMapper.update(record);
    }

    public int delete(Integer id) {
        return mebapplyMapper.delete(id);
    }

    public List<Mebapply> all() {
		// TODO Auto-generated method stub
		return mebapplyMapper.page(new PageSearchParam());
	}

}
