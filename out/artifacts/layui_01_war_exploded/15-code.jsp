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
    <title>代码修饰器</title>
    <link rel="stylesheet" href="resources/layui/css/layui.css">
    <link rel="stylesheet" href="resources/layui/css/global.css">

</head>

<body >

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>默认修饰</legend>
</fieldset>

<pre class="layui-code">//在里面存放任意的代码
Lay.fn.event = function(modName, events, params){
  var that = this, result = null, filter = events.match(/\(.*\)$/)||[];
  var set = (events = modName + '.'+ events).replace(filter, '');
};
      </pre>

<script src="resources/layui/layui.js"></script>

<script>
   layui.use(['element','jquery','carousel','code'], function(){
       var $ = layui.jquery;
       var element = layui.element;
       var carousel = layui.carousel;
       var code = layui.code;
       layui.code({
           title:'我的代码',
           skin:'notepad',
           about:false
       });

   });
</script>

</body>
</html>
