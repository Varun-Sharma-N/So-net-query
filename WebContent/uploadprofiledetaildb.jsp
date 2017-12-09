<%@page import="javax.crypto.Cipher"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.DB"%>
<%@page import="com.mongodb.Mongo"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %> 
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import="java.security.Key" %>
<%@page import="javax.crypto.Cipher" %>
<%@page import="javax.crypto.spec.SecretKeySpec" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional/55 /EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%      

ArrayList list = new ArrayList();

		ServletContext context = getServletContext();
		String a=request.getParameter("file");
		session.setAttribute("video",a);
		System.out.println(a);
		String dirName =context.getRealPath("\\gallery\\"); 
			
		System.out.println(dirName);
		String paramname=null;
		String blood=null,datafile=null;
		
	    String a1=null,image=null;String b=null;String c=null;String d=null;String e=null;String f1=null;String g=null;String h=null;String i=null;String j=null;String n=null;String p=null;String q=null,l=null,m=null,n1=null,n2=null;

		String encrypted1= null;
		int id=0;
		String date1=null;
		File file1 = null;
		
		
	try {
			
			/* MultipartRequest multi = new MultipartRequest(request, dirName,	103333 * 1033324 * 103333324); // 10MB */

			MultipartRequest multi = new MultipartRequest(request,dirName,103333*1033324*103333324);
			
			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
			
								
				if(paramname.equalsIgnoreCase("firstname"))
				{
					a1=multi.getParameter(paramname);
					session.setAttribute("firstname", a1);
				}
				if(paramname.equalsIgnoreCase("lastname"))
				{
					b=multi.getParameter(paramname);
					session.setAttribute("lastname",b);
				}
				if(paramname.equalsIgnoreCase("email"))
				{
					c=multi.getParameter(paramname);
					session.setAttribute("email",c);
					
				}
				
				if(paramname.equalsIgnoreCase("work"))
				{
					e=multi.getParameter(paramname);
					session.setAttribute("work",e);
				}
				if(paramname.equalsIgnoreCase("skills"))
				{
					f1=multi.getParameter(paramname);
					session.setAttribute("skills", f1);
					
				}
				if(paramname.equalsIgnoreCase("interest"))
				{
					g=multi.getParameter(paramname);
					session.setAttribute("interest", g);
					
				}
				if(paramname.equalsIgnoreCase("image"))
				{
					datafile=multi.getParameter(paramname);
					session.setAttribute("image", datafile);
					
				}
			}
					
					
			int f = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			datafile = multi.getFilesystemName(paramname);
			session.setAttribute("datafile", datafile);
			String fPath = context.getRealPath("\\gallery\\"+datafile);
			file1 = new File(fPath);
			FileInputStream fs = new FileInputStream(file1);
			list.add(fs);
		}		
	}
	
	        FileInputStream fs1 = null;

	        Mongo mongo = new Mongo("127.0.0.1",27017);
     		DB db = mongo.getDB("socialqsandans");
    	DBCollection collection = db.getCollection("profile");
        BasicDBObject wherequery1 = new BasicDBObject("firstname", a1).append("lastname", b).append("email",c).append("professional",e).append("skills",f1).append("interest",g).append("image",datafile);
        collection.insert(wherequery1);
 		
 		//response.sendRedirect("video_upload.jsp");
 		
 		response.sendRedirect("uploadprofiledetail.jsp?msg=success");


}catch(Exception ex){

out.println("Error in connection : "+ex);

}


%>
</body>
</html>
