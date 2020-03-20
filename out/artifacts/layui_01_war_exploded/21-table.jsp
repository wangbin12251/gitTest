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

    <table class="layui-hide" id="userTable" lay-filter="userTable"></table>
    <div style="display: none" id="userToolBar">
            <button type="button" class="layui-btn layui-btn-sm" lay-event="add">增加</button>
            <button type="button" class="layui-btn layui-btn-sm" lay-event="batchDelete">批量删除</button>
            <button type="button" class="layui-btn layui-btn-sm" lay-event="getSelect">得到选中行</button>
            <button type="button" class="layui-btn layui-btn-sm" lay-event="reloadTable">刷新数据</button>
    </div>

    <div id="userBar" style="display: none;">
        <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
        <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    </div>

<script src="resources/layui/layui.js"></script>

<script>
       layui.use(['jquery','form','layer','table'], function(){
           var $ = layui.jquery;
           var form = layui.form;
           var layer = layui.layer;
           var table = layui.table;

           var tableIns =  table.render({
               elem: '#userTable'   //渲染的对象
               ,url:'resources/json/users.json' //数据接口
               ,title: '用户数据表'  //数据导出标题
               /*,toolbar:"<div>xxx</div>"*/
               ,toolbar:"#userToolBar"
               // ,toolbar:'default'   //表格的工具条
               ,defaultToolbar: ['filter',  'exports']
             /*  ,height:'full-300'*/
               ,cellMinWidth:100
               ,done:function (res, curr, count) {
                   /* alert(res); //数据接口
                   alert(curr); //当前页码
                   alert(count);    //数据总数*/
               }
               ,totalRow:true
               ,limit:20    //显示每页的条数 默认为10
               ,limits:[20,40,60,80,100]
               ,page: true  //是否开启分页
               ,text:{
                   none:'暂无相关数据'    //默认'无数据',无数据时的提示
               }
               ,cols: [[    //列表数据
                    {type: 'checkbox', fixed: 'left'}
                    ,{type: 'numbers'}
                   ,{field:'id', title:'ID', width:80,sort:true}
                   ,{field:'username', title:'用户名', width:120,edit:true}
                   ,{field:'email', title:'邮箱', width:150,  templet: function(res){
                           return '<em>'+ res.email +'</em>'
                       }}
                   ,{field:'sex', title:'性别', width:80,align:'center',templet:function (d) {
                            return d.sex=='男'?'汉子':'妹子';
                       }}
                   ,{field:'city', title:'城市', width:100}
                   ,{field:'sign', title:'签名',totalRowText:"合计"}
                   ,{field:'experience', title:'积分', width:80,totalRow:true}
                   ,{field:'ip', title:'IP', width:120}
                   ,{field:'logins', title:'登入次数', width:100,totalRow:true}
                   ,{field:'joinTime', title:'加入时间', width:120}
                   ,{fixed: 'right', title:'操作', toolbar: '#userBar', width:150,align: 'center'}
               ]]

           });

           //监听头工具栏事件
          table.on('toolbar(userTable)',function (obj) {
               switch(obj.event){
                   case 'add':
                       layer.msg('添加');
                       break;
                   case 'batchDelete':
                       layer.msg('批量删除');
                       break;
                   case 'getSelect':
                       layer.msg('选中');
                       var checkStatus = table.checkStatus('userTable'); //idTest 即为基础参数 id 对应的值
                       console.log(checkStatus.data) //获取选中行的数据
                       console.log(checkStatus.data.length) //获取选中行数量，可作为是否有选中行的条件
                       console.log(checkStatus.isAll ) //表格是否全选
                       break;
                   case 'reloadTable':
                      /* table.reload('userTable', {
                           url:'resources/json/users.json' //数据接口
                       });*/
                       tableIns.reload({url:'resources/json/users.json'});
                       break;
               };
           });

           //监听复选框事件
           table.on('checkbox(userTable)', function(obj){
               console.log(obj.checked); //当前是否选中状态
               console.log(obj.data); //选中行的相关数据
               console.log(obj.type); //如果触发的是全选，则为：all，如果触发的是单选，则为：one
           });

           //监听单元格编辑
           table.on('edit(userTable)', function(obj){ //注：edit是固定事件名，test是table原始容器的属性 lay-filter="对应的值"
               console.log(obj.value); //得到修改后的值
               console.log(obj.field); //当前编辑的字段名
               console.log(obj.data); //所在行的所有相关数据
               //发送post请求更新数据
              /* $.post("url?"+obj.field+"&id="+obj.data.id,function (json) {

               });*/
           });
           //监听行单击事件
          /* table.on('row(userTable)', function(obj){
               console.log(obj.tr) //得到当前行元素对象
               console.log(obj.data) //得到当前行数据
               obj.del(); //删除当前行
               //obj.update(fields) //修改当前行数据
           });*/
           //监听行双击事件
           table.on('rowDouble(userTable)', function(obj){
               console.log(obj.tr) //得到当前行元素对象
               console.log(obj.data) //得到当前行数据
               obj.del(); //删除当前行
               //obj.update(fields) //修改当前行数据
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
                    layer.msg('编辑');
               }
           });
       });
</script>

</body>
</html>
