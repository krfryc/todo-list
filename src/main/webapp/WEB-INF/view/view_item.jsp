<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import ="pl.kfryc.util.AttributeNames" %>
<%@ page import="pl.kfryc.util.Mappings" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Item</title>
</head>
<body>
    <div align="center">
       <form:form method="GET" modelAttribute="${AttributeNames.TODO_ITEM}">
            <table>
                <tr>
                    <td><label>ID</label></td>
                    <td>
                        <form:input path="id" disabled="true" />
                    </td>
                </tr>
                <tr>
                    <td><label>Title</label></td>
                    <td><form:input path="title" disabled="true"/></td>
                </tr>
                <tr>
                    <td><label>Deadline</label></td>
                    <td><form:input path="deadline" disabled="true"/></td>
                </tr>
                <tr>
                    <td><label>Details</label></td>
                    <td><form:textarea path="details" disabled="true"/></td>
                </tr>
            </table>
            <c:url var="itemsLink" value="${Mappings.ITEMS}"/>
            <a href="${itemsLink}">Show Todo Items</a>
       </form:form>
    </div>
</body>
</html>