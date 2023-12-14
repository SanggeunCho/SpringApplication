<%--
  Created by IntelliJ IDEA.
  User: hcm811
  Date: 2023-12-13
  Time: 오전 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>지원서 확인하기</title>
</head>
<body>
<h1>지원서 확인하기</h1>
<form>
    <input type="hidden" name="seq" value="${u.seq}" />
    <table id="edit">
        <tr><td>이름: ${u.name} </td></tr>
        <tr><td>나이: ${u.age} </td></tr>
        <tr><td>학기 수: ${u.semester} </td></tr>
        <tr><td>전공: ${u.department} </td></tr>
        <tr><td>지원 파트: ${u.part} </td></tr>
        <tr><td>성별: ${u.MF} </td></tr>
        <tr><td>지원 동기: ${u.motive} </td></tr>
        <tr><td>등록일: ${u.regdate}</td></tr>
    </table>
    <input type="button" value="돌아가기" onclick="history.back()" />
</form>
</body>
</html>