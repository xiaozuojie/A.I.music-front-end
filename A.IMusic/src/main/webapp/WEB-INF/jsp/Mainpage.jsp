<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="bootstrap/js/jquery-2.1.0.js" type="text/javascript"
	charset="utf-8"></script>
<script src="bootstrap/js/bootstrap.js" type="text/javascript"
	charset="utf-8"></script>
<script src="bootstrap/musicjs/jaudio.js" type="text/javascript"
	charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/musicjs/main.css" />
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="bootstrap/Musiccss/mainpage.css" />
<link rel="stylesheet" type="text/css" href="bootstrap/css/login.css" />

<title></title>
<style type="text/css">
.jAudio--playlist {
	height: 120px;
	over-x: hidden;
	overflow-y: auto;
}

.jAudio--ui {
	height: 120px;
	border: 1px solid red;
}

.jAudio--status-bar {
	position: absolute;
	border: 1px solid blue;
	margin-top: -80px;
}

.jAudio--time {
	margin-top: -15px;
}

.jAudio--controls {
	border: 1px solid black;
	height: 60px;
}

.jAudio--details {
	width: 150px;
}
</style>

<!--   <script>
  	function tiaozuan(){
  		location.href="Mymusic.jsp";
  	}
  	
  	function tiaozuan1(){
  		location.href="Mainpage.jsp";
  	}
  </script> -->
</head>
<body style="background-color: rgb(245, 245, 245);">
	<!--头部logo以及导航栏开始-->
	<div id="header">
		<div id="headerone">
			<div class="container">
				<div class="row clearfix">

					<div class="col-md-2 logo">
						<ul>
							<li><img
								src="bootstrap/musicimage/mainpageimage/musiclogp.png"
								style="height: 41px; width: 41px;" /></li>
							<li>A.I.爱音乐</li>
						</ul>
					</div>

					<div class="col-md-6 column xcenter">
						<div class="col-md-5 xcenterone">
							<ul>
								<li class="daohang" id="li1" onclick="tiaozuan1()"><span
									class="glyphicon glyphicon-home"><a href="list">首页</a></li>
								<li class="daohang" id="li2" onclick="tiaozuan()"><a
									href="mymusiclist" target="vistorcontent">我的音乐</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-4 column xright">
						<ul>
							<li><input type="text" id="" placeholder="搜王力宏新专" value=""
								style="width: 188px; background: white; outline: none;" /></li>
							<li id="vistor"><a href="#modal-container-580488"
								data-toggle="modal">登录</a><a href="register">注册</a></li>
							<!--
        	作者：offline
        	时间：2017-11-11
        	描述：用户头像和下拉列表开始
        -->


							<li class="dropdown" id="userxra"><img
								src="bootstrap/musicimage/mainpageimage/头像.jpg" width="44px"
								height="40px" /> <span class="caret"
								style="color: rgb(119, 136, 153);"></span> <!--
    	作者：offline
    	时间：2017-11-11
    	描述：鼠标移动到头像右侧处下拉列表开始
    -->

								<ul class="dropdown-menu xialaliebiao "
									style="background-color: rgb(36, 36, 36); height: 120px; text-align: center; color: rgb(119, 136, 153);">
									<div class="xialabioa"
										style="text-align: left; height: 38px; line-height: 38px;">
										<p style="margin-left: 40px;">
											<span class="glyphicon glyphicon-user"></span>个人主页
										</p>
									</div>

									<div class="xialabioa"
										style="text-align: left; height: 38px; line-height: 38px;">
										<p style="margin-left: 40px;">
											<a href="gerenzhongxin" target="vistorcontent"><span
												class="glyphicon glyphicon-asterisk"></span>个人设置</a>
										</p>
									</div>
									<div class="xialabioa" id="userleave"
										style="text-align: left; height: 38px; line-height: 38px;">
										<p style="margin-left: 40px;">
											<span class="glyphicon glyphicon-off"></span>退出
										</p>
									</div>

								</ul> <!--
    	作者：offline
    	时间：2017-11-11
    	描述：下拉列表结束
    --></li>

							<!--
        	作者：offline
        	时间：2017-11-11
        	描述：用户头像和下拉列表结束
        -->
						</ul>
					</div>

				</div>
			</div>
		</div>
		<!--
	导航二开始
