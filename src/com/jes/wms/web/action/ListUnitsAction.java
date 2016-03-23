package com.jes.wms.web.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;
import com.jes.wms.common.JsonDateValueProcessor;
import com.jes.wms.service.IBaseService;
import com.jes.wms.web.beans.Unit;
import com.jes.wms.web.forms.UnitGrid;
import com.opensymphony.xwork2.ActionContext;

@SuppressWarnings("serial")
public class ListUnitsAction extends IJqGridAction<UnitGrid>{
    private IBaseService<Unit> unitService;
    private UnitGrid grid;
	private String id;	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setUnitService(IBaseService<Unit> unitService) {
		this.unitService = unitService;
	}	
	@Override
	public UnitGrid getModel(){
		if(grid == null){
			grid = new UnitGrid();
		}
		return grid;
	}
	private UnitGrid Unit2Grid(Unit unit){
		UnitGrid grid = new UnitGrid();
		grid.setiKey(unit.getiKey());
		grid.setUnit(unit.getUnit());
		grid.setUnitcode(unit.getUnitcode());
		grid.setUnitdescription(unit.getUnitdescription());
		grid.setUpdateDate(unit.getUpdateDate());
		if (ActionContext.getContext().getSession().get("usercode") == null) {
			grid.setUsercode("");
		} else {
			grid.setUsercode(ActionContext.getContext().getSession()
					.get("usercode").toString());
		}
		grid.setUsername(ActionContext.getContext().getSession()
				.get("username").toString());
		return grid;		
	}
	private Unit Grid2Unit(UnitGrid grid){
		Unit unit = new Unit();
		if(StringUtils.isNotBlank(getId())&&!"_empty".equals(getId())){
			unit.setiKey(Integer.parseInt(getId()));
		}
		unit.setUnit(grid.getUnit());
		unit.setUnitcode(grid.getUnitcode());
		unit.setUnitdescription(grid.getUnitdescription());
		Date date = new Date();
		unit.setUpdateDate(date);
		unit.setCreateDate(date);
		unit.setCreateBy(ActionContext.getContext().getSession()
				.get("username").toString());
		unit.setUpdateBy(ActionContext.getContext().getSession()
				.get("username").toString());
		unit.setIsOutline(true);
		unit.setOrg("JES");
		unit.setStatus(true);
		return unit;
	}
	
	@Override
	public int getResultSize() {
		// TODO Auto-generated method stub
		return this.unitService.queryResultsCount();
	}

	
	@Override
	public List<UnitGrid> listResults(int from, int length) {
		// TODO Auto-generated method stub
		List<Unit> lUnits = Collections.emptyList();
		lUnits = this.unitService.queryByPage(from, length);
		List<UnitGrid> lUnitGrids = new LinkedList<UnitGrid>();
		UnitGrid grid = new UnitGrid();
		for(int i=0;i<lUnits.size();i++){
			grid = Unit2Grid(lUnits.get(i));
			lUnitGrids.add(grid);
		}
		return lUnitGrids;
	}


	public String listUnits() {
		// TODO Auto-generated method stub
		if (super.refreshGridModel() == "success") {
			try {
				formJsonArray(this.getGridModel());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "success";
		}
		return "error";
	}	

	public String add(){
		Unit iunit = new Unit();
		iunit = Grid2Unit(grid);
		if (this.unitService.addService(iunit) == false) 
			return "error";
		return SUCCESS;
	}
	
	public String edit(){
		/*HttpServletRequest request = ServletActionContext.getRequest();
		String value = request.getParameter("id");*/
		Unit iunit = new Unit();
		iunit = Grid2Unit(grid);
		if(this.unitService.modifyService(iunit) == false)//,value) == false)
			return "error";		 
		return SUCCESS;
	}
	
	public String del(){
		/*HttpServletRequest request = ServletActionContext.getRequest();
		String value = request.getParameter("id");*/
		Unit iunit = new Unit();
		iunit = Grid2Unit(grid);
		if(this.unitService.delService(iunit) == false)
			return "error";
		return SUCCESS;
	}

	private void formJsonArray(List<UnitGrid> data) throws IOException {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		// 处理日期问题
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.registerJsonValueProcessor(Date.class,
				new JsonDateValueProcessor());
		JSONArray jsonArray = JSONArray.fromObject(data, jsonConfig);
		JSONObject json = new JSONObject();
		json.accumulate("gridModel", jsonArray);
		out.print(jsonArray.toString());//将JSON数据返回页面
		out.flush();
		out.close();
	}
	
}
