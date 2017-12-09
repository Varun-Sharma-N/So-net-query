<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <%
 String name1=request.getParameter("admin");
 String pwd1=request.getParameter("pass");
 if((name1.equals("admin")&&name1!=null)&&(pwd1.equals("admin")&&pwd1!=null)) 
 {
 response.sendRedirect("adminmenus.jsp");
 }
 else
{
 response.sendRedirect("owner.jsp");
 }
%>


   