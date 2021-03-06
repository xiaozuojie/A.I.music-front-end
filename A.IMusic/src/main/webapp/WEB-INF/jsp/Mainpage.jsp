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
	height: 100px;
	border: 1px solid blue;
}

.jAudio--status-bar {
	position: absolute;
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
									class="glyphicon glyphicon-home"><a href="list" >首页</a></li>
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


							<li class="dropdown" id="userxra"><img id="maintx"
								src="bootstrap/touxiangimage/moren/默认头像.png" width="44px"
								height="44px" /> <span class="caret"
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
				style="position: fixed; width: 70px; margin-left: -270px; margin-top: -1710px; background-image: url(bootstrap/musicjs/1jpg.jpg); background-size: 400px 100px; background-repeat: no-repeat;">

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
						<img id="toux"
							style="width: 80px; height:80px;  border-radius: 50%; margin-left: 44%; margin-bottom: 5%"
							src="bootstrap/touxiangimage/moren/默认头像.png" />
						<form action="loginin" method="post">
							<div id="name">
								<input type="text" name="textname" id="textname"
									placeholder="用户名 " />
							</div>
							<div id="password">
								<input type="password" name="textpwd" id="pwd" placeholder="密码 " />
							</div>
							<div id="changeuser"></div>
							<div id="btn_up">
								<input type="submit" id="log" value="登录 " />
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
</body>


<script type="text/javascript">
	$(function() {
		$("#userxra").hide();
		$("#vistor").show();
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
		/* $("#log").click(function() {
			$("#vistor").hide();
			$("#userxra").show();
		}); */

		//歌单点击播放的自定义函数事件

		$.extend({
			'judgelogin' : function(typeid) {
				if (typeid != null) {
					var listenid = parseInt(typeid);
					$.get("listajaxsong/" + listenid, function(listajaxsong,
							status) {
						showData(listajaxsong, status);
					})
				}
			}
		});

		//专辑点击播放事件
		$.extend({
			'judgezhuanji' : function(zhuanjiname) {

				if (zhuanjiname != null) {
					var listenname = zhuanjiname;
					$.get("zhuanjiajaxsong/" + listenname, function(
							listajaxsong, status) {
						showData(listajaxsong, status);
					})
				}
			}
		});

		/*//这里利用ajax获取到单曲的歌曲的内容
			$.extend({
					'judgeloginsong' : function(th) {
						$.get("SongInfo?th="+th,function(listajaxsong,status){						
							showData(listajaxsong,status); 
			})
			}judgeloginsongjudgelogin
		}
		});
		 */
		//单首歌曲被点击的时候
		$.extend({
			'judgeloginsong' : function(th) {

				$.get("SongInfo?th=" + th, function(listsongjson, status) {

					showData(listsongjson, status);
				})

			}
		});

		//播放器的封装方法
		function showData(listajaxsong, satus) {
			var t = {
				playlist : listajaxsong,
				autoPlay : true
			}
			$(".jAudio--player").jAudio(t);
		}

	})
	

</script>
<!-- 登录事件 -->
<script type="text/javascript">
$(function() {
	var pat1="bootstrap/touxiangimage/";
	var pam1="bootstrap/touxiangimage/moren/默认头像.png";
	if(${n==0}){
		alert('用户名不存在');
	}else if(${x==0}){
		alert('密码错误');
	}else if(${x==1}){
		/* alert("${utup}"); */
		 if("${utup}"=="notx"){
			 $("#maintx").attr('src',pam1);
		}else {
			$("#maintx").attr('src',pat1+"${utup}");
		}
		$("#vistor").hide();
		$("#userxra").show(); 
	}
	
	});
</script>
<!-- 登录窗口头像变换  -->
<script type="text/javascript">
var path="bootstrap/touxiangimage/";
var pamr="bootstrap/touxiangimage/moren/默认头像.png";
		$(function() {
			$("#textname").blur(function(){
				$.get("selecttouxiang", {
					"tname" : $("#textname").val()
				}, function(data) {
					if(data!="cw"){
					$("#toux").attr('src',path+data);
					}else{
					$("#toux").attr('src',pamr);
					}
				});
			});
		});
	</script>

</html>
