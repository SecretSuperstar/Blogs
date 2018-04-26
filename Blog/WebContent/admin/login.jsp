<%@ page contentType="text/html;charset=gb2312"%>
<html>
<head>
<title>管理员登录</title>
<link rel="stylesheet" type="text/css" href="../css/toolbar.css">
</head>

<script language="javascript">
function isOK(f)
{
  if(f.login_name.value=="")
  {
     alert("登录名不能为空!");
	 return false;
   }
   else if((f.password.value.length<3)||(f.password.value.length>18))
   {
      alert("密码必须是大于3小于18的数字或字母!");
	  return false;
   }
   else{  return true;  }
}
</script> 

</html>
