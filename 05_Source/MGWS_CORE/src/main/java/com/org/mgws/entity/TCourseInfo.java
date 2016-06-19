package com.org.mgws.entity;

import java.util.Date;

import com.org.mgws.base.entity.BaseEntity;

public class TCourseInfo extends BaseEntity {

	private static final long serialVersionUID = -2119745425224550708L;

	private Long no;

    private String courseno;

    private Date releasedate;
    private String releasedate_v;

    private String releaseflg;
    private String releaseflg_v;

    private String coursename;
    
    private String coursepic;

    private Date addtimestamp;

    private String adduserkey;

    private Date updtimestamp;

    private String upduserkey;

    private String updpgmid;

    private String coursedetails;

    public String getReleasedate_v() {
		return releasedate_v;
	}

	public void setReleasedate_v(String releasedate_v) {
		this.releasedate_v = releasedate_v;
	}

	public String getCoursepic() {
		return coursepic;
	}

	public void setCoursepic(String coursepic) {
		this.coursepic = coursepic;
	}

	public Long getNo() {
        return no;
    }

    public void setNo(Long no) {
        this.no = no;
    }

    public String getCourseno() {
        return courseno;
    }

    public void setCourseno(String courseno) {
        this.courseno = courseno;
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

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename;
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

    public String getReleaseflg_v() {
		return releaseflg_v;
	}

	public void setReleaseflg_v(String releaseflg_v) {
		this.releaseflg_v = releaseflg_v;
	}

	public String getUpdpgmid() {
        return updpgmid;
    }

    public void setUpdpgmid(String updpgmid) {
        this.updpgmid = updpgmid;
    }

    public String getCoursedetails() {
        return coursedetails;
    }

    public void setCoursedetails(String coursedetails) {
        this.coursedetails = coursedetails;
    }
}