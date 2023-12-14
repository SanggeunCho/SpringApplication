<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>성가대 지원하기</title>
</head>
<body>
<h1>성가대 지원서</h1>
    <form action="addok" method="post">
        <table id="edit">
            <tr><td>이름</td><td><input type="text" name="name"/></td></tr>
            <tr><td>나이</td><td><input type="text" name="age"/></td></tr>
            <tr><td>학기 수</td><td><input type="text" name="semester"/></td></tr>
            <tr><td>전공</td><td><input type="text" name="department"/></td></tr>
            <tr><td>지원 파트</td><td><input type="text" name="part"/></td></tr>
            <tr><td>성별</td><td><input type="text" name="MF"/></td></tr>
            <tr><td>지원 동기</td><td><textarea cols="50" rows="5" name="motive"></textarea></td></tr>
        </table>
        <button type="button" onclick="location.href='list'">목록보기</button>
        <button type="submit">등록하기</button>
    </form>
</body>
</html>
