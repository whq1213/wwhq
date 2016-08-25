<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"  />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<title>学生行动足迹</title>
	<style type="text/css">
		body, html{width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
		#l-map{height:300px;width:100%;}
		#r-result{width:100%; font-size:14px;line-height:20px;}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=lUeY6xmukkbgtWdSz0SBRAoZKA67BvDR"></script>
</head>
<body>
	<div id="l-map"></div>
	<div id="r-result">
	<input type="text" value="请输入学号功能未实现">
		<input type="button" value="查询我的足迹+商圈" onclick="bdGEO(0)" />
		<div id="result"></div>
	</div>
	
</body>
</html>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("l-map");
	map.centerAndZoom(new BMap.Point(116.328749,40.026922), 13);
	map.enableScrollWheelZoom(true);
	var index = 0;
	var myGeo = new BMap.Geocoder();
	var adds = [
		new BMap.Point(161.307852,40.057031),
		new BMap.Point(116.313082,40.047674),
		new BMap.Point(116.328749,40.026922),
		new BMap.Point(116.347571,39.988698),
		new BMap.Point(116.316163,39.997753),
		new BMap.Point(116.345867,39.998333),
		new BMap.Point(116.403472,39.999411),
		new BMap.Point(116.307901,40.05901)
	];
	
	function bdGEO(){	
		var pt = adds[index];
		geocodeSearch(pt);
		index++;
	//将显示放在循环中
		for(var i = 0; i<adds.length; i++){
			var marker = new BMap.Marker(adds[i]);
			map.addOverlay(marker);
			marker.setLabel(new BMap.Label("我是商圈:"+(i+1),{offset:new BMap.Size(20,-10)}));
		}
	}
	function geocodeSearch(pt){
		if(index < adds.length-1){
			setTimeout(window.bdGEO,400);
		} 
		myGeo.getLocation(pt, function(rs){
			var addComp = rs.addressComponents;
			document.getElementById("result").innerHTML += index + ". " +adds[index-1].lng + "," + adds[index-1].lat + "："  + "商圈(" + rs.business + ")  结构化数据(" + addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber + ")<br/><br/>";
		});
	}
	
	
</script>
