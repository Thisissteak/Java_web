<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>��½ҳ��</title>
<script>
function check()
{ 
	if(form1.customid.value=="")
	{ 
		alert("δ�������֤��");
		form1.name.focus(); 
		return false;
	} 
	else if(form1.customid.value.length!=3)
	{ 
		alert("������3λ���֤��");
		form1.name.focus(); 
		return false;
	}
	else if(form1.name.value=="")
	{ 
		alert("δ��������");
		form1.name.focus(); 
		return false;
	} 
	else if(form1.phone.value.length!=11)
	{ 
		alert("��������ȷ��11λ�绰����");
		form1.phone.focus();
		return false;
	} 
	else if(form1.settime.value=="")
	{ 
		alert("δ������סʱ��");
		form1.settime.focus();
		return false; 
	} 
	else if(form1.livetime.value=="")
	{
	alert("δ�����뿪ʱ��");
	form1.livetime.focus();
	return false; 
	} 
	else if(form1.roomid.value=="")
	{
	alert("û�з��䷿���");
	form1.roomid.focus();
	return false; 
	} 
	return true;
} 
</script>
</head>
<body>
<Form name="form1" method="post"  action="set.action" onSubmit="return check()">
<table border="0">
<center><tr><td>�ͻ���ס�Ǽ�</td></tr></center>
<tr>
<td>���֤��</td><td><input type="text" name="customid"></td>
</tr>
<tr>
<td>����</td><td><input type="text" name="name"></td>
</tr>
<tr>
<td>�绰</td>
<td><input type="text" name="phone"></td>
</tr>
<tr>
<td>��סʱ��</td>
<td><input type="text" name="settime"></td>
</tr>
<tr>
<td>�뿪ʱ��</td>
<td><input type="text" name="livetime"></td>

</tr>
<tr>
<td>�����</td>
<td><input type="text" name="roomid"></td>

</tr>
</table>
<input type="submit" value="�ύ">
<a href="start.jsp">�����ύ��������ҳ��</a>
</Form>
</body>
</html>