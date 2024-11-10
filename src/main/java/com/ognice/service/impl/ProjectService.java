/**
 *
 */
package com.ognice.service.impl;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.dao.ProjectMapper;
import com.ognice.domain.Project;
import com.ognice.service.IProjectService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * 项目管理 service接口实现类
 **/
@Service("projectService")
public class ProjectService implements IProjectService {
    @Resource
    private ProjectMapper projectMapper;

    public Project getProjectById(Integer id) {
        return projectMapper.selectProjectById(id);
    }

    public String save(Project record) {
        record.setStatus(0);
        record.setProcess(0);
        record.setCreated(new Date());
        if (1 == projectMapper.insert(record)) {
            return "添加成功";
        }
        return "添加失败";
    }

    public PageResult getPages(PageSearchParam param) {
        PageResult pageResult = new PageResult();
        pageResult.setPagesize(param.getPagesize());
        pageResult.setPage(param.getPage());
        param.setPage((param.getPage() - 1) * param.getPagesize());
        List<Project> projects = projectMapper.page(param);
        pageResult.setData(projects);
        param.setPage(null);
        pageResult.setTotal(projectMapper.page(param).size());
        pageResult.setTotalPage((int) Math.ceil(((double) pageResult.getTotal() / pageResult.getPagesize())));
        return pageResult;
    }

    public int update(Project record) {
        record.setUpdated(new Date());
        return projectMapper.update(record);
    }

    public int delete(Integer id) {
        return projectMapper.delete(id);
    }

    public List<Project> all() {
        // TODO Auto-generated method stub
        return projectMapper.page(new PageSearchParam());
    }

}
