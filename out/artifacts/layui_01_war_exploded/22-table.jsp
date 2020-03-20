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
    <title>数据表格</title>
    <link rel="stylesheet" href="resources/layui/css/layui.css">
    <link rel="stylesheet" href="resources/layui/css/global.css">
</head>

<body >

    <%--搜索条件开始--%>
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>搜索条件</legend>
    </fieldset>
    <form class="layui-form" action="">
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">编号:</label>
                <div class="layui-input-inline">
                    <input type="text" name="id"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">用户名:</label>
                <div class="layui-input-inline">
                    <input type="text" name="username"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">邮箱:</label>
                <div class="layui-input-inline">
                    <input type="text" name="email"  autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">开始时间:</label>
                <div class="layui-input-inline">
                    <input type="text" name="startTime" readonly="readonly" id="startTime" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">结束时间:</label>
                <div class="layui-input-inline">
                    <input type="text" name="endTime" id="endTime" readonly="readonly" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">性别:</label>
                <div class="layui-input-inline">
                    <input type="radio" name="sex" value="1" title="男">
                    <input type="radio" name="sex" value="0" title="女">
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button type="button" class="layui-btn layui-btn-normal layui-btn-sm layui-icon layui-icon-search"  id="doSearch">查询</button>
                    <button type="reset" class="layui-btn layui-btn-warm layui-btn-sm layui-icon layui-icon-refresh">重置</button>
                </div>
            </div>
        </div>

    </form>
    <%--搜索条件结束--%>

    <%--数据表格开始--%>
    <table class="layui-hide" id="userTable" lay-filter="userTable"></table>
    <div style="display: none" id="userToolBar">
            <button type="button" class="layui-btn layui-btn-sm" lay-event="add">增加</button>
            <button type="button" class="layui-btn layui-btn-sm" lay-event="batchDelete">批量删除</button>
            <button type="button" class="layui-btn layui-btn-sm" lay-event="getSelect">得到选中行</button>
    </div>

    <div id="userBar" style="display: none;">
        <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
        <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    </div>
    <%--数据表格结束--%>

    <%--添加和修改的弹出层开始--%>
    <div style="display: none ;padding: 20px" id="saveOrUpdateDiv" >
        <form class="layui-form" action="" lay-filter="dataForm" id="dataForm">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">编号:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="id" lay-verify="required"  autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">用户名:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username"  autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">邮箱:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="email"  autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">城市:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="city" lay-verify="required" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">性别:</label>
                <div class="layui-input-inline">
                    <input type="radio" name="sex" value="1" title="男">
                    <input type="radio" name="sex" value="0" title="女">
                </div>
            </div>

            <div class="layui-form-item" style="text-align: center">
                <div class="layui-input-block">
                    <button type="button" class="layui-btn layui-btn-normal layui-btn-sm layui-icon layui-icon-release"  lay-filter="doSubmit" lay-submit="">提交</button>
                    <button type="reset" class="layui-btn layui-btn-warm layui-btn-sm layui-icon layui-icon-refresh">重置</button>
                </div>
            </div>
        </form>
    </div>
    <%--添加和修改的弹出层结束--%>

<script src="resources/layui/layui.js"></script>

<script>
       layui.use(['jquery','form','layer','table','laydate'], function(){
           var $ = layui.jquery;
           var form = layui.form;
           var layer = layui.layer;
           var table = layui.table;
           var laydate = layui.laydate;

           //绑定时间选择器
           laydate.render({
               elem: '#startTime'
           });
           laydate.render({
               elem: '#endTime'
           });


           var tableIns =  table.render({
               elem: '#userTable'   //渲染的对象
               ,url:'resources/json/pensons.json' //数据接口
               ,title: '用户数据表'  //数据导出标题
               ,toolbar:"#userToolBar"
               ,height:'full-300'
               ,cellMinWidth:100
               ,done:function (res, curr, count) {
               }
               ,totalRow:true
               ,page: true  //是否开启分页
               ,cols: [[    //列表数据
                    {type: 'checkbox', fixed: 'left'}
                   ,{field:'id', title:'ID',sort:true,align:'center'}
                   ,{field:'username', title:'用户名',edit:true,align:'center'}
                   ,{field:'email', title:'邮箱', align:'center',  templet: function(res){
                           return '<em>'+ res.email +'</em>'
                       }}
                   ,{field:'sex', title:'性别',align:'center',templet:function (d) {
                            return d.sex=='1'?'男':'女';
                       }}
                   ,{field:'city', title:'城市'}
                   ,{fixed: 'right', title:'操作', toolbar: '#userBar', width:220,align: 'center'}
               ]]

           });

           //监听头工具栏事件
          table.on('toolbar(userTable)',function (obj) {
               switch(obj.event){
                   case 'add':
                       openAddUser();
                       break;
                   case 'batchDelete':
                       layer.msg('批量删除');
                       break;

               };
           });


           //监听行工具条
           table.on('tool(userTable)', function(obj){ //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
               var data = obj.data; //获得当前行数据
               var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
               var tr = obj.tr; //获得当前行 tr 的 DOM 对象（如果有的话）

               if(layEvent === 'del'){ //删除
                   layer.confirm('真的删除行么', function(index){
                       obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
                       layer.close(index);
                       //向服务端发送删除指令
                   });
               } else if(layEvent === 'edit') { //编辑
                    openUpdateUser(data);
               }
           });


           var url;
           var mainIndex;
           //打开添加页面
           function openAddUser(){
               mainIndex= layer.open({
                   type: 1,
                   title:'添加用户',
                   content:$("#saveOrUpdateDiv"),
                   area:['600px','400px'],
                   success:function (index) {
                        //清空表单数据
                       $("#dataForm")[0].reset();
                       url="user/addUser.action";
                   }
               });
           }
           //打开修改页面
           function openUpdateUser(data){
               mainIndex= layer.open({
                   type: 1,
                   title:'修改用户',
                   content:$("#saveOrUpdateDiv"),
                   area:['600px','400px'],
                   success:function (index) {
                        form.val("dataForm",data);
                       url="user/updateUser.action";
                   }
               });
           }

           //保存
           form.on("submit(doSubmit)",function (obj) {
              //序列化表单数据
               var params = $("#dataForm").serialize();
               alert(params);
               $.post("index.jsp",params,function (obj) {
                    layer.msg(obj);
                    //关闭弹出层
                   layer.close(mainIndex);
                   //刷新表格
                   tableIns.reload();
               })
           });

       });
</script>

</body>
</html>
