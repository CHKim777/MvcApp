<%@page import="model.BookDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>���� ���� �ֹ� ������</h1>
<b>�ֹ��� ����</b>
<table border="1">
	<tr>
		<th>���� ����</th><th>�۰�</th><th>����</th><th>����</th>
	</tr>
<%
try{
	ArrayList bookList = (ArrayList)session.getAttribute("bookList");
	for(int i=0; i<bookList.size(); i++){
		BookDto dto = (BookDto)bookList.get(i);
%>
	<tr>
		<td><%=dto.getTitle()%></td>
		<td><%=dto.getAuthor()%></td>
		<td><%=dto.getPrice()%></td>
		<td><%=dto.getQuantity()%></td>
	</tr>
<%
	}
}
catch(NullPointerException err){}
%>
</table>
<br><br>
<b>��ü ���� �׼� : </b><br><br>
<form method="post">
	<input type="submit" value="����"/>
</form>
</body>
</html>












