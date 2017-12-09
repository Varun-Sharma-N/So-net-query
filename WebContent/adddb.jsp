<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="com.mongodb.DBObject"%>
<%@page import="com.mongodb.DBCursor"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.DB"%>
<%@page import="com.mongodb.MongoClient"%>
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
String b1 = request.getParameter("description");

try
{
	DBCollection collection=null;
	MongoClient mongoClient=new MongoClient("localhost",27017);
	DB db=mongoClient.getDB("socialqsandans");
	collection=db.getCollection("add");
	BasicDBObject object = new BasicDBObject("id",a).append("professional",b).append("description",b1); 

//DBCursor cursor=collection.find();
collection.insert(object);
%>
<script type="text/javascript">
alert("Registeration successfully");
window.location='add.jsp';
</script>

<%
}

catch(Exception e1)

{
 e1.printStackTrace();	
}


%>
</body>
</html>