package com.ognice.domain;

import java.util.Date;
/**
*
* 反馈管理 实体类
*
**/
public class Comment {
    private Integer id;

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    private String comment;

	public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
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

    private Integer type;

	public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    private Integer oid;

	public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    private String oname;

	public String getOname() {
        return oname;
    }

    public void setOname(String oname) {
        this.oname = oname;
    }

}