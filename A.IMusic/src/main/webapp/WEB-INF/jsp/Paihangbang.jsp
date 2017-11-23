<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<script src="bootstrap/js/jquery-2.1.0.js" type="text/javascript"
	charset="utf-8"></script>
<script src="bootstrap/js/bootstrap.js" type="text/javascript"
	charset="utf-8"></script>
<script src="bootstrap/musicjs/audio.js" type="text/javascript"
	charset="utf-8"></script>
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="bootstrap/Musiccss/Paihangbang.css" />
<link rel="stylesheet" type="text/css"
	href="bootstrap/Musiccss/lunbocss.css" />
<link rel="stylesheet" type="text/css"
	href="bootstrap/Musiccss/audio.css" />




</head>
<body style="background-color: #FAF4FF;">

	<div class="content">

		<!--
	作者：offline
	时间：2017-11-11
	描述：下面内容开始
-->
		<div class="container" style="">
			<div class="row clearfix">
				<div class="col-md-12 column"
					style="width: 83%; background-color: white">
					<div class="row clearfix">
						<!--
	作者：offline
	时间：2017-11-11
	描述：专辑图片以及一些属性
-->
						<div class="col-md-8 column"
							style="width: 24%; margin: 0.5%; margin-top: 4.5%;">
							<div id="youbian">
								<span style="font-weight: bold; font-size: 20px;">音乐排行榜单</span>
							</div>

							<span>&nbsp;</span>
							<ul>
								<li><a href="javascript:void(0);"
									style="text-decoration: none;" class="leftlistone">
										<div>
											<div id="tupian3" style="float: left;">
												<img width="55px" height="55px"
													src="bootstrap/musicimage/mymusic/飙升榜.jpg" />
											</div>
											<div id="tupianmingzi">
												<br /> <span style="color: black;">&nbsp;&nbsp;&nbsp;音乐飙升榜</span><br />


												<span id="tupian3-1" style="color: rgb(153, 153, 153);">&nbsp;&nbsp;&nbsp;&nbsp;每日更新</span>
											</div>
											<br />
										</div>
								</a></li>
								<li><a href="javascript:void(0);"
									style="text-decoration: none;" class="leftlisttwo">
										<div>
											<div id="tupian3" style="float: left;">
												<img width="55px" height="55px"
													src="bootstrap/musicimage/mymusic/新歌榜.jpg" />
											</div>
											<div id="tupianmingzi12">
												<br /> <span style="color: black;">&nbsp;&nbsp;&nbsp;音乐新歌榜</span><br />
												<span id="tupian3-1" style="color: rgb(153, 153, 153);">&nbsp;&nbsp;&nbsp;&nbsp;每日更新</span>
											</div>
											<br />
										</div>
								</a></li>
							</ul>
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


						<div id="quanbu">

							<div id="litou">


								<div class="col-md-4 column" style="width: 75%;">
									<div class="zhuyao"
										style="width: 90%; float: right; height: 40px;">
										<div id="tupian1">
											<img id="tupian4" width="170px" height="170px"
												src="bootstrap/musicimage/mymusic/飙升榜.jpg" />
										</div>

										<div id="tupian4-1">
											<div id="span1" style="margin-top: 20px;">
												<h3 id="yiyuebang">音乐飙升榜</h3>
											</div>
											<br />

											<div id="toubu">
												<div id="qingkong">	
												<p><span class="glyphicon glyphicon-time"></span>最近更新 11月15日 (每日更新)</p>												
													<div id="but-to" style="display: flex;">
														<div class="btn-group" data-toggle="buttons">
															<button type="button" class="btn btn-info btn-sm">
																<span class="glyphicon glyphicon-play-circle"></span>播放
															</button>
															<button type="button" class="btn btn-info btn-sm">
																<span class="glyphicon glyphicon-plus"></span>
															</button>
														</div>
														<div style="margin-left: 2%;">																													
															<button type="button" class="btn btn-default btn-sm">
																<span class="glyphicon glyphicon-save"></span>下载
															</button>
													
														</div>
													</div>
												</div>
											</div>

										</div>
									</div>

									<div class="yllist" style="width: 90%; float: right;">
										<h4>&nbsp;</h4>
										<h3 style="font-weight: bold;">
											歌曲列表<small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</small>
										</h3>
										<div style="border-top: 2px solid red;"></div>
									</div>
									<!--
              	作者：offline
              	时间：2017-11-12
              	描述：歌曲的表格
              -->
									<div class="musicList" style="width: 90%;">
										<table class="table">
											<thead>
												<tr>
													<th>歌曲编号</th>
													<th>歌曲编曲</th>
													<th>歌曲时长</th>
													<th>歌手</th>
												</tr>
											</thead>
											<div id="gequ">
												<tbody class="tbodyxra">
												<%int i=0;%>
												<c:forEach items="${list}" var="song">
													<%i++;%>
													<tr>
														<td><%=i%></td>				
														<td><a href="javascript:void(0);">${song.songName}</a></td>
														<td><div class="shicang" style="display: block;">${song.songTime}</div></td>
											        	<td><a href="javascript:void(0);">${song.singerName}</a></td>
														<td class='yinyue'><h4 hidden  class="songid">${song.songId}</h4>
	    				                     <a href="#"><span class="glyphicon glyphicon-music"></span></a>
	    				                     </td>
	    				                     <td><a href="#"><span class="glyphicon glyphicon-plus"></span></a></td>
													</tr>
													
												</c:forEach>
												</tbody>
											</div>

										</table>

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
	时间：2017-11-13
	描述：底部
