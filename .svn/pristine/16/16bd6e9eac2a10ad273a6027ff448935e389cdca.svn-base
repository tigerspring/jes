var tabs,
tabCount=1,
tabTemplate = "<li><a id='{id}' href='#{href}'>#{label}</a><span class='ui-icon ui-icon-close' onclick='delteTab($(this));' role='presentation'>Remove Tab</span></li>",
tabCounter = 2;
var height;
function initTab(){
	tabs = $('#tabs').tabs({
		collapsible: true
	}); 
}
function delteTab(obj){
	var panelId = obj.closest( "li" ).remove().attr( "aria-controls" );
	$( "#" + panelId ).remove();
	tabs.tabs( "refresh" );
	tabCount--;
}
function addTab(obj,uri){
	var label = obj.text(),
	id = "tabs-" + tabCounter,
	li = $( tabTemplate.replace( /\{id\}/g, tabCount ).replace( /#\{href\}/g, "#" + id ).replace( /#\{label\}/g, label ) );
	var isTabExist = 0;
	$('div#tabs > ul > li').each(function(i){
		if($(this).children('a').text() == label){
			isTabExist++;
			//设置选中状态（重复选择的链接对应的tab置为选中状态）
			activeTab($(this).children('a').attr("id"));
			return false;
		}
	});
	if(isTabExist == 1)return;
	tabs.find(".ui-tabs-nav" ).append( li );
	height = $('#tabs').height() - $('#tabsBar').height();
	tabs.append( "<div id='" + id + "' style='height:"+height+"px;padding: 0'></div>" );
	tabs.tabs( "refresh" );
	//设置选中状态
	activeTab(tabCount);
	tabCount++;
	$("#"+id).load(uri);
	tabCounter++;
	
}
/**
 * 设置选中状态方法
 * @param tabCount
 */
function activeTab(tabCount){
	tabs.tabs( "option", "active", tabCount);
}