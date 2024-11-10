package com.ognice.domain;

import java.util.Date;
/**
*
*  实体类
*
**/
public class Files {
    private Integer id;

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    private String fileurl;

	public String getFileurl() {
        return fileurl;
    }

    public void setFileurl(String fileurl) {
        this.fileurl = fileurl;
    }

    private String name;

	public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

}