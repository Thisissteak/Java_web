<%@ page contentType="text/html; charset=GBK" import="java.util.*,hotel.model.Custom"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>�û���Ϣ�б�</title>
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
<h2>�û���Ϣ�б�</h2>
<Form name="form1" action="update.action" method="post" onSubmit="return check()">
<table> 
 <tr>
 <th>���֤��</th>
 <th>����</th>
 <th>�ֻ���</th> 
 <th>��סʱ��</th>
 <th>�뿪ʱ��</th>
 <th>�����</th>
 </tr>
 <% 
 ArrayList<Custom> list=(ArrayList<Custom>)request.getAttribute("list"); 
 int i=1; 
 for(Custom ui:list){
 %>
 <tr> 
 <td align="center"><%=ui.getId()%> 
 <td align="center"><%=ui.getName()%> 
 <td align="center"><%=ui.getPhone()%>
 <td align="center"><%=ui.getSettime()%>
 <td align="center"><%=ui.getLivetime()%>
  <td align="center"><%=ui.getRoomid()%></tr>
 <% i++; } %> 
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
<tr>
<td>ԭ���ķ����</td>
<td><input type="text" name="lastroomid"></td>
</tr>
<tr><td><input type="submit" value="ȷ�ϸ���"></td></tr>
 </Form>
 </table>
<a href="start.jsp">������ҳ</a>
</body>
</html>