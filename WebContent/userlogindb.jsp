<%@page import="com.mongodb.DBObject"%>
<%@page import="com.mongodb.DBCursor"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.DB"%>
<%@page import="com.mongodb.MongoClient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String a = request.getParameter("email");
String b = request.getParameter("pass");


try
{

MongoClient mongoClient= new MongoClient("localhost",27017);
DB db = mongoClient.getDB("socialqsandans");
DBCollection collection= db.getCollection("register");
BasicDBObject searchquery = new BasicDBObject();
searchquery.put("email", a);
searchquery.put("pass", b);
DBCursor cursor = collection.find(searchquery);
if(cursor.hasNext())
{
	DBObject object = cursor.next();
	String aa1 = (String)object.get("email");
	session.setAttribute("email", aa1);
	System.out.println("%%%%%%%%%%%%%%%%%%%%%%"+aa1);
	session.setAttribute("fname", object.get("firstname"));
	session.setAttribute("lname", object.get("lastname"));
	session.setAttribute("worklist", object.get("work"));
	response.sendRedirect("usermenus.jsp");
}
else
{
%>
<script type="text/javascript">
alert("Enter the correct username & password");
window.location="userlogin.jsp";
</script>
<%	
}
}
catch(Exception e)
{
e.printStackTrace();
}
%>

</body>
</html>