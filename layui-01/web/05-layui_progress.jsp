<%--
  Created by IntelliJ IDEA.
  User: wbnn
  Date: 2020/3/12
  Time: 0:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>进度条</title>
    <link rel="stylesheet" href="resources/layui/css/layui.css">
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>默认风格的进度条</legend>
</fieldset>

<div class="layui-progress">
    <div class="layui-progress-bar" lay-percent="80%"></div>
</div>
<div style="margin-top: 15px; width:1000px">
    <div class="layui-progress">
        <div class="layui-progress-bar" lay-percent="70%"></div>
    </div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>更多颜色选取</legend>
</fieldset>

<div class="layui-progress  layui-progress-big" lay-showpercent="true">
    <div class="layui-progress-bar layui-bg-red" lay-percent="20%"></div>
</div>

<br>

<div class="layui-progress">
    <div class="layui-progress-bar layui-bg-orange" lay-percent="30%"></div>
</div>

<br>

<div class="layui-progress">
    <div class="layui-progress-bar layui-bg-green" lay-percent="40%"></div>
</div>

<br>

<div class="layui-progress">
    <div class="layui-progress-bar layui-bg-blue" lay-percent="50%"></div>
</div>



<script src="resources/layui/layui.js"></script>

<script>
   layui.use(['element','jquery'], function(){


    });
</script>

</body>
</html>
