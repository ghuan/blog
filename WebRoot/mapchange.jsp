<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
IMapDao map=new IMapDaoImpl();
List<MapLook> maplist=map.findMap();
MapLook mp=maplist.get(0);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="keywords" content="百度地图,百度地图API，百度地图自定义工具，百度地图所见即所得工具" />
<meta name="description" content="百度地图API自定义地图，帮助用户在可视化操作下生成百度地图" />
<title>百度地图API自定义地图</title>
<!--引用百度地图API-->
<style type="text/css">
    
    body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;}
#dituContent{height:100%;width:100%;float:left;border-right:2px solid #bcbcbc;}

    .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=3Q1yVIztZ99NhUrDqbvQle1W"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
</head>

<body>
  <!--百度地图容器-->
  <div id="dituContent"></div>

<div id="r-result"></div>

</body>
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(102.545068,24.370447);//定义一个中心点坐标
        map.centerAndZoom(point,13);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
        var cr = new BMap.CopyrightControl({anchor: BMAP_ANCHOR_TOP_RIGHT});   //设置版权控件位置
map.addControl(cr); //添加版权控件

var bs = map.getBounds();   //返回地图可视区域
cr.addCopyright({id: 1, content: "<a href='#' style='font-size:20px;background:yellow'>我的行程</a>", bounds: bs});    //Copyright(id,content,bounds)类作为CopyrightControl.addCopyright()方法的参数
   window.openInfoWinFuns = null;
var options = {
  onSearchComplete: function(results){
    // 判断状态是否正确
    if (local.getStatus() == BMAP_STATUS_SUCCESS){
        var s = [];
        s.push('<div style="font-family: arial,sans-serif; border: 1px solid rgb(153, 153, 153); font-size: 12px;">');
        s.push('<div style="background: none repeat scroll 0% 0% rgb(255, 255, 255);">');
        s.push('<ol style="list-style: none outside none; padding: 0pt; margin: 0pt;">');
        openInfoWinFuns = [];
        for (var i = 0; i < results.getCurrentNumPois(); i ++){
            var marker = addMarker(results.getPoi(0).point,0);
            var openInfoWinFun = addInfoWindow(marker,results.getPoi(0),0);
            openInfoWinFuns.push(openInfoWinFun);
            // 默认打开第一标注的信息窗口
            var selected = "";
            if(i == 0){
                selected = "background-color:#f0f0f0;";
                openInfoWinFun();
            }
            
        }
        s.push('</ol></div></div>');
        document.getElementById("r-result").innerHTML = s.join("");
    }
  }
};

// 添加标注
function addMarker(point, index){
  var myIcon = new BMap.Icon("http://api.map.baidu.com/img/markers.png", new BMap.Size(23, 25), {
    offset: new BMap.Size(10, 25),
    imageOffset: new BMap.Size(0, 0 - index * 25)
  });
  var marker = new BMap.Marker(point, {icon: myIcon});
  map.addOverlay(marker);
  return marker;
}
// 添加信息窗口
function addInfoWindow(marker,poi,index){
    var maxLen = 10;
    var name = null;
    if(poi.type == BMAP_POI_TYPE_NORMAL){
        name = "地址:"
    }else if(poi.type == BMAP_POI_TYPE_BUSSTOP){
        name = "公交:"
    }else if(poi.type == BMAP_POI_TYPE_SUBSTOP){
        name = "地铁:"
    }
    // infowindow的标题
    var infoWindowTitle = '<div style="font-weight:bold;color:#CE5521;font-size:14px">'+poi.title+'</div>';
    // infowindow的显示信息
    var infoWindowHtml = [];
    infoWindowHtml.push('<table cellspacing="0" style="table-layout:fixed;width:100%;font:12px arial,simsun,sans-serif"><tbody>');
    infoWindowHtml.push('<tr>');
    infoWindowHtml.push('<td style="vertical-align:top;line-height:16px;width:38px;white-space:nowrap;word-break:keep-all">' + name + '</td>');
 	 
    infoWindowHtml.push('<td style="vertical-align:top;line-height:16px">' + poi.address + ' </td>');
    infoWindowHtml.push('</tr>');
    infoWindowHtml.push('<tr>');
    infoWindowHtml.push('<td style="line-height:16px;width:auto;">时间：</td>');
    infoWindowHtml.push('<td style="vertical-align:top;line-height:16px"><%=mp.getInputtime()%></td>');
    infoWindowHtml.push('</tr>');
    infoWindowHtml.push('<tr>');
    infoWindowHtml.push('<td style="vertical-align:top;line-height:16px;width:auto;">详情：</td>'); 
    infoWindowHtml.push('<td style="vertical-align:top;line-height:16px"><%=mp.getText()%></td>');
    infoWindowHtml.push('</tr>');
    infoWindowHtml.push('</tbody></table>');
    var infoWindow = new BMap.InfoWindow(infoWindowHtml.join(""),{title:infoWindowTitle,width:200}); 
    var openInfoWinFun = function(){
        marker.openInfoWindow(infoWindow);
        for(var cnt = 0; cnt < maxLen; cnt++){
            if(!document.getElementById("list" + cnt)){continue;}
            if(cnt == index){
                document.getElementById("list" + cnt).style.backgroundColor = "#f0f0f0";
            }else{
                document.getElementById("list" + cnt).style.backgroundColor = "#fff";
            }
        }
    }
    marker.addEventListener("click", openInfoWinFun);
    return openInfoWinFun;
}
var local = new BMap.LocalSearch(map, options);
local.search("<%=mp.getMapadd()%>");     
        }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
	map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
    
    initMap();//创建和初始化地图
</script>
</html>