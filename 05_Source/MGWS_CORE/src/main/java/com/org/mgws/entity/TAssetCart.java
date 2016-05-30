package com.org.mgws.entity;

import java.util.Date;

public class TAssetCart {
    private Long no;

    private String partnerno;

    private Date releasedate;

    private String releaseflg;

    private String assetname;

    private Date addtimestamp;

    private String adduserkey;

    private Date updtimestamp;

    private String upduserkey;

    private String updpgmid;

    private String assetdetails;

    public Long getNo() {
        return no;
    }

    public void setNo(Long no) {
        this.no = no;
    }

    public String getPartnerno() {
        return partnerno;
    }

    public void setPartnerno(String partnerno) {
        this.partnerno = partnerno;
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

    public String getAssetname() {
        return assetname;
    }

    public void setAssetname(String assetname) {
        this.assetname = assetname;
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

    public String getAssetdetails() {
        return assetdetails;
    }

    public void setAssetdetails(String assetdetails) {
        this.assetdetails = assetdetails;
    }
}