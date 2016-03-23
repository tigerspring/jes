package com.jes.wms.web.beans;

import java.util.Date;

public class Group {
	// Fields
	private Integer iKey;
	private String groupcode;
	private String groupname;
	private String groupdescription;
	private Boolean status;
	private String org;
	private String createBy;
	private String updateBy;
	private Date createDate;
	private Date updateDate;
	
	public Group() {}
	
	public Group(Integer iKey, String groupcode, String groupname,
			String groupdescription, Boolean status, String org,
			String createBy, String updateBy, Date createDate, Date updateDate) {
		super();
		this.iKey = iKey;
		this.groupcode = groupcode;
		this.groupname = groupname;
		this.groupdescription = groupdescription;
		this.status = status;
		this.org = org;
		this.createBy = createBy;
		this.updateBy = updateBy;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}
	
	public Integer getiKey() {
		return iKey;
	}
	public void setiKey(Integer iKey) {
		this.iKey = iKey;
	}
	public String getGroupcode() {
		return groupcode;
	}
	public void setGroupcode(String groupcode) {
		this.groupcode = groupcode;
	}
	public String getGroupname() {
		return groupname;
	}
	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}
	public String getGroupdescription() {
		return groupdescription;
	}
	public void setGroupdescription(String groupdescription) {
		this.groupdescription = groupdescription;
	}
	public Boolean getStatus() {
		return status;
	}
	public void setStatus(Boolean status) {
		this.status = status;
	}
	public String getOrg() {
		return org;
	}
	public void setOrg(String org) {
		this.org = org;
	}
	public String getCreateBy() {
		return createBy;
	}
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}
	public String getUpdateBy() {
		return updateBy;
	}
	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	
}
