<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.util.*" errorPage=""%> 
<%@ page import="com.admin.AdminPower" %>
<%
  //String currentLoginUserDataName = (String)session.getAttribute("currentLoginUserDataName");
  //String username=new String((request.getParameter("username")).getBytes("ISO-8859-1"),"gb2312");
  //String eusername = new String(username.getBytes("gb2312"),"ISO8859_1");
  String adminname = (String)session.getAttribute("currentLoginAdminName");
  //int intpage = 1;
  //int intpagecount = 1;
  String numberpage = request.getParameter("numberpage");
  if(numberpage == null||numberpage == ""){
    numberpage = "1";
  }
  
  
  AdminPower adminP = new AdminPower();
  String adminpo = adminP.getAdminPower(adminname);
  
  if(adminname==null||adminpo.equals("��ͨ��Ա")){
     response.sendRedirect("../index.jsp");
  }
  
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP blog manage page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="../css/toolbar.css">

  </head>
  
  
<script language="javascript">
function sendMessage(f)
{
  f.content.value = document.frames.cnEditBox.getHTML(true);
  if(f.title.value == "")
  {
     alert("���ⲻ��Ϊ��!");
	 return false;
   }
   else if(f.title.value.length>16)
   {
      alert("���ⲻ��̫��!");
	  return false;
   }
   else if(f.content.value == "<DIV></DIV>")
   {
      alert("���ݲ���Ϊ��!");
	  return false;
   }
   else if(f.content.value.length>50000){
     
     alert("�������ݲ���̫��");
     return false;
   }
  else
  { 
     return true;
   }
} 

</script> 
</html>