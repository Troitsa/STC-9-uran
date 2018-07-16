<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="hasRole('ROLE_ADMIN')">
<div class="col-sm-3 col-md-2 sidebar">
    <ul class="nav nav-sidebar">
        <li><a href="/person/personAll">Список персон</a></li>
        <li><a href="/subject/subjectAll">Список предметов</a></li>
        <li><a href="/speciality/specialityAll">Список специальностей</a></li>
        <li><a href="/group/groupAll">Учебные группы</a></li>
    </ul>
    <div><a href="/static/j_spring_security_logout">Выйти</a></div>

</div>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_USER')">
    <div class="col-sm-3 col-md-2 sidebar">
        <ul class="nav nav-sidebar">
            <li><a href="/student/myGroup">Моя группа</a></li>
            <li><a href="/student/mySubjects">Мои оценки</a></li>
        </ul>
        <div><a href="/static/j_spring_security_logout"> Выйти </a></div>
    </div>
</sec:authorize>

<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">