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
import com.ognice.dao.FilesMapper;
import com.ognice.domain.Files;
import com.ognice.service.IFilesService;
/**
*
*  service接口实现类
*
**/
@Service("filesService")
public class FilesService implements IFilesService {
    @Resource
    private FilesMapper filesMapper;

    public Files getFilesById(Integer id) {
        return filesMapper.selectFilesById(id);
    }

    public String save(Files record) {
            if (1 == filesMapper.insert(record)) {
                return "添加成功";
            }
        return "添加失败";
    }

    public PageResult getPages(PageSearchParam param) {
        PageResult pageResult = new PageResult();
        pageResult.setPagesize(param.getPagesize());
        pageResult.setPage(param.getPage());
        param.setPage((param.getPage() - 1) * param.getPagesize());
        List<Files> filess = filesMapper.page(param);
        pageResult.setData(filess);
        param.setPage(null);
        pageResult.setTotal(filesMapper.page(param).size());
        pageResult.setTotalPage((int) Math.ceil(((double) pageResult.getTotal() / pageResult.getPagesize())));
        return pageResult;
    }

    public int update(Files record) {
        return filesMapper.update(record);
    }

    public int delete(Integer id) {
        return filesMapper.delete(id);
    }

    public List<Files> all() {
		// TODO Auto-generated method stub
		return filesMapper.page(new PageSearchParam());
	}

}
