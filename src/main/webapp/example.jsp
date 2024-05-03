<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Exmaple JSP</title>
</head>
<body>
<h1>Exmaple JSP</h1>

<p><h2>
    2 + 2 = <%= 2 + 2 %>
</h2></p>

<p><h2>
    2 * 5 = <%= 5 * 2 %>
</h2></p>

<p><h2>
    2 > 5 = <%= 2 > 5 %>
</h2></p>

<p><h2>
   <%= "javarush".toUpperCase() %>
</h2></p>

<p><h2>
    <%= new Date() %>
</h2></p>

<%--Scriptlet--%>
<%
    String[] catroons = {"Tom", "Jerry"};
    System.out.println("Privet ya rabotayu");
%>
<p><h2>
  <%=  catroons[0] %>
</h2></p>

<p><h2>
    <%=  request.getSession() %>
</h2></p>

<%--JSP Declaration--%>
<%!
    int sum(int a, int b){
        return a + b;
    }
%>

<p><h2>
    <%= sum(99, 11) %>
</h2></p>


</body>
</html>
