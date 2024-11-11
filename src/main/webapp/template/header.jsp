<%-- 
    Document   : header.jsp
    Created on : 10 Nov 2024, 22:37:09
    Author     : singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="w3-bar w3-black">
    <a class="w3-bar-item w3-button w3-mobile w3-green" href="${request.getContextPath}">Home</a>
    <a class="w3-bar-item w3-button w3-mobile" href="${request.getContextPath}/home/userHome.jsp"><img src="images/user-solid.jpg" alt="User Generic"></a>
    <a class="w3-bar-item w3-button w3-mobile" href="${request.getContextPath}/register/userRegister.jsp">User Register</a>
    <c:choose>
        <c:when test="<%= session.getAttribute("access") == null %>">
            <a class="w3-bar-item w3-button w3-mobile" href="${request.getContextPath}/login.jsp">Log In</a>
        </c:when>
        <c:otherwise>
            <a class="w3-bar-item w3-button w3-mobile" href="${request.getContextPath}/logout.jsp">Log Out</a>
        </c:otherwise>
    </c:choose>
    <a id="createForumLink" class="w3-bar-item w3-button w3-mobile"  href="${request.getContextPath}/createForum/createForum.jsp">Create Forum</a>
    <div class="w3-dropdown-hover w3-mobile">
      <button class="w3-button">Create Survey <i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block w3-dark-grey">
          <form prependId="false"><a id="createSurveyLink" href="${request.getContextPath}/createSurvey/createSurvey.jsp"  class="w3-bar-item w3-button w3-mobile"/>New Survey</a></form>
          <form prependId="false"><a id="createSurveyLink" href="${request.getContextPath}/createSurveyFromForum/createSurveyFromForum.jsp"  class="w3-bar-item w3-button w3-mobile"/>Survey From Forum</a></form>
      </div>
    </div>
    <a class="w3-bar-item w3-button w3-mobile" href="${request.getContextPath}/nominate/nominateCandidate.jsp">Nominate Candidate</a>
    <!-- Align items to the right now -->
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-right w3-padding-large w3-hover-white" title="My Account">
        <img src="https://www.w3schools.com/w3images/avatar2.png" class="w3-circle" style="height:23px;width:23px" alt="Avatar"/>
    </a>
    <form method="post" action="${request.getContextPath}/SearchServlet"><input type="submit" value="GO" class="w3-bar-item w3-right w3-button"/><input type="text" name="searchPhrase" class="w3-bar-item w3-right" placeholder="Search ..."/></h:form>
    <div class="w3-dropdown-hover w3-mobile">
      <button class="w3-button">Blogs <i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block w3-dark-grey">
          <a href="${request.getContextPath}/info/blogs.jsp" class="w3-bar-item w3-button w3-mobile w3-right">View Blogs</a>
          <a href="${request.getContextPath}/PublishBlogServlet" class="w3-bar-item w3-button w3-mobile w3-right">Publish Blog</a>
      </div>
    </div>
    <a href="info/contactUs.jsp" class="w3-bar-item w3-button w3-mobile w3-right">Contact Us</a>
    <div class="w3-dropdown-hover w3-mobile w3-right">
      <button class="w3-button">About <i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block w3-dark-grey">
        <a href="info/aboutUs.jsp" class="w3-bar-item w3-button w3-mobile">About Us</a>
        <a href="info/aboutLogo.jsp" class="w3-bar-item w3-button">About Logo</a>
        
      </div>
    </div>
    <a href="info/videos.jsp" class="w3-bar-item w3-button w3-mobile w3-right">Videos</a>
</div>
