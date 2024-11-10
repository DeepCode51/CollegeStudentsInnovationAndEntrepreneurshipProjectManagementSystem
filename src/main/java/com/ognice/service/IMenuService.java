package com.ognice.service;

import java.util.List;

import com.ognice.domain.Menu;
import java.util.List;

public interface IMenuService {
    public List<Menu> getAllMain();
    public List<Menu> getMenus(int type);
    public List<Menu> getChild(Long pid);
}
