<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="ui-jqdialog-content ui-widget-content" id="xzwzDiv" style="height: 98%;">
		<form id="xzwuMessage" class="FormGrid" onsubmit="return false;" style="width: auto; height: auto;">
			<table class="EditTable ui-common-table">
				<tbody>
					<tr rowpos="1" class="FormData" id="tr_CategoryName">
						<td class="CaptionTD"><label for="CategoryName">物资编码<span style="color: red;">*</span>：</label></td>
						<td class="DataTD" colspan="2">&nbsp;<input type="text"
							id="CategoryName" name="CategoryName" rowid="_empty" style="width: 90%;"
							role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>
						<td class="CaptionTD"><label for="ProductName">物资名称<span style="color: red;">*</span>：</label></td>
						<td class="DataTD" colspan="2">&nbsp;<input type="text" id="ProductName" style="width: 90%;"
							name="ProductName" rowid="_empty" role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>
					</tr>
					<tr rowpos="2" class="FormData" id="tr_ProductName">
						<td class="CaptionTD"><label for="CategoryName">规格<span style="color: red;">*</span>：</label></td>
						<td class="DataTD" colspan="2">&nbsp;<input type="text"
							id="CategoryName" name="CategoryName" rowid="_empty" style="width: 90%;"
							role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>
						<td class="CaptionTD"><label for="CategoryName">物资描述<span style="color: red;">*</span>：</label></td>
						<td class="DataTD" colspan="2">&nbsp;<input type="text"
							id="CategoryName" name="CategoryName" rowid="_empty" style="width: 90%;"
							role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>
					</tr>
					<tr rowpos="3" class="FormData" id="tr_Country">
						<td class="CaptionTD"><label for="ProductName">物资分类：</label></td>
						<td class="DataTD" colspan="2">&nbsp;
							<select role="select" id="type" name="type" style="width: 90%;" 
								size="1" class="FormElement ui-widget-content ui-corner-all">
								<option role="option" value="ALFKI" selected="selected">10101-工字钢</option>
								<option role="option" value="ANATR">ANATR</option>
								<option role="option" value="ANTON">ANTON</option>
								<option role="option" value="AROUT">AROUT</option>
								<option role="option" value="WOLZA">WOLZA</option>
							</select>
						</td>
						<td class="CaptionTD"><label for="ProductName">保管员：</label></td>
						<td class="DataTD" colspan="2">&nbsp;
							<select role="select" id="type" name="type" style="width: 90%;" 
								size="1" class="FormElement ui-widget-content ui-corner-all">
								<option role="option" value=""></option>
								<option role="option" value="ANATR">ANATR</option>
								<option role="option" value="ANTON">ANTON</option>
								<option role="option" value="AROUT">AROUT</option>
								<option role="option" value="WOLZA">WOLZA</option>
							</select>
						</td>
					</tr>
					<tr>
						<td class="CaptionTD"><label for="ProductName">主要单位<span style="color: red;">*</span>：</label></td>
						<td class="DataTD">&nbsp;
							<select role="select" id="type" name="type" style="width: 90%;" 
								size="1" class="FormElement ui-widget-content ui-corner-all">
								<option role="option" value=""></option>
								<option role="option" value="ANATR">ANATR</option>
								<option role="option" value="ANTON">ANTON</option>
								<option role="option" value="AROUT">AROUT</option>
								<option role="option" value="WOLZA">WOLZA</option>
							</select>
						</td>
						<td class="CaptionTD"><label for="ProductName">第二单位：</label></td>
						<td class="DataTD">&nbsp;
							<select role="select" id="type" name="type" style="width: 90%;" 
								size="1" class="FormElement ui-widget-content ui-corner-all">
								<option role="option" value=""></option>
								<option role="option" value="ANATR">ANATR</option>
								<option role="option" value="ANTON">ANTON</option>
								<option role="option" value="AROUT">AROUT</option>
								<option role="option" value="WOLZA">WOLZA</option>
							</select>
						</td>
						<td class="CaptionTD"><label for="ProductName">换算率：</label></td>
						<td class="DataTD">&nbsp;
							<select role="select" id="type" name="type" style="width: 85%;" 
								size="1" class="FormElement ui-widget-content ui-corner-all">
								<option role="option" value=""></option>
								<option role="option" value="ANATR">ANATR</option>
								<option role="option" value="ANTON">ANTON</option>
								<option role="option" value="AROUT">AROUT</option>
								<option role="option" value="WOLZA">WOLZA</option>
							</select>
						</td>
					</tr>
					<tr>
						<td class="CaptionTD"><label for="ProductName">最小库存量：</label></td>
						<td class="DataTD">&nbsp;
							<input id="minkcl" name="value" />
						</td>
						<td class="CaptionTD"><label for="ProductName">最大库存量：</label></td>
						<td class="DataTD">&nbsp;
							<input id="maxkcl" name="value" />
						</td>
						<td class="CaptionTD"><label for="ProductName">最大库存周期：</label></td>
						<td class="DataTD">&nbsp;
							<input id="maxkczq" name="value" />
						</td>
					</tr>
					<tr>
						<td class="CaptionTD"><label for="ProductName">单价：</label></td>
						<td class="DataTD">&nbsp;
							<input id="danjia" name="value" />
						</td>
						<td class="CaptionTD"><label for="ProductName">默认仓库：</label></td>
						<td class="DataTD">&nbsp;
							<select role="select" id="type" name="type" style="width: 90%;" 
								size="1" class="FormElement ui-widget-content ui-corner-all">
								<option role="option" value=""></option>
								<option role="option" value="ANATR">ANATR</option>
								<option role="option" value="ANTON">ANTON</option>
								<option role="option" value="AROUT">AROUT</option>
								<option role="option" value="WOLZA">WOLZA</option>
							</select>
						</td>
						<td class="CaptionTD"><label for="ProductName">默认库位：</label></td>
						<td class="DataTD">&nbsp;
							<select role="select" id="type" name="type" style="width: 85%;" 
								size="1" class="FormElement ui-widget-content ui-corner-all">
								<option role="option" value=""></option>
								<option role="option" value="ANATR">ANATR</option>
								<option role="option" value="ANTON">ANTON</option>
								<option role="option" value="AROUT">AROUT</option>
								<option role="option" value="WOLZA">WOLZA</option>
							</select>
						</td>
					</tr>
					<tr><td colspan="6">&nbsp;</td></tr>
					<tr><td colspan="6">&nbsp;</td></tr>
					<tr><td colspan="6">&nbsp;</td></tr>
					<tr>
						<td colspan="6"><hr class="ui-widget-content" style="margin: 1px"></td>
					</tr>
					<tr>
						<td class="EditButton" td colspan="6">
							<a id="saveWZ" class="fm-button ui-state-default ui-corner-all fm-button-icon-left">保存<span class="ui-icon ui-icon-disk"></span></a>
							<a id="celWZ" class="fm-button ui-state-default ui-corner-all fm-button-icon-left" onclick="closeXzwzWin();">取消<span class="ui-icon ui-icon-close"></span></a>
						</td>					
					</tr>
				</tbody>
			</table>
		</form>		
