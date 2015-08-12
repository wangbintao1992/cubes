<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no"/>
		<meta name="description" content="Rubik’s Cube">
		<meta name="keywords" content="Erno Rubik’s Cube">
		<link rel="stylesheet" type="text/css" href="<%=path%>/cube/build/styles/cube.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/cube/examples/basic/styles/base.css">
		<link rel="icon" type="image/png" href="<%=path%>/cube/build/media/cuber-favicon-0064x0064.png">
		<link rel="apple-touch-icon" href="<%=path%>/cube/build/media/cuber-favicon-0144x0144.png">
		<link rel="stylesheet" type="text/css" href="<%=path%>/cube/src/css/myCss.css">

		<title>james'cube</title>

		<script charset="utf-8" src="<%=path%>/cube/src/scripts/vendor/tween.min.js"></script>


		<!-- cube source code -->


			<!--  Three.js  -->
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/vendor/threejs/src/Three.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/vendor/threejs/src/core/EventDispatcher.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/vendor/threejs/src/math/Math.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/vendor/threejs/src/math/Quaternion.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/vendor/threejs/src/math/Vector2.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/vendor/threejs/src/math/Vector3.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/vendor/threejs/src/math/Box3.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/vendor/threejs/src/math/Sphere.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/vendor/threejs/src/math/Euler.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/vendor/threejs/src/math/Matrix3.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/vendor/threejs/src/math/Matrix4.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/vendor/threejs/src/core/Object3D.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/vendor/threejs/src/cameras/Camera.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/vendor/threejs/src/cameras/PerspectiveCamera.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/vendor/threejs/src/math/Ray.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/vendor/threejs/src/math/Plane.js"></script>


			<!--  Here are the Cube guts. Enjoy.  -->
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/ERNO.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/vendor/CSS3DRenderer.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/utils/utils.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/utils/Number.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/utils/String.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/utils/Array.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/colors.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/directions.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/queues.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/twists.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/cubelets.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/groups.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/slices.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/folds.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/projector.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/interaction.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/controls.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/cubes.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/solvers.js"></script>
			<script charset="utf-8" src="<%=path%>/cube/src/scripts/renderer.js"></script>



		<!-- implementation -->	


		<script charset="utf-8" src="<%=path%>/cube/examples/basic/scripts/jquery.js"></script>
		<script charset="utf-8" src="<%=path%>/cube/src/scripts/extras/renderers/iecss3d.js"></script>
		<script charset="utf-8" src="<%=path%>/cube/src/scripts/extras/renderers/ierenderer.js"></script>
		<script charset="utf-8" src="<%=path%>/cube/src/scripts/extras/controls/locked.js"></script>
		<script charset="utf-8" src="<%=path%>/cube/src/scripts/extras/deviceMotion.js"></script>
		<script charset="utf-8" src="<%=path%>/cube/examples/basic/scripts/main.js"></script>			



	</head>
	<body class="graydient" >
		<div id="container" ></div>
		<div id="fail">
			<h1>Sorry,</h1>
			<h2>Cubers broken</h2>
		</div>
		
	</body>
	<script type="text/javascript">
		$(document).ready(function(){
		var num = [1,2,3,4,5,6,7,8,9]
		//0red 1white  2blue 3green 4orange 5yellow
		var colors = ['#DC422F','#F3F3F3','#3D81F6','#009D54','#E87000','#F5B400'];
		var flag = true;
			$('body').bind("click",function(){
				if(flag){
					flag = false;
					var $t = $("div[class='sticker orange']")
					for(var i = 0; i < $t.length; i++){
						$t[i].innerHTML = "<span style='font-size:30px;color:black;' class='spanCls' name='hehe' id=" + i + ">" + num[i] + "</span>"
						var $v = $($t[i]);
						switch(i){
							case 0:
								$v.css("background",colors[2]);
							break;
							case 1:
								$v.css("background",colors[0]);
							break;
							case 2:
								$v.css("background",colors[1]);
							break;
							case 3:
								$v.css("background",colors[5]);
							break;
							case 4:
								$v.css("background",colors[1]);
							break;
							case 5:
								$v.css("background",colors[0]);
							break;
							case 6:
								$v.css("background",colors[2]);
							break;
							case 7:
								$v.css("background",colors[4]);
							break;
							case 8:
								$v.css("background",colors[3]);
							break;
						}
					}
					//0red 1white  2blue 3green 4orange 5yellow
					var $y = $("div[class='sticker yellow']")
					for(var i = 0; i < $y.length; i++){
						$y[i].innerHTML = "<span style='font-size:30px;color:black;' class='spanCls' name='hehe' id=" + i + ">" + num[i] + "</span>"
						var $v = $($y[i]);
						switch(i){
							case 0:
								$v.css("background",colors[1]);
							break;
							case 1:
								$v.css("background",colors[5]);
							break;
							case 2:
								$v.css("background",colors[4]);
							break;
							case 3:
								$v.css("background",colors[3]);
							break;
							case 4:
								$v.css("background",colors[4]);
							break;
							case 5:
								$v.css("background",colors[2]);
							break;
							case 6:
								$v.css("background",colors[1]);
							break;
							case 7:
								$v.css("background",colors[2]);
							break;
							case 8:
								$v.css("background",colors[5]);
							break;
						}
					}
					//0red 1white  2blue 3green 4orange 5yellow
					var $g = $("div[class='sticker green']")
					for(var i = 0; i < $g.length; i++){
						$g[i].innerHTML = "<span style='font-size:30px;color:black;' class='spanCls' name='hehe' id=" + i + ">" + num[i] + "</span>"
						var $v = $($g[i]);
						switch(i){
							case 0:
								$v.css("background",colors[3]);
							break;
							case 1:
								$v.css("background",colors[1]);
							break;
							case 2:
								$v.css("background",colors[5]);
							break;
							case 3:
								$v.css("background",colors[5]);
							break;
							case 4:
								$v.css("background",colors[3]);
							break;
							case 5:
								$v.css("background",colors[4]);
							break;
							case 6:
								$v.css("background",colors[4]);
							break;
							case 7:
								$v.css("background",colors[3]);
							break;
							case 8:
								$v.css("background",colors[1]);
							break;
						}
					}
					//0red 1white  2blue 3green 4orange 5yellow
					var $b = $("div[class='sticker blue']")
					for(var i = 0; i < $b.length; i++){
						$b[i].innerHTML = "<span style='font-size:30px;color:black;' class='spanCls' name='hehe' id=" + i + ">" + num[i] + "</span>"
						var $v = $($b[i]);
						switch(i){
							case 0:
								$v.css("background",colors[5]);
							break;
							case 1:
								$v.css("background",colors[2]);
							break;
							case 2:
								$v.css("background",colors[0]);
							break;
							case 3:
								$v.css("background",colors[4]);
							break;
							case 4:
								$v.css("background",colors[2]);
							break;
							case 5:
								$v.css("background",colors[1]);
							break;
							case 6:
								$v.css("background",colors[3]);
							break;
							case 7:
								$v.css("background",colors[5]);
							break;
							case 8:
								$v.css("background",colors[0]);
							break;
						}
					}
					var $w = $("div[class='sticker white']")
					for(var i = 0; i < $w.length; i++){
						$w[i].innerHTML = "<span style='font-size:30px;color:black;' class='spanCls' name='hehe' id=" + i + ">" + num[i] + "</span>"
						var $v = $($w[i]);
						switch(i){
							case 0:
								$v.css("background",colors[4]);
							break;
							case 1:
								$v.css("background",colors[3]);
							break;
							case 2:
								$v.css("background",colors[0]);
							break;
							case 3:
								$v.css("background",colors[3]);
							break;
							case 4:
								$v.css("background",colors[0]);
							break;
							case 5:
								$v.css("background",colors[1]);
							break;
							case 6:
								$v.css("background",colors[4]);
							break;
							case 7:
								$v.css("background",colors[2]);
							break;
							case 8:
								$v.css("background",colors[5]);
							break;
						}
					}
					//0red 1white  2blue 3green 4orange 5yellow
					var $r = $("div[class='sticker red']")
					for(var i = 0; i < $r.length; i++){
						$r[i].innerHTML = "<span style='font-size:30px;color:black;' class='spanCls' name='hehe' id=" + i + ">" + num[i] + "</span>"
						var $v = $($r[i]);
						switch(i){
							case 0:
								$v.css("background",colors[0]);
							break;
							case 1:
								$v.css("background",colors[4]);
							break;
							case 2:
								$v.css("background",colors[2]);
							break;
							case 3:
								$v.css("background",colors[1]);
							break;
							case 4:
								$v.css("background",colors[5]);
							break;
							case 5:
								$v.css("background",colors[0]);
							break;
							case 6:
								$v.css("background",colors[2]);
							break;
							case 7:
								$v.css("background",colors[0]);
							break;
							case 8:
								$v.css("background",colors[3]);
							break;
						}
					}
					
					
					var hehe = $("span[name='hehe']");
					for(var i = 0 ; i < hehe.length; i ++){
						$(hehe[i]).bind("click",function(){
							alert($(this).attr("id"));
						});
					}
				}
			});
		});
	</script>
</html>