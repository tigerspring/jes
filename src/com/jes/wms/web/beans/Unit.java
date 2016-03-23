package com.jes.wms.web.beans;

import java.util.Date;


public class Unit {
	// Fields
	private Integer iKey;
	private String unitcode;
	private String unit;
	private String unitdescription;
	private Boolean status;
	private String org;
	private String createBy;
	private String updateBy;
	private Date createDate;
	private Date updateDate;
	private Boolean isOutline;

	/** default constructor */
	public Unit() {
	}

	/** full constructor */
	public Unit(Integer iKey,String unitcode, String unit,
			String unitdescription, Boolean status, String org,
			String create_by, String update_by, Date create_date,
			Date update_date, Boolean isOutLine) {
		this.iKey = iKey;
		this.unit = unit;
		this.unitcode = unitcode;
		this.unitdescription = unitdescription;
		this.status = status;
		this.org = org;
		this.createBy = create_by;
		this.createDate = create_date;
		this.updateBy = update_by;
		this.updateDate = update_date;
		this.isOutline = isOutLine;
	}

	public Integer getiKey() {
		return iKey;
	}

	public void setiKey(Integer iKey) {
		this.iKey = iKey;
	}

	public String getUnit() {
		return this.unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getUnitcode() {
		return this.unitcode;
	}

	public void setUnitcode(String unitcode) {
		this.unitcode = unitcode;
	}

	public String getUnitdescription() {
		return this.unitdescription;
	}

	public void setUnitdescription(String unitdescription) {
		this.unitdescription = unitdescription;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public void setOrg(String org) {
		this.org = org;
	}

	public void setCreateBy(String create_by) {
		this.createBy = create_by;
	}

	public void setUpdateBy(String update_by) {
		this.updateBy = update_by;
	}

	public void setCreateDate(Date date) {
//		Date myDate = new Date();
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		String tmp = sdf.format(date);
//		try {
//			myDate = sdf.parse(tmp);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		this.createDate = myDate;
		this.createDate = date;
	}

	public void setUpdateDate(Date date) {
//		Date myDate = new Date();
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		String tmp = sdf.format(date);
//		try {
//			myDate = sdf.parse(tmp);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		this.updateDate = myDate;
		this.updateDate = date;
	}

	public void setIsOutline(Boolean isOutLine) {
		this.isOutline = isOutLine;
	}

	public Boolean getStatus() {
		return this.status;
	}

	public String getOrg() {
		return this.org;
	}

	public String getCreateBy() {
		return this.createBy;
	}

	public String getUpdateBy() {
		return this.updateBy;
	}

	public Date getCreateDate() {
//		Date myDate = new Date();
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		String tmp = sdf.format(this.createDate);
//		try {
//			myDate = sdf.parse(tmp);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		return this.createDate;
	}

	public Date getUpdateDate() {
//		Date myDate = new Date();
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		String tmp = sdf.format(this.updateDate);
//		try {
//			myDate = sdf.parse(tmp);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return myDate;
		return this.updateDate;
	}

	public Boolean getIsOutline() {
		return this.isOutline;
	}
}
