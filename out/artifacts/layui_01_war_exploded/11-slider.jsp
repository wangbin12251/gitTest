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
    <title>滑块</title>
    <link rel="stylesheet" href="resources/layui/css/layui.css">
    <link rel="stylesheet" href="resources/layui/css/global.css">
<style>
    .demo-slider{
        margin-top: 20px;
    }
</style>
</head>

<body style="padding: 20px">

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>基本滑块</legend>
</fieldset>

<div id="slideTest1" class="demo-slider"></div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>定义初始值</legend>
</fieldset>

<div id="slideTest2" class="demo-slider"></div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>设置最大最小值</legend>
</fieldset>

<div id="slideTest3" class="demo-slider"></div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>设置步长</legend>
</fieldset>

<div id="slideTest4" class="demo-slider" ></div>

<div id="slideTest5" class="demo-slider"></div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>设置提示文本</legend>
</fieldset>

<div id="slideTest6" class="demo-slider"></div>
<div id="slideTest7" class="demo-slider"></div>
<div id="test-slider-tips1" style="position:relative; left: 30px; top: -20px;"></div>


<script src="resources/layui/layui.js"></script>

<script>
   layui.use(['element','jquery','colorpicker','layer','slider'], function(){
       var $ = layui.jquery;
       var element = layui.element;
       var colorpicker = layui.colorpicker;
       var layer = layui.layer;
       var slider = layui.slider;
       //默认滑块
       slider.render({
           elem: '#slideTest1'
       });

       //定义初始值
       slider.render({
           elem: '#slideTest2'
           ,value: 20 //初始值
       });

       //设置最大最小值
       slider.render({
           elem: '#slideTest3'
           ,min: 20 //最小值
           ,max: 50 //最大值
       });
       //设置步长
       slider.render({
           elem: '#slideTest4'
           ,step: 10 //步长
       });

       slider.render({
           elem: '#slideTest5'
           ,step: 10 //步长
           ,showstep: true //开启间隔点
       });

       //设置提示文本
       slider.render({
           elem: '#slideTest6'
           ,min: 20
           ,max: 1000
           ,setTips: function(value){ //自定义提示文本
               return value + 'GB';
           }
       });
       slider.render({
           elem: '#slideTest7'
           ,tips: false //关闭默认提示层
           ,change: function(value){
               $('#test-slider-tips1').html('当前数值：'+ value);
           }
       });

   });
</script>

</body>
</html>
