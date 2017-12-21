<%--
  Created by IntelliJ IDEA.
  User: KAI
  Date: 2017/12/11
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>结果 | MyBlog</title>
    <!-- Bootstrap core CSS -->
    <link
            href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
            rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">

    <!-- 引入页面公共样式 -->
    <link type="text/css" rel="stylesheet" href="/css/public.css" />

</head>
<body>
<div class="head_line"></div>
<div class="container" id="main">
    <div class="row c_center" style="margin:0, auto;">
        <c:choose>
            <c:when test="${article==null}">
                <h4>
                    创建或更新文章失败了.....
                </h4>
            </c:when>
            <c:otherwise>
                <h4>成功!是否现在查看文章<a href="/ArticleServlet?id=${article.id}">${article.title}</a></h4>
            </c:otherwise>
        </c:choose>


    </div>
    <div class="foot_line"></div>
</div>
<!-- container -->



<div id="footer">
    <a href="/index.jsp">&nbsp;&nbsp;BlcDec</a>
</div>
<!-- footer -->
</body>
</html>
