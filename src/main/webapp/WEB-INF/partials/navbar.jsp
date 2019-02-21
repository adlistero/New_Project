
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">
                Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-left">
            <c:choose>
                <c:when test="${sessionScope.user != null}">
                    <a id="logout-cust" class="anchorHover badge badge-primary" href="/logout">
                        Logout
                    </a>
                    <a class="anchorHover badge badge-primary" id="profile-cust" href="/profile">
                        Profile
                    </a>
                    <a class="anchorHover badge badge-primary" id="Eprofile-customer" href="/editProfile">
                        Edit Profile
                    </a>
                    <a class="anchorHover badge badge-primary" id="create-ad" href="/ads/create">
                        Create New Ad
                    </a>
                </c:when>
                <c:otherwise>
                    <div class="navbar-left">
                        <a class="anchorHover badge badge-primary" id="reg-cust" href="/register">
                            Register
                        </a>
                        <a class="anchorHover badge badge-primary" id="login-cust" href="/login">
                            Login
                        </a>
                        <a class="anchorHover badge badge-primary" id="profile-cust" href="/profile">
                            Profile
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