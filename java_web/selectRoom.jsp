<%@ page contentType="text/html; charset=GBK" import="java.util.*,hotel.model.Room"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>�û���Ϣ�б�</title>
</head>
<body>
<h2>�û���Ϣ�б�</h2>
<Form name="form1" action="seting.jsp" >
<table> 
 <tr>
 <th>�����</th>
 <th>�������</th>
 <th>�ͻ���</th> 
 <th>�۸�</th>
 </tr>
 <% 
 ArrayList<Room> list=(ArrayList<Room>)request.getAttribute("list"); 
 int i=1; 
 for(Room ui:list){
 %>
 <tr> 
 <td align="center"><%=i%> 
 <td align="center"><%=ui.getIsempty()%> 
 <td align="center"><%=ui.getCustomid()%>
 <td align="center"><%=ui.getPrice()%>
 <td><a href="seting.jsp">��ס</a></td></tr>
 <% i++; } %> 
 <tr></tr>
 <tr>
<td><a href="start.jsp">����������</a></td>
</tr>
 </Form>
 </table>
</body>
</html>