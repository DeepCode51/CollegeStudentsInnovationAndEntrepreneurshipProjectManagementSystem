/**
 *
 */
package com.ognice.service.impl;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.dao.UserMapper;
import com.ognice.domain.User;
import com.ognice.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service("userService")
public class UserService implements IUserService {
    @Resource
    private UserMapper userMapper;

    public User getUserById(Integer userId) {
        // TODO Auto-generated method stub
        return userMapper.selectByPrimaryKey(userId);
    }

    public User login(String u, String p) {
        return userMapper.login(u, p);
    }


    public String save(User u) {
        if (null != userMapper.selectByUsername(u.getUsername())) {
            return "用户名已存在";
        } else {
            u.setStatus(0);
            u.setCreated(new Date());
            if (1 == userMapper.insert(u)) {
                return "添加成功";
            }
        }
        return "添加失败";
    }

    public PageResult getPages(PageSearchParam param) {
        PageResult pageResult = new PageResult();
        pageResult.setPagesize(param.getPagesize());
        pageResult.setPage(param.getPage());
        param.setPage((param.getPage() - 1) * param.getPagesize());
        List<User> users = userMapper.page(param);
        pageResult.setData(users);
        param.setPage(null);
        pageResult.setTotal(userMapper.page(param).size());
        pageResult.setTotalPage((int) Math.ceil(((double) pageResult.getTotal() / pageResult.getPagesize())));
        return pageResult;
    }

    public int update(User u) {
        // TODO Auto-generated method stub
        return userMapper.updateByPrimaryKeySelective(u);
    }
    public int delete(Integer id) {
        return userMapper.deleteByPrimaryKey(id);
    }

    public List<User> all() {
        // TODO Auto-generated method stub
        return userMapper.page(new PageSearchParam());
    }
}
