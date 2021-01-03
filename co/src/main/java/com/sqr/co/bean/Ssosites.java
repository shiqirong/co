package com.sqr.co.bean;

import java.util.Date;

public class Ssosites {
    private Integer id;

    private String sitecode;

    private String sitename;

    private String siteurl;

    private String siteloginurl;

    private String sitelogouturl;

    private Date createtime;

    private Integer createuser;

    private Date updatetime;

    private Integer updateuser;

    private Date deletetime;

    private Integer deleteuser;

    private Byte isdeleted;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSitecode() {
        return sitecode;
    }

    public void setSitecode(String sitecode) {
        this.sitecode = sitecode == null ? null : sitecode.trim();
    }

    public String getSitename() {
        return sitename;
    }

    public void setSitename(String sitename) {
        this.sitename = sitename == null ? null : sitename.trim();
    }

    public String getSiteurl() {
        return siteurl;
    }

    public void setSiteurl(String siteurl) {
        this.siteurl = siteurl == null ? null : siteurl.trim();
    }

    public String getSiteloginurl() {
        return siteloginurl;
    }

    public void setSiteloginurl(String siteloginurl) {
        this.siteloginurl = siteloginurl == null ? null : siteloginurl.trim();
    }

    public String getSitelogouturl() {
        return sitelogouturl;
    }

    public void setSitelogouturl(String sitelogouturl) {
        this.sitelogouturl = sitelogouturl == null ? null : sitelogouturl.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Integer getCreateuser() {
        return createuser;
    }

    public void setCreateuser(Integer createuser) {
        this.createuser = createuser;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    public Integer getUpdateuser() {
        return updateuser;
    }

    public void setUpdateuser(Integer updateuser) {
        this.updateuser = updateuser;
    }

    public Date getDeletetime() {
        return deletetime;
    }

    public void setDeletetime(Date deletetime) {
        this.deletetime = deletetime;
    }

    public Integer getDeleteuser() {
        return deleteuser;
    }

    public void setDeleteuser(Integer deleteuser) {
        this.deleteuser = deleteuser;
    }

    public Byte getIsdeleted() {
        return isdeleted;
    }

    public void setIsdeleted(Byte isdeleted) {
        this.isdeleted = isdeleted;
    }
}