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
<b>���� �ֹ��� ����</b>
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
<form method="post" action="shop">
	<input type="hidden" name="cmd" value="CHKOUT"/>
	<input type="submit" value="üũ �ƿ�"/>
</form>
</body>
</html>












