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
    <title>轮播</title>
    <link rel="stylesheet" href="resources/layui/css/layui.css">
    <link rel="stylesheet" href="resources/layui/css/global.css">

</head>

<body >

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>填充轮播元素 - 以图片为例</legend>
</fieldset>

<div class="layui-carousel" id="test10">
    <div carousel-item="">
        <div><img src="//res.layui.com/images/layui/demo/1.png"></div>
        <div><img src="//res.layui.com/images/layui/demo/2.png"></div>
        <div><img src="//res.layui.com/images/layui/demo/3.png"></div>
        <div><img src="//res.layui.com/images/layui/demo/4.png"></div>
        <div><img src="//res.layui.com/images/layui/demo/5.png"></div>
        <div><img src="//res.layui.com/images/layui/demo/6.png"></div>
        <div><img src="//res.layui.com/images/layui/demo/7.png"></div>
    </div>
</div>


<script src="resources/layui/layui.js"></script>

<script>
   layui.use(['element','jquery','carousel'], function(){
       var $ = layui.jquery;
       var element = layui.element;
       var carousel = layui.carousel;
       //图片轮播
       carousel.render({
           elem: '#test10'
           ,width: '778px'
           ,height: '440px'
           ,interval: 5000
       });
   });
</script>

</body>
</html>
