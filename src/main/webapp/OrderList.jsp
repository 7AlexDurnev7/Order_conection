<%--
  Created by IntelliJ IDEA.
  User: aleksandr
  Date: 15.10.2022
  Time: 23:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Заказы</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
          integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
          crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
          integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
          crossorigin="anonymous"></script>
</head>
<body>

<header>
<%--  <nav class="navbar navbar-expand-lg navbar-light bg-light"--%>
<%--       style="background-color: gray">--%>
<%--    <div>--%>
<%--      <a href="<%=request.getContextPath()%>/list" class="btn btn-primary btn-lg disabled">На главную</a>--%>
<%--    </div>--%>
<%--  </nav>--%>
</header>
<br>

<div class="row">

  <div class="container">
    <h3 class="text-center">Список заказчиков</h3>
<%--    <hr>--%>
<%--    <div class="container text-left" style="text-align: center">--%>

<%--      <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Добавить</a>--%>
<%--    </div>--%>
<%--    <br>--%>
    <table class="table table-striped">
      <thead>
      <tr>
        <th>ID</th>
        <th>Имя</th>
        <th>Эл.почта</th>
        <th>Номер телефона</th>
        <th>Адрес</th>
        <th>Выберите действие</th>
      </tr>
      </thead>
      <tbody>

      <c:forEach var="order" items="${listOrders}">

        <tr>
          <td><c:out value="${order.id}"/></td>
          <td><c:out value="${order.name}"/></td>
          <td><c:out value="${order.email}"/></td>
          <td><c:out value="${order.phone}"/></td>
          <td><c:out value="${order.address}"/></td>
          <td><a href="edit?id=<c:out value='${order.id}' />">Изменить</a>
            &nbsp;&nbsp;&nbsp;&nbsp; <a
                    href="delete?id=<c:out value='${order.id}' />">Удалить</a></td>
        </tr>

      </c:forEach>

      </tbody>
    </table>
  </div>
</div>

<div class="container text-left" style="text-align: right">
  <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Добавить нового заказчика</a>
</div>
</body>
</html>