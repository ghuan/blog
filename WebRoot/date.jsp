<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    
    
    <title>My JSP 'date.jsp' starting page</title>
    
	

  </head>
  
  <body>
    <script>
function getCurDate()
{
 var d = new Date();
 var week;
 switch (d.getDay()){
 case 1: week="星期一"; break;
 case 2: week="星期二"; break;
 case 3: week="星期三"; break;
 case 4: week="星期四"; break;
 case 5: week="星期五"; break;
 case 6: week="星期六"; break;
 default: week="星期天";
 }
 var years = d.getFullYear();
 var month = add_zero(d.getMonth()+1);
 var days = add_zero(d.getDate());
 var hours = add_zero(d.getHours());
 var minutes = add_zero(d.getMinutes());
 var seconds=add_zero(d.getSeconds());
 var ndate = years+"年"+month+"月"+days+"日 " +week+" "+hours+":"+minutes+":"+seconds;
 time.innerHTML= ndate;
}

function add_zero(temp)
{
 if(temp<10) return "0"+temp;
 else return temp;
}

setInterval("getCurDate()",100);
</script>
<style>
.date_box { background:#E1EEFF; height:30px; line-height:30px; font-size:12px; text-align:center;}
.date_box .green { color:#227d06; }
.date_box .map a{ color:#000; font-size:12px; text-decoration:none; }
#time { color:#c5330c; }
</style>
<div class="date_box">
     <span>欢迎来到<span class="green">小欢欢个人博客后台管理系统</span></span><br>
		 <span id="time"><span style="font-family:simsun">.</span></span>
</div>
  </body>
</html>
