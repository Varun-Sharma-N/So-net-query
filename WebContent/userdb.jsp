<%@page import="javax.mail.Flags.Flag"%>
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
String a = request.getParameter("firstname");
String b = request.getParameter("lastname");
String b1 = request.getParameter("pass");
String c = request.getParameter("email");
String d = request.getParameter("contact");
String e = request.getParameter("gender");
String f = request.getParameter("professional");
String h = request.getParameter("state");
String i = request.getParameter("city");
String j = request.getParameter("pin");
String mailid="";
int flag=0;
try{
	
	MongoClient mongoClient1 = new MongoClient("localhost",27017);
	DB db1 = mongoClient1.getDB("socialqsandans");
	DBCollection collection1 = db1.getCollection("register");
	DBCursor cursor1 = collection1.find();
	

while(cursor1.hasNext())
{
	DBObject object1 = cursor1.next();
	String uname=object1.get("email").toString();
System.out.println("username==="+uname);
if(uname.equals(c))
{
	flag=1;
	break;
}
else
	flag=0;

	
}
}
catch(Exception x)
{
x.printStackTrace();
}


if(flag==0)
{

try
{
	DBCollection collection=null;
	MongoClient mongoClient=new MongoClient("localhost",27017);
	DB db=mongoClient.getDB("socialqsandans");
	collection=db.getCollection("register");
	BasicDBObject object = new BasicDBObject("firstname",a).append("lastname",b).append("pass",b1).append("email",c).append("contact", d).append("gender", e).append("work", f).append("state", h).append("city",i).append("pin",j); 

//DBCursor cursor=collection.find();
collection.insert(object);
%>
<script type="text/javascript">
alert("Registeration successfully");
window.location='userlogin.jsp';
</script>

<%
}

catch(Exception e1)

{
 e1.printStackTrace();	
}
}
else
{%>
	
	<script type="text/javascript">
	alert("User Mail id Already exist");
	window.location='userlogin.jsp';
	</script><%
	}


%>
</body>
</html>