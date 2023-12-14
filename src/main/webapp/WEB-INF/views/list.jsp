
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
    <div><h1>성가대 지원 게시판</h1><div id="logout"><a href="../login/logout">logout</a></div></div>
    <table id="list" width="90%">
    <tr>
        <th>번호</th>
        <th>이름</th>
        <th>나이</th>
        <th>지원 파트</th>
        <th>지원 동기</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>

    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td class="clickable" onclick="location.href='getform/${u.seq}'">${u.name}</td>
            <td class="clickable" onclick="location.href='getform/${u.seq}'">${u.age}</td>
            <td class="clickable" onclick="location.href='getform/${u.seq}'">${u.part}</td>
            <td class="clickable" onclick="location.href='getform/${u.seq}'">${u.motive}</td>
            <td><a href="editform/${u.seq}">글수정</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">글삭제</a></td>
        </tr>
    </c:forEach>
    </table>

    <br/><button type="button" onclick="location.href='add'">새글쓰기</button>
</body>
</html>
