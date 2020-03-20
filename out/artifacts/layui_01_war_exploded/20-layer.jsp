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
    <title>弹出层</title>
    <link rel="stylesheet" href="resources/layui/css/layui.css">
    <link rel="stylesheet" href="resources/layui/css/global.css">
</head>

<body style="padding: 20px" >

        <button type="button" class="layui-btn" id="btn1">layer.open.type=1</button>
        <button type="button" class="layui-btn" id="btn2">layer.open.type=2</button>
        <button type="button" class="layui-btn" id="btn3">layer.open.type=3</button>

      <div id="mydiv" style="display: none;padding: 10px" >
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
      </div>


<script src="resources/layui/layui.js"></script>

<script>
       layui.use(['element','jquery','form','layer'], function(){
           var $ = layui.jquery;
           var element = layui.element;
           var form = layui.form;
           var layer = layui.layer;
           //alert
           $("#btn1").click(function () {
               layer.open({
                   type:0,  //设置类型,默认0 1是页面层 2是ifream层
                   title:'提示',
                   content:'你好吗?',  //type=0时为内容
                   skin:'layui-layer-lan',
                   // area:'500px'
                   area:['500px','300px'],
                   offset:'auto',  //坐标
                   icon:'7',
                   btn:['按钮1','按钮2','按钮3']
                   ,yes: function(index, layero){
                       //按钮【按钮一】的回调
                       alert("按钮1")
                       layer.close(index);
                   }
                   ,btn2: function(index, layero){
                       //按钮【按钮二】的回调
                        alert("按钮2")
                       return false //开启该代码可禁止点击该按钮关闭
                   }
                   ,btn3: function(index, layero){
                       //按钮【按钮三】的回调
                        alert("按钮3")
                       //return false 开启该代码可禁止点击该按钮关闭
                   }
                   ,cancel: function(){
                       //右上角关闭回调

                       //return false 开启该代码可禁止点击该按钮关闭
                   },
                   btnAlign: 'c',
                   closeBtn:'2'
               })
           });
           $("#btn2").click(function () {
               layer.open({
                   type:1,  //设置类型,默认0 1是页面层 2是ifream层
                   title:'提示',
                   content:$("#mydiv"),  //type=0时为内容
                   skin:'layui-layer-lan',
                   // area:'500px'
                   area:['500px','300px'],
                   offset:'auto',  //坐标
                   icon:'7',
                   btnAlign: 'c',
                   closeBtn:'1'
               })
           });
           $("#btn3").click(function () {
               layer.open({
                   type:2,  //设置类型,默认0 1是页面层 2是ifream层
                   title:'提示',
                   content:"18-form.jsp",  //type=0时为内容
                   skin:'layui-layer-lan',
                   // area:'500px'
                   area:['800px','500px'],
                   offset:'auto',  //坐标
                   icon:'7',
                   btnAlign: 'c',
                   closeBtn:'1'
               })
           });
       });
</script>

</body>
</html>