</div>
<script>
	$(function() {
		var aaaa= $( "#minkcl" ).spinner({
			spin: function( event, ui ) {
				if ( ui.value > 10 ) {
					$( this ).spinner( "value", -10 );
					return false;
				} else if ( ui.value < -10 ) {
					$( this ).spinner( "value", 10 );
					return false;
				}
			}
		});
		$( "#minkcl" ).attr('style','height: 26px;width: 85%;');
		
		
		$( "#maxkcl" ).spinner({
			spin: function( event, ui ) {
				if ( ui.value > 10 ) {
					$( this ).spinner( "value", -10 );
					return false;
				} else if ( ui.value < -10 ) {
					$( this ).spinner( "value", 10 );
					return false;
				}
			}
		});
		$( "#maxkcl" ).attr('style','height: 26px;width: 85%;');
		$( "#maxkczq" ).spinner({
			spin: function( event, ui ) {
				if ( ui.value > 10 ) {
					$( this ).spinner( "value", -10 );
					return false;
				} else if ( ui.value < -10 ) {
					$( this ).spinner( "value", 10 );
					return false;
				}
			}
		});
		$( "#maxkczq" ).attr('style','height: 26px;width: 85%;');
		$( "#danjia" ).spinner({
			spin: function( event, ui ) {
				if ( ui.value > 10 ) {
					$( this ).spinner( "value", -10 );
					return false;
				} else if ( ui.value < -10 ) {
					$( this ).spinner( "value", 10 );
					return false;
				}
			}
		});
		$( "#danjia" ).attr('style','height: 26px;width: 85%;');
		$('#saveWZ').hover(function(){
			$(this).addClass("ui-state-hover");},
			function(){ 
				$(this).removeClass("ui-state-hover");}
			);
	  	$('#celWZ').hover(function(){
			$(this).addClass("ui-state-hover");},
			function(){ 
				$(this).removeClass("ui-state-hover");}
			);
	});
	
	</script>