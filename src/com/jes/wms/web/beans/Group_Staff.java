package com.jes.wms.web.beans;

import java.util.Date;

public class Group_Staff {
	private Integer iKey;
	private Integer staff_iKey;
	private Integer group_iKey;
	private Boolean status;
	private String org;
	private String createBy;
	private Date createDate;
	private String updateBy;
	private Date updateDate;
	
	
	
	public Group_Staff(){
		
		
	}
	
	public Group_Staff(Integer iKey, Integer staff_iKey, Integer group_iKey,
			Boolean status, String org, String createBy, Date createDate,
			String updateBy, Date updateDate) {
		super();
		this.iKey = iKey;
		this.staff_iKey = staff_iKey;
		this.group_iKey = group_iKey;
		this.status = status;
		this.org = org;
		this.createBy = createBy;
		this.createDate = createDate;
		this.updateBy = updateBy;
		this.updateDate = updateDate;
	}



	public Integer getiKey() {
		return iKey;
	}



	public void setiKey(Integer iKey) {
		this.iKey = iKey;
	}



	public Integer getStaff_iKey() {
		return staff_iKey;
	}



	public void setStaff_iKey(Integer staff_iKey) {
		this.staff_iKey = staff_iKey;
	}



	public Integer getGroup_iKey() {
		return group_iKey;
	}



	public void setGroup_iKey(Integer group_iKey) {
		this.group_iKey = group_iKey;
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
	
	
	
	
	
	
	

}
