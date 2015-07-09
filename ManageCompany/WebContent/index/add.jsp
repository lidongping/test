<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加</title>
</head>
 <TABLE id=grid 
            style="BORDER-TOP-WIDTH: 0px; FONT-WEIGHT: normal; BORDER-LEFT-WIDTH: 0px; BORDER-LEFT-COLOR: #cccccc; BORDER-BOTTOM-WIDTH: 0px; BORDER-BOTTOM-COLOR: #cccccc; WIDTH: 100%; BORDER-TOP-COLOR: #cccccc; FONT-STYLE: normal; BACKGROUND-COLOR: #cccccc; BORDER-RIGHT-WIDTH: 0px; TEXT-DECORATION: none; BORDER-RIGHT-COLOR: #cccccc" 
            cellSpacing=1 cellPadding=2 rules=all border=0>
<body>
 <TR  style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
              	<TD>用户ID</TD>
                <TD>用户名</TD>
                <TD>网站名称</TD>
                <TD>状态</TD>
                <TD>广告商</TD>
                <TD>申请时间</TD>
                <TD>详细</TD>
                <TD>增加</TD>
               </TR>
               
                 <TR 
              style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
               	<Form action="add.do" method="post">
                <TD><input type="text" id="id"	name="id2"></TD>
                <TD><input type="text" id="name"	name="name2"></TD>
                <TD><input type="text" id="webName"	name="webName2"></TD>
                <TD><input type="text" id="status"	name="status2"></TD>
                <TD><input type="text" id="adName"	name="adName2"></TD>
                <TD><input type="text" id="applyDate"	name="applyDate2"> </TD>
                <TD><input type="text" id="detail"	name="detail2"> </TD>
                <TD><input type="submit" id="add"	name="add" value="增加" > </TD>
                </Form>
                </TR>
</body></TABLE>