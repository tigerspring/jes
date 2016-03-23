package com.jes.wms.web.action;

import java.util.Collections;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public abstract class IJqGridAction<T> extends ActionSupport implements ModelDriven<T>{
	//��jqGrid�����صĲ������� 
	private List<T> gridModel = Collections.emptyList();
	private Integer rows=0;
	private Integer records =0;	
	private Integer page =0;
	private Integer total =0;
	private String sord;
	private String sidx;
	private String search;
	protected String oper;
	
	public abstract int getResultSize();
	public abstract List<T> listResults(int from, int length);	   
	
	public String refreshGridModel(){
		try{			
			//�ܼ�¼��
			records = this.getResultSize();
			//page:��ǰҳ����rows��ÿҳ�ļ�¼����total����ָһ���ж���ҳ
			int from = rows *(page -1);
			int length = rows;
			//��ʾ��ǰҳ���е����м�¼��
			this.setGridModel(this.listResults(from, length));		
			//���rows��0�Ļ��ᱨ��
			total = (int)Math.ceil((double)records/(double)rows);			
			return "success";
		}catch(Exception e){
			e.printStackTrace();
			this.addActionError(e.getMessage());
			return "error";
		}
	}
		
	public List<T> getGridModel() {
		return gridModel;
	}

	public void setGridModel(List<T> gridModel) {
		this.gridModel = gridModel;
	}

	public Integer getRows() {
		return rows;
	}

	public void setRows(Integer rows) {
		this.rows = rows;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getRecord() {
		return records;
	}

	public void setRecord(Integer records) {
		this.records = records;
	}

	public String getSord() {
		return sord;
	}

	public void setSord(String sord) {
		this.sord = sord;
	}

	public String getSidx() {
		return sidx;
	}

	public void setSidx(String sidx) {
		this.sidx = sidx;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public void setOper(String oper){
		this.oper = oper;
	}
	
	public String getOper(){
		return this.oper;
	}
	
} 
