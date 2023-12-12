
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하시겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
</head>

<body>
    <div><h1>자유게시판</h1><div id="logout"><a href="../login/logout">logout</a></div></div>
    <table id="list" width="90%">
    <tr>
        <th>번호</th>
        <th>이름</th>
        <th>나이</th>
        <th>학기 수</th>
        <th>전공</th>
        <th>지원 파트</th>
        <th>성별</th>
        <th>등록일</th>
        <th>지원 동기</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>

    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td>${u.name}</td>
            <td>${u.age}</td>
            <td>${u.semester}</td>
            <td>${u.department}</td>
            <td>${u.part}</td>
            <td>${u.MF}</td>
            <td>${u.regdate}</td>
            <td>${u.motive}</td>
            <td><a href="editform/${u.seq}">글수정</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">글삭제</a></td>
        </tr>
    </c:forEach>
    </table>

    <br/><button type="button" onclick="location.href='add'">새글쓰기</button>
</body>
</html>
