package com.ognice.dao;

import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.User;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);


    User selectByPrimaryKey(Integer id);

    User selectByUsername(String u);

    User login(String u, String p);

    int updateByPrimaryKeySelective(User record);
/*
    <select id="login" resultMap="BaseResultMap">
    select
            <include refid="Base_Column_List" />
            from `preuser` where username = #{0} AND password = #{1} limit 0,1
    </select>
    */
    List<User> page(PageSearchParam param);


}