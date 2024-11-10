package com.ognice.dao;

import com.ognice.domain.Menu;

import java.util.List;

public interface MenuMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);

    public List<Menu> getAll();
    public List<Menu> getAllByType(int type);

    public List<Menu> getChilds(Long pid);
}