-->

		<!--
	作者：offline
	时间：2017-11-11
	描述：热门推荐结束
-->
	</div>

</body>
<script type="text/javascript">
	$(function() {
		
		$(".leftlistone").click(function(){
		$("#yiyuebang").text("音乐飙升榜");										
		$("#tupian4").attr('src','bootstrap/musicimage/mymusic/飙升榜.jpg');
		$(".tbodyxra tr").remove();
		var i=0;
		$.get("paihangbiaoshen",function(biaoshenlist,status){
			$.each(biaoshenlist,function(index,biaoshenlist){
				i++;
				$(".tbodyxra").append("<tr><td>"+i+"</td><td><a href='javascript:void(0);'>"+biaoshenlist.songName+"</a>"+
						"</td><td><div class='shicang' style='display: block;'>"+biaoshenlist.songTime+"</div>"+
						"<div id='1' class='xiazai btn-group' style='display: none; background-color: white; margin-top: -18px;'>"+
						"<a href='javascript:void(0);' style='text-decoration: none;'>"+
						"<span class='glyphicon glyphicon-download-alt'  style='color:#101010'></span>"+
						"<span class='glyphicon glyphicon-play' id='bofang2'></span>"+
						"<span class='glyphicon glyphicon-pause' id='bofang1'></span>"+
		                "<span class='glyphicon glyphicon-log-out' style='color:#101010'></span></a></div></td><td>"+
						"<a href='javascript:void(0);'>"+biaoshenlist.singerName+"</a></td>"+
						"<td class='yinyue'><h4 hidden  class='songid'>"+biaoshenlist.songId+"</h4>"+
	                    "<a href='#'><span class='glyphicon glyphicon-music'></span></a>"+
	                    "</td>"+
	                    "<td><a href='#'><span class='glyphicon glyphicon-plus'></span></a></td>"+
						"</tr>");
			})
		}); 
			
		})
		
		$(".leftlisttwo").click(function(){
		$("#yiyuebang").text("音乐新歌榜");
		$("#tupian4").attr('src','bootstrap/musicimage/mymusic/新歌榜.jpg');	
		$(".tbodyxra tr").remove();
		var i=0;
		$.get("paihangnewsong",function(newsonglist,status){
			$.each(newsonglist,function(index,newsonglist){
				i++;
				$(".tbodyxra").append("<tr><td>"+i+"</td><td><a href='javascript:void(0);'>"+newsonglist.songName+"</a>"+
						"</td><td><div class='shicang' style='display: block;'>"+newsonglist.songTime+"</div>"+
						"<div id='1' class='xiazai btn-group' style='display: none; background-color: white; margin-top: -18px;'>"+
						"<a href='javascript:void(0);' style='text-decoration: none;'>"+
						"<span class='glyphicon glyphicon-download-alt'  style='color:#101010'></span>"+
						"<span class='glyphicon glyphicon-play' id='bofang2'></span>"+
						"<span class='glyphicon glyphicon-pause' id='bofang1'></span>"+
		                "<span class='glyphicon glyphicon-log-out' style='color:#101010'></span></a></div></td><td>"+
						"<a href='javascript:void(0);'>"+newsonglist.singerName+"</a></td>"+
						"<td class='yinyue'><h4 hidden  class='songid'>"+newsonglist.songId+"</h4>"+
	                    "<a href='#'><span class='glyphicon glyphicon-music'></span></a>"+
	                    "</td>"+
	                    "<td><a href='#'><span class='glyphicon glyphicon-plus'></span></a></td>"+
						"</tr>");
			})
		});
		})
		
		
		//音乐播放的歌曲编号传递到父页面
		$(document).on("click",".yinyue",function(){ 
			//这里需要获取这首歌曲的音频地址、图片地址、歌曲名、歌手名、和trackAlbum : "Single" 这里只能用list
			//歌曲的编号
		var a=$(this).find(".songid").text();
	    window.parent.$.judgelogin(a); 
		});
		//音乐飙升榜中的歌曲被点击的时候
		/* $(document).on("click",".yinyue",function(){ 
			//这里需要获取这首歌曲的音频地址、图片地址、歌曲名、歌手名、和trackAlbum : "Single" 这里只能用list
			//歌曲的编号
		var a=$(this).find(".songid").text();
	    window.parent.$.judgelogin(a); 
		});
		 */
		
		
		
		})
		
	
</script>

</html>