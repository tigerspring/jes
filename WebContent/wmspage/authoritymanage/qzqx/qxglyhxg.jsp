<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="addPowerUserWin" class="ui-jqdialog">
<fieldset style="border-color: #A6C9E2;">
<legend></legend>
<table style="width: 100%;">
<tbody>
<tr>
	<td align="center">
		<span style="font-size: 14px;">用户群组名称</span>
		<select disabled="disabled" >
		<option>aaa</option>
		<option>ccc</option>
		<option>bbb</option>
		<option>ddd</option>
		<option>eee</option>
		<option>fff</option>
		</select>
	</td>
</tr>
</tbody>
</table>
</fieldset>
<div style="height: 2%;"></div>
<fieldset style="height: 80%;border-color: #A6C9E2;">
<legend></legend>
<table style="width: 100%;height: 100%;border: 4px;">
<tbody>
	<tr>
		<td>
			<fieldset style="height: 100%;border-color: #A6C9E2;">
			<legend>可选择</legend>
			        <select multiple="multiple" id="select1" style="width:100%;height:98%;">
			            <option value="1">选项1</option>
			            <option value="2">选项2</option>
			            <option value="3">选项3</option>
			            <option value="4">选项4</option>
			            <option value="5">选项5</option>
			            <option value="6">选项6</option>
			            <option value="7">选项7</option>
			        </select>
			</fieldset>
		</td>
		<td align="center">
			<div>
				<button id="add">add</button>
		     </div>
		     <div style="height: 5%;"></div>
		    <div>
		        <button id="remove">remove</button>
		    </div>
		</td>
		<td>
			<fieldset style="height: 100%;border-color: #A6C9E2;">
			<legend>已选择</legend>
			        <select multiple="multiple" id="select2" style="width: 100%;height:98%;">
			            <option value="8">选项8</option>
			        </select>
			</fieldset>
		</td>
	</tr>
</tbody>
</table>
</fieldset>
<div style="height: 1%;"></div>
<table style="height: auto;width: 100%;" class="EditTable ui-common-table">
	<tbody>
		<tr>
			<td colspan="2"><hr class="ui-widget-content"
					style="margin: 1px">
			</td>
		</tr>
		<tr align="right">
			<td class="EditButton"><a id="sData"
				class="fm-button ui-state-default ui-corner-all fm-button-icon-left">提交<span
					class="ui-icon ui-icon-disk"></span>
			</a><a id="cData" href="javascript:void(0);"
				class="fm-button ui-state-default ui-corner-all fm-button-icon-left" onclick="closeWin();">取消<span
					class="ui-icon ui-icon-close"></span>
			</a>
			</td>
		</tr>
	</tbody>
</table>
</div>
<script type="text/javascript">
$(function(){
	//出事话弹出窗口
	$( "#addPowerUserWin" ).dialog({
		autoOpen: false,
		height: 650,
		width: 600,
		modal: true
	});
	//注册打开窗口方法
	$('#edit_qxglyhjqGrid').click(function(){
		//添加权限用户窗口
		$( "#addPowerUserWin" ).dialog('open');
		$('.ui-widget-overlay').attr('style','z-index:949');
		var parentStyle = $( "#addPowerUserWin" ).parent().attr('style');
		console.log("===>parentStyle1="+parentStyle);
		parentStyle += "z-index:950;";
		$( "#addPowerUserWin" ).parent().attr('style',parentStyle);
		console.log("===>parentStyle2="+parentStyle);
	});
	
	//ui-jqgrid-hdiv ui-state-default ui-corner-top头
    $('#gbox_qxglyhjqGrid').attr("style","height:"+(height-$('#qxgltabsBar').height())+"px;");
    var aa = height-$('#gview_qxglyhjqGrid').children('.ui-jqgrid-hdiv.ui-state-default.ui-corner-top').height()-$('#qxglyhGridPager').height();
    aa = aa*0.995 - 26;
    $('#gview_qxglyhjqGrid').children(".ui-jqgrid-bdiv").attr("style","height:"+aa+"px;");
    
    
    $( "#remove" ).button({
		text: false,
		icons: {
			primary: "ui-icon-seek-prev"
		}
	});
    
    $( "#add" ).button({
		text: false,
		icons: {
			primary: "ui-icon-seek-next"
		}
	});
    
  //移到右边
    $('#add').click(function() {
    //获取选中的选项，删除并追加给对方
        $('#select1 option:selected').appendTo('#select2');
    });
    //移到左边
    $('#remove').click(function() {
        $('#select2 option:selected').appendTo('#select1');
    });
    //全部移到右边
//	    $('#add_all').click(function() {
//	        获取全部的选项,删除并追加给对方
//	        $('#select1 option').appendTo('#select2');
//	    });
    //全部移到左边
//	    $('#remove_all').click(function() {
//	        $('#select2 option').appendTo('#select1');
//	    });
    //双击选项
    $('#select1').dblclick(function(){ //绑定双击事件
        //获取全部的选项,删除并追加给对方
        $("option:selected",this).appendTo('#select2'); //追加给对方
    });
    //双击选项
    $('#select2').dblclick(function(){
       $("option:selected",this).appendTo('#select1');
    });
    
    //弹出窗口按钮样式切换
    $('#sData').hover(function(){
		$(this).addClass("ui-state-hover");},
		function(){ 
			$(this).removeClass("ui-state-hover");}
		);
  //弹出窗口按钮样式切换
    $('#cData').hover(function(){
		$(this).addClass("ui-state-hover");},
		function(){ 
			$(this).removeClass("ui-state-hover");}
		);
});
function closeWin(){
	$('#addPowerUserWin').dialog( 'close' );
}
</script>