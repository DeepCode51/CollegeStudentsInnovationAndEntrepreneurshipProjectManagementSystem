/**
 *
 */
package com.ognice.service;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Preuser;

import java.util.List;

/**
 * 用户管理 service接口类
 **/
public interface IPreuserService {
    //根据id获取
    public Preuser getPreuserById(Integer id);

    //保存入库
    public String save(Preuser record);

    //获取全部数据
    public List<Preuser> all();

    public List<Preuser> allByType(int type);

    //分页获取
    public PageResult getPages(PageSearchParam param);

    //更新
    public int update(Preuser record);

    //删除
    public int delete(Integer id);

    public Preuser login(String username, String password);

}
