package com.org.mgws.entity;

import java.util.Date;

public class TRecruitmentInfo {
    private Long no;

    private String recruitno;

    private Date releasedate;

    private String releaseflg;

    private String recruitjobtitle;

    private Integer recruitnumber;

    private String recruitlocale;

    private String recruitobject;
    
    private String sortOrder;

    private Date addtimestamp;

    private String adduserkey;

    private Date updtimestamp;

    private String upduserkey;

    private String updpgmid;

    private String recruitdetails;

    public Long getNo() {
        return no;
    }

    public void setNo(Long no) {
        this.no = no;
    }

    public String getRecruitno() {
        return recruitno;
    }

    public void setRecruitno(String recruitno) {
        this.recruitno = recruitno;
    }

    public Date getReleasedate() {
        return releasedate;
    }

    public void setReleasedate(Date releasedate) {
        this.releasedate = releasedate;
    }

    public String getReleaseflg() {
        return releaseflg;
    }

    public void setReleaseflg(String releaseflg) {
        this.releaseflg = releaseflg;
    }

    public String getRecruitjobtitle() {
        return recruitjobtitle;
    }

    public void setRecruitjobtitle(String recruitjobtitle) {
        this.recruitjobtitle = recruitjobtitle;
    }

    public Integer getRecruitnumber() {
        return recruitnumber;
    }

    public void setRecruitnumber(Integer recruitnumber) {
        this.recruitnumber = recruitnumber;
    }

    public String getRecruitlocale() {
        return recruitlocale;
    }

    public void setRecruitlocale(String recruitlocale) {
        this.recruitlocale = recruitlocale;
    }

    public String getRecruitobject() {
        return recruitobject;
    }

    public void setRecruitobject(String recruitobject) {
        this.recruitobject = recruitobject;
    }

    public String getSortOrder() {
		return sortOrder;
	}

	public void setSortOrder(String sortOrder) {
		this.sortOrder = sortOrder;
	}

	public Date getAddtimestamp() {
        return addtimestamp;
    }

    public void setAddtimestamp(Date addtimestamp) {
        this.addtimestamp = addtimestamp;
    }

    public String getAdduserkey() {
        return adduserkey;
    }

    public void setAdduserkey(String adduserkey) {
        this.adduserkey = adduserkey;
    }

    public Date getUpdtimestamp() {
        return updtimestamp;
    }

    public void setUpdtimestamp(Date updtimestamp) {
        this.updtimestamp = updtimestamp;
    }

    public String getUpduserkey() {
        return upduserkey;
    }

    public void setUpduserkey(String upduserkey) {
        this.upduserkey = upduserkey;
    }

    public String getUpdpgmid() {
        return updpgmid;
    }

    public void setUpdpgmid(String updpgmid) {
        this.updpgmid = updpgmid;
    }

    public String getRecruitdetails() {
        return recruitdetails;
    }

    public void setRecruitdetails(String recruitdetails) {
        this.recruitdetails = recruitdetails;
    }
}