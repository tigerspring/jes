package com.jes.wms.web.beans;

import java.util.Date;

public class Resource {
	
	private Integer iKey;
	private String root_Name;
	private String menu1_Name;
	private String menu2_Name;
	private String url;
	private Boolean status;
	private String org;
	private String createBy;
	private Date createDate;
	private String updateBy;
	private Date updateDate;
	private Integer group_iKey;
	
	public Resource(){
		
		
		
	}

	Resource(Integer iKey, String root_Name, String menu1_Name,
			String menu2_Name, String url, Boolean status, String org,
			String createBy, Date createDate, String updateBy, Date updateDate,
			Integer group_iKey) {
		super();
		this.iKey = iKey;
		this.root_Name = root_Name;
		this.menu1_Name = menu1_Name;
		this.menu2_Name = menu2_Name;
		this.url = url;
		this.status = status;
		this.org = org;
		this.createBy = createBy;
		this.createDate = createDate;
		this.updateBy = updateBy;
		this.updateDate = updateDate;
		this.group_iKey = group_iKey;
	}

	public Integer getiKey() {
		return iKey;
	}

	public void setiKey(Integer iKey) {
		this.iKey = iKey;
	}

	public String getRoot_Name() {
		return root_Name;
	}

	public void setRoot_Name(String root_Name) {
		this.root_Name = root_Name;
	}

	public String getMenu1_Name() {
		return menu1_Name;
	}

	public void setMenu1_Name(String menu1_Name) {
		this.menu1_Name = menu1_Name;
	}

	public String getMenu2_Name() {
		return menu2_Name;
	}

	public void setMenu2_Name(String menu2_Name) {
		this.menu2_Name = menu2_Name;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
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

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getUpdateBy() {
		return updateBy;
	}

	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public Integer getGroup_iKey() {
		return group_iKey;
	}

	public void setGroup_iKey(Integer group_iKey) {
		this.group_iKey = group_iKey;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
