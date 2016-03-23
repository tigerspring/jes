package com.jes.wms.web.action;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;

import com.jes.wms.service.IBaseService;
import com.jes.wms.web.beans.Material;
import com.jes.wms.web.forms.MaterialGrid;

public class ListMaterialAction extends IJqGridAction<MaterialGrid> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private IBaseService<Material> materialService;	
	private String id="";
	private String  materialwuzhi=null;
	private Integer materialnumber=null;
	private String materialguige=null;
	private String materialdangwei=null;
	private Double materialprice=null;
	private Double materialjine=null;
	private String materialgongying=null;
	
	
	
	public IBaseService<Material> getMaterialService() {
		return materialService;
	}

	public void setMaterialService(IBaseService<Material> materialService) {
		this.materialService = materialService;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}


	public String getMaterialwuzhi() {
		return materialwuzhi;
	}

	public void setMaterialwuzhi(String materialwuzhi) {
		this.materialwuzhi = materialwuzhi;
	}

	public Integer getMaterialnumber() {
		return materialnumber;
	}

	public void setMaterialnumber(Integer materialnumber) {
		this.materialnumber = materialnumber;
	}

	public String getMaterialguige() {
		return materialguige;
	}

	public void setMaterialguige(String materialguige) {
		this.materialguige = materialguige;
	}

	public String getMaterialdangwei() {
		return materialdangwei;
	}

	public void setMaterialdangwei(String materialdangwei) {
		this.materialdangwei = materialdangwei;
	}

	public Double getMaterialprice() {
		return materialprice;
	}

	public void setMaterialprice(Double materialprice) {
		this.materialprice = materialprice;
	}

	public Double getMaterialjine() {
		return materialjine;
	}

	public void setMaterialjine(Double materialjine) {
		this.materialjine = materialjine;
	}

	public String getMaterialgongying() {
		return materialgongying;
	}

	public void setMaterialgongying(String materialgongying) {
		this.materialgongying = materialgongying;
	}

	
	
	@Override
	public int getResultSize() {
		// TODO Auto-generated method stub
		return this.materialService.queryResultsCount();
	}
	
	
	
	public String listMaterials(){
		
		if( this.refreshGridModel()=="success"){

			try {
				formJsonArray(this.getGridModel());
				
			} catch (IOException e) {
				
				// TODO: handle exception
				e.printStackTrace();
			}
			
			return "success";
		}
		
		return "error";
		
	}
	
	public String add(){
		MaterialGrid mg=new MaterialGrid();
		Material ml = new Material();
		mg.setMaterialwuzhi(materialwuzhi);
		mg.setMaterialnumber(materialnumber);
		mg.setMaterialguige(materialguige);
		mg.setMaterialdangwei(materialdangwei);
		mg.setMaterialprice(materialprice);
		mg.setMaterialjine(materialjine);
		mg.setMaterialgongying(materialgongying);
		
		ml=Grid2Material(mg);
		if(this.materialService.addService(ml)==false)
			
			return "error";
		
		return "SUCCESS";
		
	}
	
	public String edit(){
		MaterialGrid mg = new MaterialGrid();
		Material ml=new Material();
		mg.setMaterialikey("_empty".equals(id) ? -1:Integer.parseInt(id));
		mg.setMaterialwuzhi(materialwuzhi);
		mg.setMaterialnumber(materialnumber);
		mg.setMaterialguige(materialguige);
		mg.setMaterialdangwei(materialdangwei);
		mg.setMaterialprice(materialprice);
		mg.setMaterialjine(materialjine);
		mg.setMaterialgongying(materialgongying);
		
		ml=Grid2Material(mg);
		if(this.materialService.modifyService(ml)==false)
		
		return "error";
		
		
		
		return SUCCESS;
	}
	
	
	public String del(){
		MaterialGrid mg=new MaterialGrid();
		Material ml=new Material();
		
		mg.setMaterialikey("_empty".equals(id) ? -1 : Integer.parseInt(id));
		ml=Grid2Material(mg);
		if(this.materialService.delService(ml)==false)
		
		return "error";
		
		return SUCCESS;
		
		
	}
	

	@Override
	public List<MaterialGrid> listResults(int from, int length) {
		// TODO Auto-generated method stub
	List<Material> lm=Collections.emptyList();
	lm=this.materialService.queryByPage(from, length);
	List<MaterialGrid> grids = new LinkedList<MaterialGrid>();
	MaterialGrid grid = new MaterialGrid();
	for (int i = 0; i < lm.size(); i++) {
		grid.setMaterialwuzhi(lm.get(i).getWuzhi());
		grid.setMaterialnumber(lm.get(i).getNumber());
		grid.setMaterialguige(lm.get(i).getGuige());
		grid.setMaterialdangwei(lm.get(i).getDangwei());
		grid.setMaterialprice(lm.get(i).getPrice());
		grid.setMaterialjine(lm.get(i).getJine());
		grid.setMaterialgongying(lm.get(i).getGongying());
		grids.add(grid);
	}
	return grids;
}
	
	
	

	private Material Grid2Material(MaterialGrid mg) {
		// TODO Auto-generated method stub
		Material ml = new Material();
		ml.setIkey(mg.getMaterialikey());
		ml.setWuzhi(mg.getMaterialwuzhi());
		ml.setNumber(mg.getMaterialnumber());
		ml.setGuige(mg.getMaterialguige());
		ml.setDangwei(mg.getMaterialdangwei());
		ml.setPrice(mg.getMaterialprice());
		ml.setGongying(mg.getMaterialgongying());
		
		
		
		return ml;
	}

	private void formJsonArray(List<MaterialGrid> data) throws IOException {
		// TODO Auto-generated method stub
		
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		// 处理日期问题
		JSONArray jsonArray = JSONArray.fromObject(data);
		JSONObject json = new JSONObject();
		json.accumulate("gridModel", jsonArray);
		out.print(jsonArray.toString());// 将JSON数据返回页面
		out.flush();
		out.close();
		
	}

	@Override
	public MaterialGrid getModel() {
		// TODO Auto-generated method stub
		return null;
	}
}
