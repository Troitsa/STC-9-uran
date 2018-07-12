<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../../header.jsp" %>
<%@ include file="../../../aside.jsp" %>

<h2>${lesson.date} ${lesson.theme}</h2>

<table class="table">
    <col width="15px">
    <col width="250px">
    <col width="30px">
    <col width="30px">
    <tr>
        <th>№</th>
        <th>Имя студента</th>
        <th>Присутствие</th>
        <th>Оценка</th>
    </tr>
    <c:forEach var="perform" items="${performanceList}">
        <tr>
            <td>${perform.person.id}</td>
            <td>${perform.person.name}</td>
            <td>
                <c:if test="${perform.attendance}">+</c:if>
                <c:if test="${!(perform.attendance)}"><span style="color:#f00;">Н</span></c:if>
            </td>
            <td><c:if test="${perform.mark!=0}">${perform.mark}</c:if></td>
        </tr>
    </c:forEach>
</table>
<%@ include file="../../../footer.jsp" %>