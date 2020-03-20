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
    <title>表单</title>
    <link rel="stylesheet" href="resources/layui/css/layui.css">
    <link rel="stylesheet" href="resources/layui/css/global.css">
</head>

<body >

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>表单集合演示</legend>
</fieldset>

<form class="layui-form" action="">

    <div class="layui-form-item">
        <label class="layui-form-label">用户名</label>
        <div class="layui-input-block">
            <input type="text" name="username"  placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">密码</label>
        <div class="layui-input-block">
            <input type="password" name="password"   placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
    <div class="layui-inline">
        <label class="layui-form-label">用户手机</label>
        <div class="layui-input-inline">
            <input type="tel" name="phone" lay-verify="required|phone" lay-reqtext="手机号是必填项，岂能为空？" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-inline">
        <label class="layui-form-label">用户邮箱</label>
        <div class="layui-input-inline">
            <input type="text" name="email"  autocomplete="off" class="layui-input">
        </div>
    </div>
</div>

    <div class="layui-form-item">
        <label class="layui-form-label">籍贯</label>
        <div class="layui-input-block">
            <select name="jiguan" lay-filter="jiguan" id="jiguan" lay-search="">
                <option value=""></option>
                <option value="北京">北京</option>
                <option value="上海" >上海</option>
                <option value="杭州">杭州</option>
                <option value="青岛">青岛</option>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">性别</label>
        <div class="layui-input-block">
            <input type="radio" name="sex" value="男" title="男" checked="">
            <input type="radio" name="sex" value="女" title="女">
            <input type="radio" name="sex" value="禁" title="禁用" disabled="">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">爱好</label>
        <div class="layui-input-block">
            <input type="checkbox" name="like[write]" title="写作">
            <input type="checkbox" name="like[read]" title="阅读" checked="">
            <input type="checkbox" name="like[game]" title="游戏" >
        </div>
    </div>


    <div class="layui-form-item">
        <label class="layui-form-label">开关-默认开</label>
        <div class="layui-input-block">
            <input type="checkbox" checked="" name="open" lay-skin="switch" lay-filter="switchTest" lay-text="是|否">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button type="submit" class="layui-btn" lay-submit=""  lay-filter="demo1">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            <button type="button" class="layui-btn"  id="btn1"  >向select追加一个深圳</button>
        </div>
    </div>


</form>
<script src="resources/layui/layui.js"></script>

<script>
   layui.use(['element','jquery','form'], function(){
       var $ = layui.jquery;
       var element = layui.element;
       var form = layui.form;
       var layedit = layui.layedit;

       form.on('submit(demo1)', function(data){
           console.log(data.elem) //被执行事件的元素DOM对象，一般为button对象
           console.log(data.form) //被执行提交的form对象，一般在存在form标签时才会返回
           console.log(data.field) //当前容器的全部表单字段，名值对形式：{name: value}
           return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
       });

       //向select里面添加一个元素 郑州
       $("#btn1").click(function () {
            //得到select对象
           var jg = $("#jiguan");
           alert(jg.html());
           jg.append("<option value=深圳>深圳</option>");
            alert(jg.html());
           //渲染
           //form.render("select");
           form.render();
       });

   });
</script>

</body>
</html>
