package com.ognice.service;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.User;

import java.util.List;

public interface IUserService {
    public User getUserById(Integer userId);

    public List<User> all();

    public User login(String u, String p);


    public String save(User u);

    public PageResult getPages(PageSearchParam param);

    public int update(User u);


    //删除
    public int delete(Integer id);
}
