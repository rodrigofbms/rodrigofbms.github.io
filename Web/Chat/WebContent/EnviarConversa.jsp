<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> CHAT DO BOM! </title>
</head>
<body>
<% List<String> mensagens; 
if(application.getAttribute("mensagens") == null){
application.setAttribute("mensagens", new ArrayList<>());
}
mensagens = (List) application.getAttribute("mensagens");

%>
<form action="ServletChat" method = "post">
<textarea READONLY style = "height: 400px; width: 400px">
<% for(String mensagem : mensagens){ 
out.println(mensagem);  
} %>
</textarea><br>
<input name ="Chat" type = "text" > <br>
<button type = "submit">Enviar</button>
</form>
</body>
</html>