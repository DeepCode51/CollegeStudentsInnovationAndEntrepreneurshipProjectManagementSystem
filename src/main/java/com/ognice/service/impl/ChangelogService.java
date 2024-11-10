/**
 *
 */
package com.ognice.service.impl;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.dao.ChangelogMapper;
import com.ognice.domain.Changelog;
import com.ognice.service.IChangelogService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
/**
*
* 变更记录 service接口实现类
*
**/
@Service("changelogService")
public class ChangelogService implements IChangelogService {
    @Resource
    private ChangelogMapper changelogMapper;

    public Changelog getChangelogById(Integer id) {
        return changelogMapper.selectChangelogById(id);
    }
    public Changelog getChangelogByProId(Integer id) {
        return changelogMapper.selectChangelogByProId(id);
    }
    public String save(Changelog record) {
            if (1 == changelogMapper.insert(record)) {
                return "添加成功";
            }
        return "添加失败";
    }

    public PageResult getPages(PageSearchParam param) {
        PageResult pageResult = new PageResult();
        pageResult.setPagesize(param.getPagesize());
        pageResult.setPage(param.getPage());
        param.setPage((param.getPage() - 1) * param.getPagesize());
        List<Changelog> changelogs = changelogMapper.page(param);
        pageResult.setData(changelogs);
        param.setPage(null);
        pageResult.setTotal(changelogMapper.page(param).size());
        pageResult.setTotalPage((int) Math.ceil(((double) pageResult.getTotal() / pageResult.getPagesize())));
        return pageResult;
    }

    public int update(Changelog record) {
        return changelogMapper.update(record);
    }

    public int delete(Integer id) {
        return changelogMapper.delete(id);
    }

    public List<Changelog> all() {
		// TODO Auto-generated method stub
		return changelogMapper.page(new PageSearchParam());
	}

}
