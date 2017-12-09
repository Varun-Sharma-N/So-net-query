<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="com.mongodb.DBObject"%>
<%@page import="com.mongodb.DBCursor"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.DB"%>
<%@page import="com.mongodb.MongoClient"%>
<%
String a= request.getParameter("question11");
System.out.print("question11"+a);
String b= request.getParameter("reply");
System.out.print("answer"+b);
String c= request.getParameter("proff");
String d= (String)session.getAttribute("fname");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
try
{
	DBCollection collection=null;
	MongoClient mongoClient=new MongoClient("localhost",27017);
	DB db=mongoClient.getDB("socialqsandans");
	collection=db.getCollection("answer");
	BasicDBObject object = new BasicDBObject("question",a).append("reply",b).append("work", c).append("quename", d); 

//DBCursor cursor=collection.find();
collection.insert(object);
%>
<script type="text/javascript">
window.location='success.jsp';
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