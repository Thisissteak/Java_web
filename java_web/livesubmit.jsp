<%@ page contentType="text/html; charset=GBK" import="java.util.*,hotel.model.Custom"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>�û���Ϣ�б�</title>
</head>
<body>
<h2>�û���Ϣ�б�</h2>
<Form name="form1" action="live.action" method="post" >
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
 <tr><td>��ȷ�����֤��</td></tr>
 <tr><td><input type="text" name="customid"></td></tr>
<tr><td><input type="submit" value="ȷ�Ͻ���ɾ��"></td></tr>
 </Form>
 </table>
</body>
</html>