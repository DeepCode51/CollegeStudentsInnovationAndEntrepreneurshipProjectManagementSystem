package com.ognice.domain;

import java.util.Date;
/**
*
* 项目管理 实体类
*
**/
public class Project {
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

    private Integer userid;

	public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    private String username;

	public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    private String desc;

	public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    private Date updated;

	public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date updated) {
        this.updated = updated;
    }

    private Integer planid;

	public Integer getPlanid() {
        return planid;
    }

    public void setPlanid(Integer planid) {
        this.planid = planid;
    }

    private String planname;

	public String getPlanname() {
        return planname;
    }

    public void setPlanname(String planname) {
        this.planname = planname;
    }

    private Integer teaid;

	public Integer getTeaid() {
        return teaid;
    }

    public void setTeaid(Integer teaid) {
        this.teaid = teaid;
    }

    private String teaname;

	public String getTeaname() {
        return teaname;
    }

    public void setTeaname(String teaname) {
        this.teaname = teaname;
    }

    private Integer type;

	public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    private Integer parentid;

	public Integer getParentid() {
        return parentid;
    }

    public void setParentid(Integer parentid) {
        this.parentid = parentid;
    }

    private String parentname;

	public String getParentname() {
        return parentname;
    }

    public void setParentname(String parentname) {
        this.parentname = parentname;
    }

    private Integer process;

	public Integer getProcess() {
        return process;
    }

    public void setProcess(Integer process) {
        this.process = process;
    }

    private String pronum;

	public String getPronum() {
        return pronum;
    }

    public void setPronum(String pronum) {
        this.pronum = pronum;
    }

    private String deadline;

	public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
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

    private Integer ogstatus;

	public Integer getOgstatus() {
        return ogstatus;
    }

    public void setOgstatus(Integer ogstatus) {
        this.ogstatus = ogstatus;
    }

    private Integer ogprocess;

	public Integer getOgprocess() {
        return ogprocess;
    }

    public void setOgprocess(Integer ogprocess) {
        this.ogprocess = ogprocess;
    }

}