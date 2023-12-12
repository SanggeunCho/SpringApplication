<%--
  Created by IntelliJ IDEA.
  User: 조상근
  Date: 2023-12-01
  Time: 오후 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit Form</title>
</head>
<body>
<h1>Edit Form</h1>
    <form action="../editok" method="POST">
        <input type="hidden" name="seq" value="${u.seq}" />
        <table id="edit">
            <tr><td>카테고리</td><td><input type="text" name="category" value="${u.category}" /></td></tr>
            <tr><td>제목</td><td><input type="text" name="title" value="${u.title}" /></td></tr>
            <tr><td>글쓴이</td><td><input type="text" name="writer" value="${u.writer}" /></td></tr>
            <tr><td>내용</td><td><textarea cols="50" rows="5" name="content">${u.content}</textarea></td></tr>
        </table>
        <input type="submit" value="수정하기" />
        <input type="button" value="취소하기" onclick="history.back()" />
    </form>
</body>
</html>
