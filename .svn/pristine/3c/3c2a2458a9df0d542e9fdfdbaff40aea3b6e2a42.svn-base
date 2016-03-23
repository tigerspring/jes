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

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;

import com.jes.wms.service.IBaseService;
import com.jes.wms.web.beans.Group;
import com.jes.wms.web.forms.GroupGrid;

public class ListGroupsAction extends IJqGridAction<GroupGrid>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5534425610344882721L;
	
	private IBaseService<Group> groupService;
	private GroupGrid groupGrid;
	
	@Override
	public GroupGrid getModel() {
		if(groupGrid == null){
			groupGrid = new GroupGrid();
		}
		return this.groupGrid;
	}

	public void setGroupService(IBaseService<Group> groupService) {
		this.groupService = groupService;
	}

	@Override
	public int getResultSize() {
		// TODO Auto-generated method stub
		return this.groupService.queryResultsCount();
	}

	public String listGroups() {
		// TODO Auto-generated method stub
		if (this.refreshGridModel() == "success") {
			try {
				formJsonArray(this.listResults(0,2070));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "success";
		}
		return "error";
	}

	public String add() {
		Group igroup = new Group();
		igroup = Grid2Group(groupGrid);
		if (this.groupService.addService(igroup) == false)
			return "error";
		return SUCCESS;
	}

	public String edit() {
		Group igroup = new Group();
		igroup = Grid2Group(groupGrid);
		igroup.setCreateBy(getOper());
		igroup.setCreateDate(new Date());
		if (this.groupService.modifyService(igroup) == false)
			return "error";
		return SUCCESS;
	}

	public String del() {
		Group igroup = new Group();
		igroup = Grid2Group(groupGrid);
		igroup.setStatus(false);
		igroup.setUpdateBy(getOper());
		igroup.setUpdateDate(new Date());
		if (this.groupService.delService(igroup) == false)
			return "error";
		return SUCCESS;
	}

	@Override
	public List<GroupGrid> listResults(int from, int length) {
		// TODO Auto-generated method stub
		List<Group> groups = Collections.emptyList();
		groups = this.groupService.queryByPage(from, length);
		List<GroupGrid> grids = new LinkedList<GroupGrid>();
		for (int i = 0; i < groups.size(); i++) {
			GroupGrid grid = new GroupGrid();
			grid.setIkey(groups.get(i).getiKey()+"");
			grid.setGroupcode(groups.get(i).getGroupcode());
			grid.setGroupname(groups.get(i).getGroupname());
			grid.setGroupdescription(groups.get(i).getGroupdescription());
			grids.add(grid);
		}
		return grids;
	}

	private Group Grid2Group(GroupGrid grid) {
		Group group = new Group();
		if(StringUtils.isNotBlank(grid.getIkey())){
			group.setiKey(Integer.parseInt(grid.getIkey()));
		}
		group.setGroupcode(grid.getGroupcode());
		group.setGroupdescription(grid.getGroupdescription());
		group.setGroupname(grid.getGroupname());
		group.setStatus(true);
		return group;
	}

	private void formJsonArray(List<GroupGrid> data) throws IOException {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		// 处理日期问题
		JSONArray jsonArray = JSONArray.fromObject(data);
		JSONObject json = new JSONObject();
		json.accumulate("gridModel", jsonArray);
		System.out.println(jsonArray);
		out.print(jsonArray.toString());// 将JSON数据返回页面
		out.flush();
		out.close();
	}

}
