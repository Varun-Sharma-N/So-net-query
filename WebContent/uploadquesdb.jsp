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
String status = "pending";

String voucher = "";
String a[]=request.getParameterValues("list");
for(int i=0;i<a.length;i++){
    voucher+=a[i]+",";
} 
String name = (String) session.getAttribute("fname");
String a1 = request.getParameter("question");
session.setAttribute("s2", a1);

String b1 = request.getParameter("category");
session.setAttribute("s3", b1);


String c12 = request.getParameter("id");
session.setAttribute("sss", c12);
String c1 = request.getParameter("work");
/* String a[]=request.getParameterValues("list");
for(String b : a)
{
 */
try
{
	DBCollection collection=null;
	MongoClient mongoClient=new MongoClient("localhost",27017);
	DB db=mongoClient.getDB("socialqsandans");
	collection=db.getCollection("ques");
	BasicDBObject object = new BasicDBObject("id",c12).append("firstname",name).append("question",a1).append("category",b1).append("sendto",voucher).append("professional", c1); 

//DBCursor cursor=collection.find();
collection.insert(object);
response.sendRedirect("uploadques.jsp?msg=success");
%>


<%
}

catch(Exception e1)

{
 e1.printStackTrace();	

}

%>
</body>
</html>