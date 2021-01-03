package com.sqr.co.bean;

import java.util.Date;

public class Fileinfo {
    private Integer id;

    private String filename;

    private String filesuffix;

    private String filepath;

    private String filecdnurl;

    private Integer securitycategory;

    private Long filesize;

    private Integer createuser;

    private Date createtime;

    private Integer updateuser;

    private Date updatetime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename == null ? null : filename.trim();
    }

    public String getFilesuffix() {
        return filesuffix;
    }

    public void setFilesuffix(String filesuffix) {
        this.filesuffix = filesuffix == null ? null : filesuffix.trim();
    }

    public String getFilepath() {
        return filepath;
    }

    public void setFilepath(String filepath) {
        this.filepath = filepath == null ? null : filepath.trim();
    }

    public String getFilecdnurl() {
        return filecdnurl;
    }

    public void setFilecdnurl(String filecdnurl) {
        this.filecdnurl = filecdnurl == null ? null : filecdnurl.trim();
    }

    public Integer getSecuritycategory() {
        return securitycategory;
    }

    public void setSecuritycategory(Integer securitycategory) {
        this.securitycategory = securitycategory;
    }

    public Long getFilesize() {
        return filesize;
    }

    public void setFilesize(Long filesize) {
        this.filesize = filesize;
    }

    public Integer getCreateuser() {
        return createuser;
    }

    public void setCreateuser(Integer createuser) {
        this.createuser = createuser;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Integer getUpdateuser() {
        return updateuser;
    }

    public void setUpdateuser(Integer updateuser) {
        this.updateuser = updateuser;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }
}