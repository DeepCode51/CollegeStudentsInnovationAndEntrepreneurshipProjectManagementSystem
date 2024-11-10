package com.ognice.domain;

import java.util.Date;
/**
*
*  实体类
*
**/
public class Scorelog {
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

    private String score;

	public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
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

}