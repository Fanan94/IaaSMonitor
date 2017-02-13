<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <title>登录-OpenStack</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <style type="text/css"></style>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="javascript/jquery-3.1.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <form action="/login" method="post">
                <fieldset>
                    <input type="hidden" name="requestUrl" value="http://172.17.203.101:5000/v2.0/tokens">
                    <legend>登录</legend>
                    <label>项目名</label>
                    <input type="text" name="tenantName" value="swiftproj"/>
                    <label>用户名</label>
                    <input type="text" name="userName" value="testsw"/>
                    <label>密码</label>
                    <input type="password" name="passWord" value="testsw"/><br>
                    <c:if test="${sessionScope.errorInfo.length()>0}" var="condition" scope="session">
                        <h4><span class="label label-danger">${sessionScope.errorInfo}</span></h4>
                    </c:if>
                    <button class="btn" type="submit">提交</button>
                </fieldset>
            </form>
        </div>
    </div>
</div>
</body>
</html>
