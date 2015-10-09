<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>
    <title>Spring Lab</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/resources/css/screen.css"/>"/>
</head>

<body>
<div id="container">
     <div id="content">
        <h1>Spring Lab!</h1>

        <form:form commandName="newMember" id="reg">
            <h2>Member Registration</h2>
            
            <table>
                <tbody>
                <tr>
                    <td><form:label path="name">Name:</form:label></td>
                    <td><form:input path="name"/></td>
                    <td><form:errors class="invalid" path="name"/></td>
                </tr>
                <tr>
                    <td><form:label path="email">Email:</form:label></td>
                    <td><form:input path="email"/></td>
                    <td><form:errors class="invalid" path="email"/></td>
                </tr>
                <tr>
                    <td><form:label path="phoneNumber">Phone #:</form:label></td>
                    <td><form:input path="phoneNumber"/></td>
                    <td><form:errors class="invalid" path="phoneNumber"/></td>
                </tr>
                <tr>
                    <td><p style="color: red">${error}</p></td>
                </tr>
                </tbody>
            </table>
            <table>
                <tr>
                    <td>
                        <input type="submit" value="Register" class="register"/>
                        <input type="reset" value="Cancel" class="cancel"/>
                    </td>
                </tr>
            </table>
        </form:form>
        <h2>Members</h2>
        <c:choose>
            <c:when test="${members.size()==0}">
                <em>No registered members.</em>
            </c:when>
            <c:otherwise>
                <table id="membersTable" class="simpletablestyle">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Phone #</th>
                            <th>REST URL</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${members}" var="member">
                            <tr>
                                <td>${member.id}</td>
                                <td>${member.name}</td>
                                <td>${member.email}</td>
                                <td>${member.phoneNumber}</td>
                                <td><a href="<c:url value="/rest/members/${member.id}"/>">/rest/members/${member.id}</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <table class="simpletablestyle">
                    <tr>
                        <td>
                            REST URL for all members: <a href="<c:url value="/rest/members"/>">/rest/members</a>
                        </td>
                    </tr>
                </table>
            </c:otherwise>
        </c:choose>
    </div>
     <div id="footer">
        <p>
           
        </p>
    </div>
</div>
</body>
</html>
