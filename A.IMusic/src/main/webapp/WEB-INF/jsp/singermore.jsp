<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<script src="bootstrap/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<script src="bootstrap/musicjs/audio.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/singermore.css" />
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/lunbocss.css" />
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/audio.css" />
		<title></title>

	</head>

	<body style="">
		<!--头部logo以及导航栏开始-->
		<div id="header">
		

			</div>
			<!--头部logo以及导航栏结束-->
			<!--
	作者：offline
	时间：2017-11-11
	描述：下方内容开始
-->
			<div class="container">
				<div class="row clearfix">
					<div class="col-md-10 column">
						<div class="content">

							<!--
	作者：offline
	时间：2017-11-11
	描述：轮播滚动结束
-->

							<!--
	作者：offline
	时间：2017-11-11
	描述：下面内容开始
-->
							<div class="container">
								<div class="row clearfix" style=" padding-top: 5px;">
									<div class="col-md-12 column" style=" width: 83%; height: 800px;">
										<div class="row clearfix">
											<!--
	作者：offline
	时间：2017-11-11
	描述：热门推荐开始
-->
											<div class="col-md-8 column" style=" width: 75%; height: 900px;margin: 0px;padding: 0px;">
												<div class="n-artist f-cb" style="margin-left:5% ;">
													<div class="btm" style="width: 100%; display: flex; height: 52px;">
													<c:if test="${listSinger!=null}">
													<c:forEach items="${listSinger}" var="listSinger">
													<div id="ces" hidden>${listSinger.singerName}</div>
														<h2 id="artist-name" data-rid="10559" class="sname f-thide sname-max" title="张惠妹 - aMEI;阿密特">${listSinger.singerName}</h2>
														<h4 id="artist-alias" class="salias f-thide" style="margin-top: 4%; color: gray;" title="张惠妹 - aMEI;阿密特">${listSinger.location}</h4>
														</c:forEach>
														</c:if>
														<a id="artist-sub" style="margin-left: 395px;margin-top: 25px;" href="javascript:void(0)" class="btnfav f-tid"><span class="glyphicon glyphicon-star"></span>收藏</a>
													</div>
													<img style="width: 95%;" src="http://p3.music.126.net/-JxOlVRUl3OFqNkCIu9dlw==/678398674363509.jpg?param=640y300">
													<div class="mask f-alpha"></div>
												</div>
												<div id="" style="background-color:rgb(192,12,12) ; margin: 0 5% ; width:90%; height: 3px;">

												</div>
												<ul class="nav nav-tabs" style="margin-left:5% ;">
													<li class="">
														<a id="remendanqu1" href="javascript:void(0)" >热门单曲</a>
													</li>
													<li>
														<a id="zhaungji" href="javascript:void(0)">歌手专辑</a>
													</li>
													<li class="">
														<a href="#" id="geshoujies" href="javascript:void(0)">歌手介绍</a>
													</li>
												</ul>
												<div id="" style="background-color:rgb(192,12,12) ; margin: 0 5%; width:90%; height: 3px;">

												</div>
												
												
	<div id="zhengti" style=" margin-left: 40px ;margin-top: 15px;">
 <div id="bogy">
			<div  style="display: flex;">
				<div class="btn-group" data-toggle="buttons" id="bofang123">
					<button type="button" class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-play-circle"  ></span>播放
       
				</div>
			
		</div>
		<table class="table">
				<tbody>
				<c:if test="${listsong!=null}">
				<c:forEach items="${listsong}" var="song">
					<tr>
						<td>
							1
						</td>
						<td>
							<a href="javascript:void(0);">${song.songName}</a>
						</td>
						<td><div id="12345" class="shicang" style="display: block;" >
							${song.songTime}</div>						
						</td>
						<td>
							<a href="javascript:void(0);">${song.albumsName}</a>
						</td>
					</tr>
					</c:forEach>
					</c:if>
				</tbody>
		 </table>
		</div>
		</div>
												
											</div>

											<!--
	作者：offline
	时间：2017-11-11
	描述：热门推荐结束
-->
											<!--
	作者：offline
	时间：2017-11-12
	描述：右侧的
-->
											<div class="col-md-4 column" style=" width:25%; height: 600px;">
												<div>
													<h3>相关歌手</h3>
													<div style="padding-top: 5%;">
														<div style="float:left; text-align:left; margin: 2% 2%;">
															<ul>
																<li>
																	<img style="border-radius: 40px;" src="bootstrap/musicimage/mainpageimage/头像.jpg" width="60px" height="60px" />
																</li>
																<li>
																	<a style="margin-left: 7%; margin-right: 7%; " href="javascript:void(0)">sss</a>
																</li>
															</ul>
														</div>
														<div style="float:left; text-align:left; margin: 2% 2%;">
															<ul>
																<li>
																	<img style="border-radius: 40px;" src="bootstrap/musicimage/mainpageimage/头像.jpg" width="60px" height="60px" />
																</li>
																<li>
																	<a style="margin-left: 7%; margin-right: 7%; " href="javascript:void(0)">sss</a>
																</li>
															</ul>
														</div>
														<div style="float:left; text-align:left; margin: 2% 2%;">
															<ul>
																<li>
																	<img style="border-radius: 40px;" src="bootstrap/musicimage/mainpageimage/头像.jpg" width="60px" height="60px" />
																</li>
																<li>
																	<a style="margin-left: 7%; margin-right: 7%; " href="javascript:void(0)">sss</a>
																</li>
															</ul>
														</div>
														<div style="float:left; text-align:left; margin: 2% 2%;">
															<ul>
																<li>
																	<img style="border-radius: 40px;" src="bootstrap/musicimage/mainpageimage/头像.jpg" width="60px" height="60px" />
																</li>
																<li>
																	<a style="margin-left: 7%; margin-right: 7%; " href="javascript:void(0)">sss</a>
																</li>
															</ul>
														</div>
														<div style="float:left; text-align:left; margin: 2% 2%;">
															<ul>
																<li>
																	<img style="border-radius: 40px;" src="bootstrap/musicimage/mainpageimage/头像.jpg" width="60px" height="60px" />
																</li>
																<li>
																	<a style="margin-left: 7%; margin-right: 7%; " href="javascript:void(0)">sss</a>
																</li>
															</ul>
														</div>
														<div style="float:left; text-align:left; margin: 2% 2%;">
															<ul>
																<li>
																	<img style="border-radius: 40px;" src="bootstrap/musicimage/mainpageimage/头像.jpg" width="60px" height="60px" />
																</li>
																<li>
																	<a style="margin-left: 7%; margin-right: 7%; " href="javascript:void(0)">sss</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>

							<!--
	作者：offline
	时间：2017-11-11
	描述：热门推荐结束
