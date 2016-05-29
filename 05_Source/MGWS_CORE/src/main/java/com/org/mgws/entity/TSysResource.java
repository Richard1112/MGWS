package com.org.mgws.entity;

public class TSysResource {
    private Long id;

    private String resourcename;

    private String resourcetype;

    private String resourceurl;

    private Long parentresourceid;

    private String parentresourceids;

    private String resourcepermission;

    private String resourceavailable;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getResourcename() {
        return resourcename;
    }

    public void setResourcename(String resourcename) {
        this.resourcename = resourcename;
    }

    public String getResourcetype() {
        return resourcetype;
    }

    public void setResourcetype(String resourcetype) {
        this.resourcetype = resourcetype;
    }

    public String getResourceurl() {
        return resourceurl;
    }

    public void setResourceurl(String resourceurl) {
        this.resourceurl = resourceurl;
    }

    public Long getParentresourceid() {
        return parentresourceid;
    }

    public void setParentresourceid(Long parentresourceid) {
        this.parentresourceid = parentresourceid;
    }

    public String getParentresourceids() {
        return parentresourceids;
    }

    public void setParentresourceids(String parentresourceids) {
        this.parentresourceids = parentresourceids;
    }

    public String getResourcepermission() {
        return resourcepermission;
    }

    public void setResourcepermission(String resourcepermission) {
        this.resourcepermission = resourcepermission;
    }

    public String getResourceavailable() {
        return resourceavailable;
    }

    public void setResourceavailable(String resourceavailable) {
        this.resourceavailable = resourceavailable;
    }
}