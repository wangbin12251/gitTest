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
    <title>时间和日期选择器</title>
    <link rel="stylesheet" href="resources/layui/css/layui.css">
    <link rel="stylesheet" href="resources/layui/css/global.css">
</head>

<body >

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>常规用法</legend>
</fieldset>

<div class="layui-form">
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">中文版</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" id="test1" placeholder="yyyy-MM-dd">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">国际版</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" id="test2" placeholder="yyyy-MM-dd">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">初始值</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" id="test3" placeholder="yyyy-MM-dd">
            </div>
        </div>
    </div>
</div>


<script src="resources/layui/layui.js"></script>

<script>
   layui.use(['element','jquery','carousel','laydate'], function(){
       var $ = layui.jquery;
       var element = layui.element;
       var carousel = layui.carousel;
       var laydate = layui.laydate;
       //常规用法
       laydate.render({
           elem: '#test1',
           type:   'datetime',
           range: true  //或 range: '~' 来自定义分割字符
           ,calendar:true
       });

       //国际版
       laydate.render({
           elem: '#test2'
           ,type: 'datetime'
           ,format:'yyyy年MM月dd日 HH时mm分ss秒'
       });
       //初始值
       laydate.render({
           elem: '#test3'
           ,value: new Date()
           ,min: -7 //7天前
           ,max: 7 //7天后
       });

   });
</script>

</body>
</html>
