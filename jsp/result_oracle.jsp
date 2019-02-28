<%@ page contentType="text/html; charset=UTF-8"
	import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*" %>
<html>
<head>
<title>結果セット</title>
</head>
<body>
<table border="1">
<tr>
	<th>名</th><th>姓</th><th>電話番号</th><th>E-Mailアドレス</th>
</tr>
<%
Connection db = null;
PreparedStatement ps =null;
ResultSet rs = null;
try {
	Context context = new InitialContext();
	DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/oracle");
	db = ds.getConnection();
	//ps = db.prepareStatement("SELECT last_name, first_name, phone_number, email  FROM employees ORDER BY employee_id fetch first 20 rows only");
	ps = db.prepareStatement("SELECT *  FROM employees ORDER BY employee_id fetch first 20 rows only");
	rs = ps.executeQuery();
	while(rs.next()) {
%>
	<tr>
		<td><%=rs.getString("last_name") %></td>
		<td><%=rs.getString("first_name") %></td>
		<td><%=rs.getString("phone_number") %></td>
		<td><%=rs.getString("email") %></td>
	</tr>
<%
	}
} catch(Exception e) {
	throw new ServletException(e);
} finally {
	try {
		if(rs != null) {rs.close();}
		if(ps != null) {ps.close();}
		if(db != null) {db.close();}
	} catch(Exception e) {}
}
%>
</table>
</body>
</html>
