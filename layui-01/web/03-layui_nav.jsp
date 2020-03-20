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
    <title>导航菜单</title>
    <link rel="stylesheet" href="resources/layui/css/layui.css">
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>水平导航菜单</legend>
</fieldset>

<ul class="layui-nav">
    <li class="layui-nav-item"><a href="">最新活动</a></li>
    <li class="layui-nav-item layui-this">
        <a href="javascript:;">产品</a>
        <dl class="layui-nav-child">
            <dd><a href="">选项1</a></dd>
            <dd class="layui-this"><a href="">选项2</a></dd>
            <dd><a href="">选项3</a></dd>
        </dl>
    </li>
    <li class="layui-nav-item"><a href="">大数据</a></li>
    <li class="layui-nav-item">
        <a href="javascript:;">解决方案</a>
        <dl class="layui-nav-child">
            <dd><a href="">移动模块</a></dd>
            <dd><a href="">后台模版</a></dd>
            <dd class="layui-this"><a href="">选中项</a></dd>
            <dd><a href="">电商平台</a></dd>
        </dl>
    </li>
    <li class="layui-nav-item"><a href="">社区</a></li>
    <li class="layui-nav-item" lay-unselect="" style="float: right">
        <a href="javascript:;"><img src="//t.cn/RCzsdCq" class="layui-nav-img">我</a>
        <dl class="layui-nav-child">
            <dd><a href="javascript:;">修改信息</a></dd>
            <dd><a href="javascript:;">安全管理</a></dd>
            <dd><a href="javascript:;">退了</a></dd>
        </dl>
    </li>
</ul>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>垂直导航菜单</legend>
</fieldset>

<ul class="layui-nav layui-nav-tree >
    <li class="layui-nav-item"><a href="">最新活动</a></li>
    <li class="layui-nav-item layui-this">
        <a href="javascript:;">产品</a>
        <dl class="layui-nav-child">
            <dd><a href="">选项1</a></dd>
            <dd class="layui-this"><a href="">选项2</a></dd>
            <dd><a href="">选项3</a></dd>
        </dl>
    </li>
    <li class="layui-nav-item"><a href="">大数据</a></li>
    <li class="layui-nav-item">
        <a href="javascript:;">解决方案</a>
        <dl class="layui-nav-child">
            <dd><a href="">移动模块</a></dd>
            <dd><a href="">后台模版</a></dd>
            <dd class="layui-this"><a href="">选中项</a></dd>
            <dd><a href="">电商平台</a></dd>
        </dl>
    </li>
    <li class="layui-nav-item"><a href="">社区</a></li>
</ul>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>导航带徽章和图片</legend>
</fieldset>

<ul class="layui-nav">
    <li class="layui-nav-item">
        <a href="">控制台<span class="layui-badge">9</span></a>
    </li>
    <li class="layui-nav-item">
        <a href="">个人中心<span class="layui-badge-dot"></span></a>
    </li>
    <li class="layui-nav-item" lay-unselect="">
        <a href="javascript:;"><img src="//t.cn/RCzsdCq" class="layui-nav-img">我</a>
        <dl class="layui-nav-child">
            <dd><a href="javascript:;">修改信息</a></dd>
            <dd><a href="javascript:;">安全管理</a></dd>
            <dd><a href="javascript:;">退了</a></dd>
        </dl>
    </li>
</ul>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>默认面包屑</legend>
</fieldset>

<span class="layui-breadcrumb">
  <a href="/">首页</a>
  <a href="/">演示</a>
  <a><cite>导航元素</cite></a>
</span>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>自定义分隔符的面包屑</legend>
</fieldset>

<span class="layui-breadcrumb" lay-separator="&">
  <a href="">首页</a>
  <a href="">国际新闻</a>
  <a href="">亚太地区</a>
  <a><cite>正文</cite></a>
</span>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>还可以用于门户频道的面包屑</legend>
</fieldset>

<span class="layui-breadcrumb" lay-separator="&&">
  <a href="">娱乐</a>
  <a href="">八卦</a>
  <a href="">体育</a>
  <a href="">搞笑</a>
  <a href="">视频</a>
  <a href="">游戏</a>
  <a href="">综艺</a>
</span>

<script src="resources/layui/layui.js"></script>

<script>
    layui.use(['element'], function(){
    });
</script>

</body>
</html>
