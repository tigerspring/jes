<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
 String path = request.getContextPath();
 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<%-- <script src="<%=basePath %>/script/jquery.qrcode/jquery.qrcode.min.js" type="text/javascript"></script> --%>
<script src="<%=basePath %>/script/jquery/js/jquery-1.10.2.js"></script>
<script src="<%=basePath %>/script/jquery.qrcode/jquery.qrcode.js" type="text/javascript"></script>
<script src="<%=basePath %>/script/jquery.qrcode/qrcode.js"></script>

<div id="qrcode_kwbq"></div>
<script type="text/javascript">
function utf16to8(str) {  
    var out, i, len, c;  
    out = "";  
    len = str.length;  
    for (i = 0; i < len; i++) {  
        c = str.charCodeAt(i);  
        if ((c >= 0x0001) && (c <= 0x007F)) {  
            out += str.charAt(i);  
        } else if (c > 0x07FF) {  
            out += String.fromCharCode(0xE0 | ((c >> 12) & 0x0F));  
            out += String.fromCharCode(0x80 | ((c >> 6) & 0x3F));  
            out += String.fromCharCode(0x80 | ((c >> 0) & 0x3F));  
        } else {  
            out += String.fromCharCode(0xC0 | ((c >> 6) & 0x1F));  
            out += String.fromCharCode(0x80 | ((c >> 0) & 0x3F));  
        }  
    }  
    return out;  
}  
$(function () {  
   $('#qrcode_kwbq').qrcode({size:'500',correctLevel:0,text:utf16to8("18511897696")});  

})      


</script>
