package com.ognice.domain;

import java.util.Date;
/**
*
* 专业管理 实体类
*
**/
public class Pro {
    private Integer id;

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    private String name;

	public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    private Integer xueyuanid;

	public Integer getXueyuanid() {
        return xueyuanid;
    }

    public void setXueyuanid(Integer xueyuanid) {
        this.xueyuanid = xueyuanid;
    }

    private String xueyuanname;

	public String getXueyuanname() {
        return xueyuanname;
    }

    public void setXueyuanname(String xueyuanname) {
        this.xueyuanname = xueyuanname;
    }

    private String desc;

	public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

}