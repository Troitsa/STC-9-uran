<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<div class="container">
  <main class="content">
    <h1>Главная страница</h1>
    <p><a href="/person/personAll">Список персон</a></p>
    <p><a href="/subject/subjectAll">Список предметов</a></p>
    <p><a href="/speciality/specialityAll">Список специальностей</a></p>
    <p><a href="/role/roleAll">Список типов пользователей</a></p>
  </main><!-- .content -->
</div>
<!-- .container-->
<%@ include file="aside.jsp" %>
<%@ include file="footer.jsp" %>