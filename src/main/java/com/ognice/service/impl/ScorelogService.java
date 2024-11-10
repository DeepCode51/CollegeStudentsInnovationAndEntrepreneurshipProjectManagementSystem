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
import com.ognice.dao.ScorelogMapper;
import com.ognice.domain.Scorelog;
import com.ognice.service.IScorelogService;
/**
*
*  service接口实现类
*
**/
@Service("scorelogService")
public class ScorelogService implements IScorelogService {
    @Resource
    private ScorelogMapper scorelogMapper;

    public Scorelog getScorelogById(Integer id) {
        return scorelogMapper.selectScorelogById(id);
    }

    public String save(Scorelog record) {
            if (1 == scorelogMapper.insert(record)) {
                return "添加成功";
            }
        return "添加失败";
    }

    public PageResult getPages(PageSearchParam param) {
        PageResult pageResult = new PageResult();
        pageResult.setPagesize(param.getPagesize());
        pageResult.setPage(param.getPage());
        param.setPage((param.getPage() - 1) * param.getPagesize());
        List<Scorelog> scorelogs = scorelogMapper.page(param);
        pageResult.setData(scorelogs);
        param.setPage(null);
        pageResult.setTotal(scorelogMapper.page(param).size());
        pageResult.setTotalPage((int) Math.ceil(((double) pageResult.getTotal() / pageResult.getPagesize())));
        return pageResult;
    }

    public int update(Scorelog record) {
        return scorelogMapper.update(record);
    }

    public int delete(Integer id) {
        return scorelogMapper.delete(id);
    }

    public List<Scorelog> all() {
		// TODO Auto-generated method stub
		return scorelogMapper.page(new PageSearchParam());
	}

}
