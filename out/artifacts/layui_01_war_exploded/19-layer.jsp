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

        <button type="button" class="layui-btn" id="btn1">alert</button>
        <button type="button" class="layui-btn" id="btn2">confirm</button>
        <button type="button" class="layui-btn" id="btn3">prompt</button>
        <button type="button" class="layui-btn" id="btn4">tab</button>
        <button type="button" class="layui-btn" id="btn5">photos</button>
        <button type="button" class="layui-btn" id="btn6">msg</button>

      <div  style="padding: 50px;height: 200px;text-align: center" >
        <button type="button" class="layui-btn" id="btn7">tips</button>
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
               // layer.alert('这是一个简单的提示');
               //layer.alert('加了个图标', {icon: 6}); //这时如果你也还想执行yes回调，可以放在第三个参数中。
               layer.alert('有了回调', function(index){
                   //do something
                   alert("ok");
                   layer.close(index);
               });
           });
           //confirm
           $("#btn2").click(function () {
               layer.confirm('确定要删除?', {icon: 3, title:'提示'}, function(index){
                   //do something
                    alert("ok");
                   layer.close(index);
               });
           });
           //prompt
           $("#btn3").click(function () {
               /*layer.prompt(function(value, index, elem){
                   alert(value); //得到value
                   layer.close(index);
               });*/
               layer.prompt({
                   formType: 2,
                   value: '初始值',
                   title: '请输入值',
                   area: ['800px', '350px'] //自定义文本域宽高
               }, function(value, index, elem){
                   alert(value); //得到value
                   layer.close(index);
               });
           });
            //tab
           $("#btn4").click(function () {
               layer.tab({
                   area: ['600px', '300px'],
                   tab: [{
                       title: 'TAB1',
                       content: '内容1'
                   }, {
                       title: 'TAB2',
                       content: '内容2'
                   }, {
                       title: 'TAB3',
                       content: '内容3'
                   }]
               });
           });
           //photos
           $("#btn5").click(function () {
               $.get('/resources/json/images.json', function(json){
                   layer.photos({
                       photos: json,
                       area:['500px','500px']
                       ,anim: 5 //0-6的选择，指定弹出图片动画类型，默认随机（请注意，3.0之前的版本用shift参数）
                   });
               });
           });
           $("#btn6").click(function () {
               // layer.msg('只想弱弱提示',{icon: 6});
               layer.msg('同上', {
                   icon: 1,
                   time: 2000 //2秒关闭（如果不配置，默认是3秒）
               }, function(){
                   //do something
               });
           });
           $("#btn7").click(function () {
               layer.tips('在上面', '#btn7', {
                   tips: 4
               });

           });
       });
</script>

</body>
</html>
