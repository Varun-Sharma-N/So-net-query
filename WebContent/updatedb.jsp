<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.DB"%>
<%@page import="com.mongodb.MongoClient"%>
<%@page import="java.security.Key" %>
<%@page import="javax.crypto.Cipher" %>
<%@page import="javax.crypto.spec.SecretKeySpec" %>
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
String a = request.getParameter("id");
String b = request.getParameter("professional");

try
{
	MongoClient mongoClient=new MongoClient("localhost",27017);
	DB db = mongoClient.getDB("socialqsandans");
	DBCollection collection=db.getCollection("add");
	
		/* update query */
	BasicDBObject newDocument = new BasicDBObject().append("$set",   
			 new BasicDBObject().append("id", a).append("professional", b));  
			   
			collection.update(new BasicDBObject().append("id", a), newDocument);  

			response.sendRedirect("viewadd.jsp?msg=success");
}
catch(Exception e1)
{
	e1.printStackTrace();
}


%>
</body>
</html>