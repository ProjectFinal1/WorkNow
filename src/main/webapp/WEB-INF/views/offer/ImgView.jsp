<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
  String img_src=request.getParameter("img_src");
  if(img_src==null) img_src="resources/images/demo/shop-icon.png"; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사진 원본 보기</title>
</head>
<body>
<img src="<%=img_src%>">

</body>
</html>