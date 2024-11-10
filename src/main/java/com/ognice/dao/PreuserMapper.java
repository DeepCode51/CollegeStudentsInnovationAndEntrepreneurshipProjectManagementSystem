package com.ognice.dao;

import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Preuser;

import java.util.List;
/**
*
* 用户管理 dao类
*
**/
public interface PreuserMapper {
    int delete(Integer id);

    int insert(Preuser record);

    Preuser selectPreuserById(Integer id);

    int update(Preuser record);
    Preuser login(String username,String password);
    List<Preuser> page(PageSearchParam param);
}