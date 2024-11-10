/**
 *
 */
package com.ognice.service.impl;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.dao.CommentMapper;
import com.ognice.domain.Comment;
import com.ognice.service.ICommentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
/**
*
* 反馈管理 service接口实现类
*
**/
@Service("commentService")
public class CommentService implements ICommentService {
    @Resource
    private CommentMapper commentMapper;

    public Comment getCommentById(Integer id) {
        return commentMapper.selectCommentById(id);
    }

    public String save(Comment record) {
            if (1 == commentMapper.insert(record)) {
                return "添加成功";
            }
        return "添加失败";
    }

    public PageResult getPages(PageSearchParam param) {
        PageResult pageResult = new PageResult();
        pageResult.setPagesize(param.getPagesize());
        pageResult.setPage(param.getPage());
        param.setPage((param.getPage() - 1) * param.getPagesize());
        List<Comment> comments = commentMapper.page(param);
        pageResult.setData(comments);
        param.setPage(null);
        pageResult.setTotal(commentMapper.page(param).size());
        pageResult.setTotalPage((int) Math.ceil(((double) pageResult.getTotal() / pageResult.getPagesize())));
        return pageResult;
    }

    public int update(Comment record) {
        return commentMapper.update(record);
    }

    public int delete(Integer id) {
        return commentMapper.delete(id);
    }

    public List<Comment> all() {
		// TODO Auto-generated method stub
		return commentMapper.page(new PageSearchParam());
	}

}
