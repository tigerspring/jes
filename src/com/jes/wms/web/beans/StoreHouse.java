package com.jes.wms.web.beans;

import java.util.Date;

public class StoreHouse {
	private Integer iKey;
	private Integer warehouse_Ikey;
	private String code;
	private String name;
	private String description;
	private Boolean status;
	private String org;
	private String createBy;
	private Date createDate;
	private String updateBy;
	private Date updateDate;
	private Integer max_Qty;
	private String priority_Level;
	
	public StoreHouse(){
		
		
	}

	public StoreHouse(Integer iKey, Integer warehouse_Ikey, String code,
			String name, String description, Boolean status, String org,
			String createBy, Date createDate, String updateBy, Date updateDate,
			Integer max_Qty, String priority_Level) {
		super();
		this.iKey = iKey;
		this.warehouse_Ikey = warehouse_Ikey;
		this.code = code;
		this.name = name;
		this.description = description;
		this.status = status;
		this.org = org;
		this.createBy = createBy;
		this.createDate = createDate;
		this.updateBy = updateBy;
		this.updateDate = updateDate;
		this.max_Qty = max_Qty;
		this.priority_Level = priority_Level;
	}

	public Integer getiKey() {
		return iKey;
	}

	public void setiKey(Integer iKey) {
		this.iKey = iKey;
	}

	public Integer getWarehouse_Ikey() {
		return warehouse_Ikey;
	}

	public void setWarehouse_Ikey(Integer warehouse_Ikey) {
		this.warehouse_Ikey = warehouse_Ikey;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
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

	public Integer getMax_Qty() {
		return max_Qty;
	}

	public void setMax_Qty(Integer max_Qty) {
		this.max_Qty = max_Qty;
	}

	public String getPriority_Level() {
		return priority_Level;
	}

	public void setPriority_Level(String priority_Level) {
		this.priority_Level = priority_Level;
	}
	
	
	
	

	
	
	
	
}
