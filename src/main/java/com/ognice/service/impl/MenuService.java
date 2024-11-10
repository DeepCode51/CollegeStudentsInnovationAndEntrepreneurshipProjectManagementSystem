/**
 *
 */
package com.ognice.service.impl;

import com.ognice.dao.MenuMapper;
import com.ognice.domain.Menu;
import com.ognice.service.IMenuService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("menuService")
public class MenuService implements IMenuService {
	@Resource
	private MenuMapper menuMapper;

	public List<Menu> getAllMain() {
		// TODO Auto-generated method stub
		return menuMapper.getAll();
	}

    public List<Menu> getMenus(int type) {
        // TODO Auto-generated method stub
        return menuMapper.getAllByType(type);
    }

	public List<Menu> getChild(Long pid) {
		// TODO Auto-generated method stub
		return menuMapper.getChilds(pid);
	}

}
