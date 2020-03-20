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
    <title>布局</title>
    <link rel="stylesheet" href="resources/layui/css/layui.css">
<style>
    .grid-demo{
        height: 100px;
        background: #00FF00;
    }
    .grid-demo-bg1{
        background: #FFFF00;
    }
</style>


</head>

<body>


<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>始终等比例水平排列</legend>
</fieldset>

<div class="layui-row">
    <div class="layui-col-xs6">
        <div class="grid-demo grid-demo-bg1">6/12</div>
    </div>
    <div class="layui-col-xs6">
        <div class="grid-demo">6/12</div>
    </div>
</div>
<div class="layui-row">
    <div class="layui-col-xs3">
        <div class="grid-demo grid-demo-bg1">3/12</div>
    </div>
    <div class="layui-col-xs3">
        <div class="grid-demo">3/12</div>
    </div>
    <div class="layui-col-xs3">
        <div class="grid-demo grid-demo-bg1">3/12</div>
    </div>
    <div class="layui-col-xs3">
        <div class="grid-demo">3/12</div>
    </div>
</div>

<script src="resources/layui/layui.js"></script>

<script>
   layui.use(['element','jquery'], function(){
       var $ = layui.jquery;
       var element = layui.element;


    });
</script>

</body>
</html>