-->
						</div>
					</div>
				</div>
			</div>

	</body>
<script type="text/javascript">
		$(function() {
			$('table').find('td').mouseover(function() {

				var i = parseInt($(this).parents("tr").find("td").eq(0).text());
				document.getElementById(i).style.display = 'block';
			});
			$('table').find('td').mouseout(function() {
				var j = parseInt($(this).parents("tr").find("td").eq(0).text());
				document.getElementById(j).style.display = 'none';
			});

		});
	</script>
	<script type="text/javascript">
		$(function() {
			$("#vistor").hide();
			$("#userxra").show();
			$(".logo").hover().css("cursor", "pointer");
			$(".daohang").hover().css("cursor", "pointer");
			$(".xialabioa").hover().css("cursor", "pointer");

			$(".daohang").first().addClass("xcenteroneone"); //先设置推荐是点击的	 	
			$(".lefelist").first().addClass("navsearch"); //先设置推荐是点击的	
			/**
			 * 导航栏的点击事件
			 */
			$(".lefelist").click(function() {
				$(this).addClass('navsearch').siblings().removeClass('navsearch');
			})
			$(".daohang").click(function() {
				$(this).addClass('xcenteroneone').siblings().removeClass('xcenteroneone');
			})
			/**
			 * 鼠标滑动弹出下拉列表事件
			 */
			$(".caret").mouseover(function() {
				$(this).next("ul").slideDown(500);
			});
			$(".dropdown").mouseleave(function() {
				$(this).children("ul").slideUp(500);
			});
			$("#userleave").click(function() {
				$("#vistor").show();
				$("#userxra").hide();
			})
			$(".tupianxe").click(function() {
				alert($(this).text());
			})

		});
		
	 	//点击歌手简介的时候
		$("#geshoujies").click(function(){
			$("tbody tr").remove();
			var a=$("#ces").html();
			$(".btn-group").remove();
			$(".n-artdesc").remove();
			$(".albuum").remove();
			$.get("remendanqu123?a="+a,function(listsingername,status){
				$.each(listsingername,function(index,listsingername){
				$("tbody").append("<div class='n-artdesc' style=''>"+
						"<h2><i>&nbsp;"+listsingername.singerName+"</i></h2>"+
						"<p>"+listsingername.singerProfile+"</p>"+
						"</div>");
				})
			}) 
			
		
		}) 
		
		
		//点击事件歌曲专辑之后的事件
		$("#zhaungji").click(function(){
			$("tbody tr").remove();
			var a=$("#ces").html();
			$(".btn-group").remove();
			$(".n-artdesc").remove();
			$(".albuum").remove();
			$.get("zhuanjixinxi?a="+a,function(listgetallzhuanji,status){
			$.each(listgetallzhuanji,function(index,listgetallzhuanji){
				$("tbody").append("<div class='albuum'>"+
						"<div id='' class='rementuibofangqi' style='float:left;text-align: left;'>"+
							"<div id='' style='padding-bottom: 5px;'>"+
								"<a href=''><img src='bootstrap/musicimage/mainpageimage/封面1.jpg' / height='150px' width='150px' style='padding: 8px;'>"+
								"</a>"+				
							"</div>"+
							"<div id='zi' style='padding-top: 10px; padding-left: 50px;'>"+
								"<a href='' style='color:RGB(72,72,72);'>"+listgetallzhuanji.albumsName+"</a>"+
							"</div>"+
						"</div>"+
						"</div>");
				
				
				}) 
			}) 
				
	
		})  
	//热门单曲被点击的时候
	$("#remendanqu1").click(function(){
		$(".n-artdesc").remove();
		//歌手的姓名
		var a=$("#ces").html();
		$(".albuum").remove();
	/* 	var a=$("#artist-name").find($("h2").val()); */
	
		 $("tbody tr").remove();	//移除掉热门歌曲的层		
		//经过ajax请求开始拼接歌曲内容
		$.get("remendanqu?a="+a,function(listsong,status){
			$.each(listsong,function(index,listsong){
				$("tbody").append("<tr>"+
					"<td>"+
						"1"+
					"</td>"+
					"<td>"+
						"<a href='javascript:void(0);'>"+listsong.songName+"</a>"+
						"</td>"+
						"<td><div id='12345' class='shicang' style='display: block;' >"+
							""+listsong.songTime+"</div>"+						
						"</td>"+
						"<td>"+
							"<a href='javascript:void(0);'>"+listsong.albumsName+"</a>"+
						"</td>"+
				"</tr>");
			})
			
			
			
		})
		 
			
		
	}) 
	
	</script>

</html>