-->
		<div class="arrow-up">
			<!--向上的三角-->
		</div>
		<div id="headertwo">
			<div class="col-md-3"></div>
			<!--推荐、排行榜、歌单等-->
			<div class="col-md-5 headertwotwo">
				<div class="list lefelist" style="border: none;">
					<a href="tuijinalist" class="list-group" target="vistorcontent">
						<div>推荐</div>
					</a>
				</div>
				<div class="list lefelist" style="border: none;">
					<a href="paihanglist" class="list-group " target="vistorcontent">
						<div>排行榜</div>
					</a>
				</div>
				<div class="list lefelist" style="border: none;">
					<a href="gedanlist" class="list-group " target="vistorcontent">
						<div>歌单</div>
					</a>
				</div>
				<div class="list lefelist" style="border: none;">
					<a href="singermorepagelist" class="list-group "
						target="vistorcontent">
						<div>歌手</div>
					</a>

				</div>
				<div class="list lefelist" style="border: none;">
					<a href="xindieshangjialist" class="list-group "
						target="vistorcontent">
						<div>新碟上架</div>
					</a>
				</div>
			</div>
			<!--推荐、排行榜、歌单等结束-->
			<div class="col-md-3"></div>
		</div>
		<!--
	导航二结束
-->
	</div>
	<!--头部logo以及导航栏结束-->
	<!--
	作者：offline
	时间：2017-11-11
	描述：下方内容开始
-->
	<div class="container"">
		<div class="row clearfix">
			<div class="col-md-10 column">
				<iframe id="musicmainpage" name="vistorcontent" scrolling="no"
					src="tuijinalist" width="1400px" height="2200px" scrolling="no"
					frameborder="0"> </iframe>

			</div>
		</div>




		<!--
	作者：offline
	时间：2017-11-11
	描述：音乐播放器开始
-->
		<div id="12">


			<div class='jAudio--player'
				style="position: fixed; width: 70px; margin-left: -185px; margin-top: -1800px; background-image: url(bootstrap/musicjs/1jpg.jpg); background-size: 400px 100px; background-repeat: no-repeat;">

				<audio></audio>

				<div class='jAudio--ui'>

					<div class='jAudio--thumb'></div>

					<div class='jAudio--status-bar'>

						<div class='jAudio--details'></div>
						<div class='jAudio--volume-bar'></div>

						<div class='jAudio--progress-bar'>
							<div class='jAudio--progress-bar-wrapper'>
								<div class='jAudio--progress-bar-played'>
									<span class='jAudio--progress-bar-pointer'></span>
								</div>
							</div>
						</div>

						<div class='jAudio--time'>
							<span class='jAudio--time-elapsed'>00:00</span> <span
								class='jAudio--time-total'>00:00</span>
						</div>

					</div>

				</div>


				<div class='jAudio--playlist'
					style="background-image: url(bootstrap/musicjs/1jpg.jpg);"></div>
				<input type="button" class="bofang" name="" id="" value="播放" />
				<div class='jAudio--controls'
					style="background-image: url(bootstrap/musicjs/1jpg.jpg);">
					<ul>
						<li><button class='btn' data-action='prev' id='btn-prev'>
								<span></span>
							</button></li>
						<li><button class='btn' data-action='play' id='btn-play'>
								<span></span>
							</button></li>
						<li><button class='btn' data-action='next' id='btn-next'>
								<span></span>
							</button></li>
					</ul>
				</div>
			</div>
		</div>


		<!--
	作者：offline
	时间：2017-11-11
	描述：音乐播放器结束
-->

		<!-- 登录模态窗口 -->
		<div class="modal fade" id="modal-container-580488" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">账号登录</h4>
					</div>
					<div class="modal-body">
						<form>
							<div id="name">
								<input type="text" id="textname" placeholder="用户名 " />
							</div>
							<div id="password">
								<input type="password" id="pwd" placeholder="密码 " />
							</div>
							<div id="changeuser"></div>
							<div id="btn_up">
								<input type="submit" id="log" data-dismiss="modal"
									aria-hidden="true" value="登录 " />
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
</body>


<script type="text/javascript">
	$(function() {

		$("#vistor").show();
		$("#userxra").hide();
		$(".logo").hover().css("cursor", "pointer");
		$(".daohang").hover().css("cursor", "pointer");
		$(".xialabioa").hover().css("cursor", "pointer");

		$(".daohang").first().addClass("xcenteroneone");//先设置推荐是点击的	 	
		$(".lefelist").first().addClass("navsearch");//先设置推荐是点击的	
		/**
		 * 导航栏的点击事件
		 */
		$(".lefelist").click(function() {
			$(this).addClass('navsearch').siblings().removeClass('navsearch');
		})
		$(".daohang").click(
				function() {
					$(this).addClass('xcenteroneone').siblings().removeClass(
							'xcenteroneone');
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
		});
		$("#log").click(function() {
			$("#vistor").hide();
			$("#userxra").show();
		});
		$.extend({
			'judgelogin' : function(th) {
				if (th != null) {
					var funk = "keyi";
					$.aaa(funk);
				}
			}
		});

		$(".bofang").click(function() {
			var t = {
				playlist : [ {
					file : "bootstrap/musicjs/伯牙绝弦.mp3",
					thumb : "thumbs/01.jpg",
					trackName : "飘向北方",
					trackArtist : "王力宏",
					trackAlbum : "Single",
				}

				],
				autoPlay : true
			}
			$(".jAudio--player").jAudio(t);
		})

	});
</script>
</html>
