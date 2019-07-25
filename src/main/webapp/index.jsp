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
    <title>登录</title>
</head>

<style type=text/css >
    html, body {
        width: 100%;
        height: 100%;
        font-family: "Helvetica Neue", Helvetica, sans-serif;
        color: #444;
        -webkit-font-smoothing: antialiased;    background: #FFCE00;
    }
    #container{
        position: fixed;
        width: 340px;
        height: 280px;
        top: 50%;
        left: 50%;
        margin-top: -140px;
        margin-left: -170px;
        background: #fff;
        border-radius: 3px;
        border: 1px solid #ccc;
        box-shadow: 0 1px 2px rgba(0, 0, 0, .1);
    }
    form {
        margin: 0 auto;
        margin-top: 20px;
    }
    label {
        color: #37474f;
        display: inline-block;
        margin-left: 18px;
        padding-top: 10px;
        font-size: 14px;
    }
    /* input */
    p a{
        font-size: 11px;
        color: #aaa;
        float: right;
        margin-top: -13px;
        margin-right: 20px;
        -webkit-transition: all .4s ease;
        -moz-transition: all .4s ease;
        transition: all .4s ease;
        box-shadow: inset 0 1.5px 3px rgba(220, 220, 220, .1), 0 0 0 5px #f5f7f8;
        -webkit-transition: all .4s ease;
        -moz-transition: all .4s ease;
        transition: all .4s ease;
    }
    p a:hover{
        color: #555;
    }
    input{
        font-family: "Helvetica Neue", helvetica, sans-serif;
        font-size: 12px;
        outline: none;
    }
    input[type=text],
    input[type=password] {
        color: #777;
        padding-left: 10px;
        margin: 10px;
        margin-top: 12px;
        margin-left: 18px;
        width: 290px;
        height: 35px;
        border: 1px solid #c7d0d2;
        border-radius: 2px;
        box-shadow: inset 0 1.1px 3px rgba(220, 220, 220, .1), 0 0 0 1px #eceff1;
        -moz-transition: all .4s ease;
        transition: all .4s ease;
    }
    input[type=text]:hover,
    input[type=password]:hover {
        border: 1px solid #b6bfc0;
        box-shadow: inset 0 1.5px 3px rgba(220, 220, 220, .3), 0 0 0 5px #cfd8dc;
    }
    input[type=text]:focus,
    input[type=password]:focus {
        border: 1px solid #b6bfc0;
        box-shadow: inset 0 1.5px 3px rgba(220, 220, 220, .1), 0 0 0 5px #cfd8dc;
    }
    /* submit */
    #lower {
        background: #cfd8dc;
        width: 100%;
        height: 75px;
        margin-top: 20px;
		position: relative; 
    }
    input[type=submit] {
		  position: absolute;
		  left: 0;
          right: 0;
          bottom: 0;
          top:0;
          margin: auto;
		  display: block; 
		  width: 120px; 
		  height: 45px; 
		  background: #607d8b;
		  border-radius: 10px;
		  font-size: 20px;
		  font-weight: bold;
		  color: #fff;
		  outline: 0; 
		  cursor: pointer; 
		  border: 1px solid #607d8b;
		  box-shadow: 0 1px 2px rgba(0, 0, 0, .3), inset 0 1px 0 rgba(255, 255, 255, .5);
    }
	input[type=submit]:hover {
        background-image: -webkit-gradient(linear, left top, left bottom, from(#607d8b), to(#546e7a));
    }
    input[type=submit]:active {
        background-image: -webkit-gradient(linear, left top, left bottom, from(#546e7a), to(#607d8b));
    }
}
}

</style>


<body>
<div id="container">
    <form>
        <label for="managerAccount">Account:</label>
        <input type="text" id="managerAccount" name="managerAccount">
        <label for="managerPassword">Password:</label>
        <input type="password" id="managerPassword" name="managerPassword">
        <div id="lower">
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