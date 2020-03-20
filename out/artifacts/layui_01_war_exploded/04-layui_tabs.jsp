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
    <title>选项卡</title>
    <link rel="stylesheet" href="resources/layui/css/layui.css">
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>默认风格的Tab</legend>
</fieldset>

<div class="layui-tab" lay-allowclose="true">
    <ul class="layui-tab-title">
        <li >网站设置</li>
        <li>用户管理</li>
        <li class="layui-this">权限分配</li>
        <li>商品管理</li>
        <li>订单管理</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item ">
            1. 高度默认自适应，也可以随意固宽。
            <br>2. Tab进行了响应式处理，所以无需担心数量多少。
        </div>
        <div class="layui-tab-item">内容2</div>
        <div class="layui-tab-item">内容3</div>
        <div class="layui-tab-item layui-show">内容4</div>
        <div class="layui-tab-item">内容5</div>
    </div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>简洁风格的Tab</legend>
</fieldset>

<div class="layui-tab layui-tab-brief">
    <ul class="layui-tab-title">
        <li class="layui-this">网站设置</li>
        <li>用户管理</li>
        <li>权限分配</li>
        <li>商品管理</li>
        <li>订单管理</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            1. 高度默认自适应，也可以随意固宽。
            <br>2. Tab进行了响应式处理，所以无需担心数量多少。
        </div>
        <div class="layui-tab-item">内容2</div>
        <div class="layui-tab-item">内容3</div>
        <div class="layui-tab-item">内容4</div>
        <div class="layui-tab-item">内容5</div>
    </div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>卡片风格的Tab</legend>
</fieldset>

<div class="layui-tab layui-tab-card">
    <ul class="layui-tab-title">
        <li class="layui-this">网站设置</li>
        <li>用户管理</li>
        <li>权限分配</li>
        <li>商品管理</li>
        <li>订单管理</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            1. 高度默认自适应，也可以随意固宽。
            <br>2. Tab进行了响应式处理，所以无需担心数量多少。
        </div>
        <div class="layui-tab-item">内容2</div>
        <div class="layui-tab-item">内容3</div>
        <div class="layui-tab-item">内容4</div>
        <div class="layui-tab-item">内容5</div>
    </div>
</div>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>可删除增加的Tab</legend>
</fieldset>

<div class="layui-tab " lay-filter="demo" lay-allowclose="true">
    <ul class="layui-tab-title" >
        <li lay-id="5" class="layui-this mydemo">网站设置</li>
        <li lay-id="1" class="mydemo">用户管理</li>
        <li lay-id="2" class="mydemo">权限分配</li>
        <li lay-id="3" class="mydemo">商品管理</li>
        <li lay-id="4" class="mydemo">订单管理</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            1. 高度默认自适应，也可以随意固宽。
            <br>2. Tab进行了响应式处理，所以无需担心数量多少。
        </div>
        <div class="layui-tab-item">内容2</div>
        <div class="layui-tab-item">内容3</div>
        <div class="layui-tab-item">内容4</div>
        <div class="layui-tab-item">内容5</div>
    </div>
    <div class="layui-btn-group">
        <button type="button" class="layui-btn" id="add">增加</button>
        <button type="button" class="layui-btn " id="change">切换</button>
        <button type="button" class="layui-btn" id="delete">删除</button>
        <button type="button" class="layui-btn" id="deleteAll">删除所有</button>
    </div>
</div>

<script src="resources/layui/layui.js"></script>

<script>
   layui.use(['element','jquery'], function(){
        var $=layui.jquery;
        var element=layui.element;
        $('#add').click(function () {
            element.tabAdd('demo', {
                title: '选项卡的标题'
                ,content: '选项卡的内容' //支持传入html
            });
        })
       $('#change').click(function () {
           element.tabChange('demo', 1);
       })
       $('#delete').click(function () {
           element.tabDelete('demo', 2); //删除 lay-id="xxx" 的这一项
       })
       $('#deleteAll').click(function () {
            var list = $(".mydemo");
            $.each(list,function (index,item) {
                var layid = item.getAttribute("lay-id");
                element.tabDelete('demo', layid);
            });
       })

    });
</script>

</body>
</html>
