<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD id=Head1><TITLE>人力资源管理系统</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8"><LINK 
href="YHChannelApply.files/Style.css" type=text/css rel=stylesheet><LINK 
href="YHChannelApply.files/Manage.css" type=text/css rel=stylesheet>
<SCRIPT language=javascript src="YHChannelApply.files/FrameDiv.js"></SCRIPT>

<SCRIPT language=javascript src="YHChannelApply.files/Common.js"></SCRIPT>

<SCRIPT language=javascript>
        function selectallbox()
        {
            var list = document.getElementsByName('setlist');
            var listAllValue='';
             if(document.getElementById('checkAll').checked)
             {
                  for(var i=0;i<list.length;i++)
                  {
                    list[i].checked = true;
                    if(listAllValue=='')
                        listAllValue=list[i].value;
                    else
                        listAllValue = listAllValue + ',' + list[i].value;
                  }
                  document.getElementById('boxListValue').value=listAllValue;
             }
             else 
             {
                  for(var i=0;i<list.length;i++)
                  {
                    list[i].checked = false;
                  }
                  document.getElementById('boxListValue').value='';
             }
         } 
    </SCRIPT>

<META content="MSHTML 6.00.2900.3492" name=GENERATOR></HEAD>
<BODY>
<FORM id=form1 name=form1 
action=operator.do  method=post>
<SCRIPT type=text/javascript>
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</SCRIPT>

<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
  <TBODY>
  <TR>
    <TD width=15><IMG src="YHChannelApply.files/new_019.jpg" border=0></TD>
    <TD width="100%" background=YHChannelApply.files/new_020.jpg height=20></TD>
    <TD width=15><IMG src="YHChannelApply.files/new_021.jpg" 
  border=0></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
  <TBODY>
  <TR>
    <TD width=15 background=YHChannelApply.files/new_022.jpg><IMG 
      src="YHChannelApply.files/new_022.jpg" border=0> </TD>
    <TD vAlign=top width="100%" bgColor=#ffffff>
      <TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
        <TR>
          <TD class=manageHead>当前位置：管理首页 &gt; 管理中心 &gt; 渠道商广告申请</TD></TR>
        <TR>
          <TD height=2></TD></TR></TABLE>
      <TABLE borderColor=#cccccc cellSpacing=0 cellPadding=0 width="100%" 
      align=center border=0>
        <TBODY>
        <TR>
          <TD height=25>
            <TABLE cellSpacing=0 cellPadding=2 border=0>
              <TBODY>
              <TR>
                <TD>筛选数据：</TD>
                <TD><SELECT id=sClient 
                  name=sClient> <OPTION value="" selected>网站名称</OPTION> 
                    <c:forEach items="${applicationScope.all}" var="item">
                    <OPTION value=${item.webName}> ${item.webName} </OPTION>
                     </c:forEach>
                    </SELECT></TD>
                <TD><SELECT id=sFlag 
                  name=sFlag> <OPTION value=0 selected>全部状态</OPTION> <OPTION 
                    value=1>新申请</OPTION> <OPTION value=2>审核通过</OPTION> <OPTION 
                    value=3>审核未通过</OPTION></SELECT></TD>
                <TD>渠道商</TD>
                <TD><INPUT class=textbox id=sChannel2 style="WIDTH: 80px" 
                  maxLength=50 name=sChannel2></TD>
                <TD>起始日期</TD>
                <TD><INPUT class=textbox id=sStart2 style="WIDTH: 70px" 
                  name=sStart2></TD>
                <TD>截止日期</TD>
                <TD><INPUT class=textbox id=sEnd2 style="WIDTH: 70px" 
                  name=sEnd2></TD>
                <TD><INPUT class=button id=sButton2 type=submit value=" 筛选 " name=sButton2></TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD>
            <TABLE id=grid 
            style="BORDER-TOP-WIDTH: 0px; FONT-WEIGHT: normal; BORDER-LEFT-WIDTH: 0px; BORDER-LEFT-COLOR: #cccccc; BORDER-BOTTOM-WIDTH: 0px; BORDER-BOTTOM-COLOR: #cccccc; WIDTH: 100%; BORDER-TOP-COLOR: #cccccc; FONT-STYLE: normal; BACKGROUND-COLOR: #cccccc; BORDER-RIGHT-WIDTH: 0px; TEXT-DECORATION: none; BORDER-RIGHT-COLOR: #cccccc" 
            cellSpacing=1 cellPadding=2 rules=all border=0>
              <TBODY>
              <TR 
              style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
                <TD>用户名</TD>
                <TD>网站名称</TD>
                <TD>状态</TD>
                <TD>广告商</TD>
                <TD>申请时间</TD>
                <TD>详细</TD>
                <TD>操作</TD></TR>
           <c:forEach items="${applicationScope.all}" var="item">     
              <TR 
              style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
                <TD>${item.name}</TD>
                <TD><A href="#" target=_blank>${item.webName}</A></TD>
                <c:if test="${item.status==1}">
                <TD><IMG alt=申请通过 src="YHChannelApply.files/start.gif" 
                  border=0> </TD>
                </c:if>
                <c:if test="${item.status!=1}">
                <TD>未通过 </TD>
                </c:if>
                <TD>${item.adName }</TD>
                <TD>${item.applyDate }</TD>
                <TD><A 
                  href="#">查看</A> 
                </TD>
                <TD><INPUT id=setlist onClick="check(this,'boxListValue');" 
                  type=checkbox value=${item.id } name=setlist> </TD></TR>
           </c:forEach> 
               
        <TR>
          <TD align=right height=25><INPUT id=boxListValue type=hidden 
            name=boxListValue> <INPUT class=button id=button1 type="button" value=增加 name=button1 onclick="window.location.href='add.jsp'"> 
<INPUT class=button id=button2 type=submit value=删除 name=button2> 
            <INPUT onclick=selectallbox(); type=checkbox name=checkAll id=checkAll> 
            全选&nbsp;&nbsp;&nbsp; </TD></TR>
        <TR>
          <TD><SPAN id=pagelink>
            <DIV 
            style="LINE-HEIGHT: 20px; HEIGHT: 20px; TEXT-ALIGN: right">[<B>84</B>]条记录 
            [6]页 当前是[46-60]条 [<A 
            href="#">前一页</A>] 
            <A class="" 
            href="#">1</A> 
            <A class="" 
            href="#">2</A> 
            <A class="" 
            href="#">3</A> 
            <B>4</B> <A class="" 
            href="#">5</A> 
            <A class="" 
            href="#">6</A> 
            [<A class="" 
            href="#">后一页</A>] 
            <SELECT><OPTION 
              value=1>第1页</OPTION><OPTION value=2>第2页</OPTION><OPTION 
              value=3>第3页</OPTION><OPTION value=4 selected>第4页</OPTION><OPTION 
              value=5>第5页</OPTION><OPTION 
            value=6>第6页</OPTION></SELECT></DIV></SPAN></TD></TR></TBODY></TABLE></TD>
    <TD width=15 background=YHChannelApply.files/new_023.jpg><IMG 
      src="YHChannelApply.files/new_023.jpg" border=0> </TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
  <TBODY>
  <TR>
    <TD width=15><IMG src="YHChannelApply.files/new_024.jpg" border=0></TD>
    <TD align=middle width="100%" background=YHChannelApply.files/new_025.jpg 
    height=15></TD>
    <TD width=15><IMG src="YHChannelApply.files/new_026.jpg" 
  border=0></TD></TR></TBODY></TABLE>
</FORM></BODY></HTML>
