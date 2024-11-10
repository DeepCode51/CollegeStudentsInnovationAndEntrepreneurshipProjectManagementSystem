package com.ognice.domain;

import java.util.Date;
/**
*
* 创新计划管理 实体类
*
**/
public class Plan {
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

    private String desc;

	public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    private String fileurl;

	public String getFileurl() {
        return fileurl;
    }

    public void setFileurl(String fileurl) {
        this.fileurl = fileurl;
    }

    private Date created;

	public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    private Integer status;

	public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    private Integer type;

	public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    private Integer cate;

	public Integer getCate() {
        return cate;
    }

    public void setCate(Integer cate) {
        this.cate = cate;
    }

    private Date midsdate;

	public Date getMidsdate() {
        return midsdate;
    }

    public void setMidsdate(Date midsdate) {
        this.midsdate = midsdate;
    }

    private Date midedate;

	public Date getMidedate() {
        return midedate;
    }

    public void setMidedate(Date midedate) {
        this.midedate = midedate;
    }

    private Date endsdate;

	public Date getEndsdate() {
        return endsdate;
    }

    public void setEndsdate(Date endsdate) {
        this.endsdate = endsdate;
    }

    private Date endedate;

	public Date getEndedate() {
        return endedate;
    }

    public void setEndedate(Date endedate) {
        this.endedate = endedate;
    }

}