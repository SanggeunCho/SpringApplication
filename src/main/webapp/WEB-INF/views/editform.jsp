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
    <title>지원서 수정하기</title>
</head>
<body>
<h1>지원서 수정하기</h1>
    <form action="../editok" method="POST">
        <input type="hidden" name="seq" value="${u.seq}" />
        <table id="edit">
            <tr><td>이름</td><td><input type="text" name="name" value="${u.name}" /></td></tr>
            <tr><td>나이</td><td><input type="text" name="age" value="${u.age}" /></td></tr>
            <tr><td>학기 수</td><td><input type="text" name="semester" value="${u.semester}" /></td></tr>
            <tr><td>전공</td><td><input type="text" name="department" value="${u.department}" /></td></tr>
            <tr><td>지원 파트</td><td><input type="text" name="part" value="${u.part}" /></td></tr>
            <tr><td>성별</td><td><input type="text" name="MF" value="${u.MF}" /></td></tr>
            <tr><td>지원 동기</td><td><textarea cols="50" rows="5" name="motive">${u.motive}</textarea></td></tr>
        </table>
        <input type="submit" value="수정하기" />
        <input type="button" value="취소하기" onclick="history.back()" />
    </form>
</body>
</html>
