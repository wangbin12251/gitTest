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
    <title>颜色选择器</title>
    <link rel="stylesheet" href="resources/layui/css/layui.css">
    <link rel="stylesheet" href="resources/layui/css/global.css">

</head>

<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>常规使用</legend>
</fieldset>

<div style="margin-left: 30px;">
    <div id="test1"></div>
    <div id="test2" style="margin-left: 30px;"></div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>表单赋值</legend>
</fieldset>

<div style="margin-left: 30px;">
    <form class="layui-form" action="">
        <div class="layui-form-item">
            <div class="layui-input-inline" style="width: 120px;">
                <input type="text" value="" placeholder="请选择颜色" class="layui-input" id="test-form-input">
            </div>
            <div class="layui-inline" style="left: -11px;">
                <div id="test-form"></div>
            </div>
        </div>
    </form>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>RGB / RGBA 色值</legend>
</fieldset>
<div style="margin-left: 30px;">
    <div id="test3"></div>
    <div id="test4" style="margin-left: 30px;"></div>
</div>



<script src="resources/layui/layui.js"></script>

<script>
   layui.use(['element','jquery','colorpicker','layer'], function(){
       var $ = layui.jquery;
       var element = layui.element;
       var colorpicker = layui.colorpicker;
       var layer = layui.layer;
       //常规使用
       colorpicker.render({
           elem: '#test1' //绑定元素
           ,change: function(color){ //颜色改变的回调
               layer.tips('选择了：'+ color, this.elem, {
                   tips: 1
               });
           }
       });
       //初始色值
       colorpicker.render({
           elem: '#test2'
           ,color: '#2ec770' //设置默认色
           ,done: function(color){
               layer.tips('选择了：'+ color, this.elem);
           }
       });
       //表单赋值
       colorpicker.render({
           elem: '#test-form'
           ,color: '#1c97f5'
           ,done: function(color){
               $('#test-form-input').val(color);
           }
       });

       //RGB 、RGBA
       colorpicker.render({
           elem: '#test3'
           ,color: 'rgb(68,66,66)'
           ,format: 'rgb' //默认为 hex
       });
       colorpicker.render({
           elem: '#test4'
           ,color: 'rgba(68,66,66,0.5)'
           ,format: 'rgb'
           ,alpha: true //开启透明度滑块
       });

    });
</script>

</body>
</html>
