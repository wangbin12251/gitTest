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
    <title>按钮</title>
    <link rel="stylesheet" href="resources/layui/css/layui.css">
</head>
<body>

<fieldset class="layui-elem-field site-demo-button" style="margin-top: 30px;">
    <legend>按钮主题</legend>
    <div>
        <button type="button" class="layui-btn layui-btn-primary">原始按钮</button>

        <a class="layui-btn layui-btn-primary">我是按钮</a>
        <span class="layui-btn layui-btn-primary">我也是按钮</span>

        <button type="button" class="layui-btn">默认按钮</button>
        <button type="button" class="layui-btn layui-btn-normal">百搭按钮</button>
        <button type="button" class="layui-btn layui-btn-warm">暖色按钮</button>
        <button type="button" class="layui-btn layui-btn-danger">警告按钮</button>
        <button type="button" class="layui-btn layui-btn-disabled">禁用按钮</button>
    </div>
</fieldset>

<fieldset class="layui-elem-field site-demo-button" style="margin-top: 30px;">
    <legend>按钮尺寸</legend>
    <div>
        <button type="button" class="layui-btn layui-btn-lg">大型按钮</button>

        <button type="button" class="layui-btn">默认按钮</button>
        <button type="button" class="layui-btn layui-btn-normal layui-btn-sm">小型按钮</button>
        <button type="button" class="layui-btn layui-btn-warm layui-btn-xs">迷你按钮</button>
        <button type="button" class="layui-btn layui-btn-danger layui-btn-xs">迷你警告按钮</button>
    </div>
</fieldset>

<fieldset class="layui-elem-field site-demo-button" style="margin-top: 30px;">
    <legend>图标按钮</legend>
    <div>
        <button type="button" class="layui-btn layui-btn-lg layui-icon layui-icon-windows">图标按钮</button>

        <button type="button" class="layui-btn">
            <span class="layui-icon ">&#xe677;</span>微信按钮
        </button>
        <button type="button" class="layui-btn layui-btn-normal layui-btn-sm">小型按钮</button>
    </div>
</fieldset>

<fieldset class="layui-elem-field site-demo-button" style="margin-top: 30px;">
    <legend>圆角按钮</legend>
    <div>
        <button type="button" class="layui-btn layui-btn-primary layui-btn-radius">原始按钮</button>

        <button type="button" class="layui-btn layui-btn-radius">默认按钮</button>
        <button type="button" class="layui-btn layui-btn-normal layui-btn-radius">百搭按钮</button>
        <button type="button" class="layui-btn layui-btn-warm layui-btn-radius">暖色按钮</button>
        <button type="button" class="layui-btn layui-btn-danger layui-btn-radius">警告按钮</button>
        <button type="button" class="layui-btn layui-btn-disabled layui-btn-radius">禁用按钮</button>
    </div>
</fieldset>

<fieldset class="layui-elem-field site-demo-button">
    <legend>风格混搭的按钮</legend>
    <div>
        <button type="button" class="layui-btn layui-btn-lg layui-btn-primary layui-btn-radius">大型加圆角</button>
        <a href="http://www.baidu.com" class="layui-btn" target="_blank">跳转的按钮</a>
        <button type="button" class="layui-btn layui-btn-sm layui-btn-normal"><i class="layui-icon"></i> 删除</button>
        <button type="button" class="layui-btn layui-btn-xs layui-btn-disabled"><i class="layui-icon"></i> 分享</button>
    </div>
</fieldset>

<fieldset class="layui-elem-field site-demo-button">
    <legend>按钮组</legend>
    <div class="layui-btn-group">
        <button type="button" class="layui-btn" id="add">增加</button>
        <button type="button" class="layui-btn " id="update">编辑</button>
        <button type="button" class="layui-btn" id="delete">删除</button>
    </div>
    <div class="layui-btn-group">
        <button type="button" class="layui-btn layui-btn-sm"><i class="layui-icon"></i></button>
        <button type="button" class="layui-btn layui-btn-sm"><i class="layui-icon"></i></button>
        <button type="button" class="layui-btn layui-btn-sm"><i class="layui-icon"></i></button>
        <button type="button" class="layui-btn layui-btn-sm"><i class="layui-icon"></i></button>
    </div>
    <div class="layui-btn-group">
        <button type="button" class="layui-btn layui-btn-primary layui-btn-sm">文字</button>
        <button type="button" class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon"></i></button>
        <button type="button" class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon"></i></button>
        <button type="button" class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon"></i></button>
    </div>
</fieldset>

<script src="resources/layui/layui.js"></script>

<script type="text/javascript">
    layui.use(['jquery'],function () {
        var $=layui.jquery;
       /*$(".layui-btn").click(function () {
            alert($(this).html())
        })*/
        $("#add").click(function () {
            alert($(this).html());
        })
    })
</script>

</body>
</html>
