<%@ page contentType="text/html;charset=gb2312"%>
<html>
<head>
<title>����Ա��¼</title>
<link rel="stylesheet" type="text/css" href="../css/toolbar.css">
</head>

<script language="javascript">
function isOK(f)
{
  if(f.login_name.value=="")
  {
     alert("��¼������Ϊ��!");
	 return false;
   }
   else if((f.password.value.length<3)||(f.password.value.length>18))
   {
      alert("��������Ǵ���3С��18�����ֻ���ĸ!");
	  return false;
   }
   else{  return true;  }
}
</script> 

</html>
