<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <c:choose>
                <c:when test="${sessionScope.user != null}">
                    <a id="logout-cust" class="anchorHover badge badge-primary" href="/logout">
                        Logout
                    </a>
                </c:when>
                <c:otherwise>
                    <div class="navbar-center">
                        <a class="anchorHover badge badge-primary" id="reg-cust" href="register">
                            Register
                        </a>
                        <a class="anchorHover badge badge-primary" id="login-cust" href="login">
                            Login
                        </a>
                    </div>
                </c:otherwise>
            </c:choose>
            <li><form action="/ads/search" method="get">
                <input type="text" name="userSearch" placeholder="Search Ads"><br>
                <input type="submit" value="Search">
            </form>
            </li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>