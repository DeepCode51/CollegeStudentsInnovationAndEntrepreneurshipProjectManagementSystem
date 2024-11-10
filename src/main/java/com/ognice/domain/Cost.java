package com.ognice.domain;

import java.util.Date;
/**
*
*  实体类
*
**/
public class Cost {
    private Integer id;

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    private String amount;

	public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    private String cate;

	public String getCate() {
        return cate;
    }

    public void setCate(String cate) {
        this.cate = cate;
    }

    private String name;

	public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    private Date created;

	public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    private Integer preuserid;

	public Integer getPreuserid() {
        return preuserid;
    }

    public void setPreuserid(Integer preuserid) {
        this.preuserid = preuserid;
    }

    private String preusername;

	public String getPreusername() {
        return preusername;
    }

    public void setPreusername(String preusername) {
        this.preusername = preusername;
    }

    private Integer projectid;

	public Integer getProjectid() {
        return projectid;
    }

    public void setProjectid(Integer projectid) {
        this.projectid = projectid;
    }

    private String projectname;

	public String getProjectname() {
        return projectname;
    }

    public void setProjectname(String projectname) {
        this.projectname = projectname;
    }

    private Integer status;

	public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

}