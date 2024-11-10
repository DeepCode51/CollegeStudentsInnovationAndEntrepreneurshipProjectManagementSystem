/**
 *
 */
package com.ognice.service.impl;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.dao.ProjectapplyMapper;
import com.ognice.domain.Projectapply;
import com.ognice.service.IProjectapplyService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
/**
*
* 申请书 service接口实现类
*
**/
@Service("projectapplyService")
public class ProjectapplyService implements IProjectapplyService {
    @Resource
    private ProjectapplyMapper projectapplyMapper;

    public Projectapply getProjectapplyById(Integer id) {
        return projectapplyMapper.selectProjectapplyById(id);
    }
    public Projectapply getProjectapplyByProjectId(Integer id) {
        return projectapplyMapper.selectProjectapplyByProjectId(id);
    }

    public String save(Projectapply record) {
            if (1 == projectapplyMapper.insert(record)) {
                return "添加成功";
            }
        return "添加失败";
    }

    public PageResult getPages(PageSearchParam param) {
        PageResult pageResult = new PageResult();
        pageResult.setPagesize(param.getPagesize());
        pageResult.setPage(param.getPage());
        param.setPage((param.getPage() - 1) * param.getPagesize());
        List<Projectapply> projectapplys = projectapplyMapper.page(param);
        pageResult.setData(projectapplys);
        param.setPage(null);
        pageResult.setTotal(projectapplyMapper.page(param).size());
        pageResult.setTotalPage((int) Math.ceil(((double) pageResult.getTotal() / pageResult.getPagesize())));
        return pageResult;
    }

    public int update(Projectapply record) {
        return projectapplyMapper.update(record);
    }

    public int delete(Integer id) {
        return projectapplyMapper.delete(id);
    }

    public List<Projectapply> all() {
		// TODO Auto-generated method stub
		return projectapplyMapper.page(new PageSearchParam());
	}

}
