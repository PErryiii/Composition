<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>UT作文管理系统登录</title>
    </head>
    <body>
        <div id="container">
            <form>
                <label for="managerAccount">ManagerAccount:</label>
                <input type="text" id="managerAccount" name="managerAccount">
                <label for="managerPassword">Password:</label>
                <input type="password" id="managerPassword" name="managerPassword">
                <div id="lower">
<%--                    <input type="checkbox"><label for="checkbox">Keep me logged in</label>--%>
                    <input type="submit" value="Login" onclick="managerLogin()">
                </div><!--/ lower-->
            </form>

            <script type="text/javascript">
                function managerLogin() {
                    var form = document.forms[0];
                    form.action = "<%=basePath %>UT/managerLogin";
                    form.method = "post";
                    form.submit();
                }
            </script>
        </div>
    </body>
</html>