<%@page import="emailList.vo.EmailListVo"%>
<%@page import="emailList.dao.EmailListDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");

    String firstName = request.getParameter("fn");
    String lastName = request.getParameter("ln");
    String email = request.getParameter("email");

    EmailListVo vo = new EmailListVo();
    vo.setFirstName(firstName);
    vo.setLastName(lastName);
    vo.setEmail(email);

    EmailListDao dao = new EmailListDao();
    dao.insert(vo);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%=firstName %><br>
<%=lastName %><br>
<%=email %>
<h1>성공적으로 등록하였습니다.</h1>
</body>
</html>