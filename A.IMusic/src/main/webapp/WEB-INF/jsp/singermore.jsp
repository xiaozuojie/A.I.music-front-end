<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
			<div id="headerone">
				<div class="container">
					<div class="row clearfix">

						<div class="col-md-2 logo">
							<ul>
								<li>
									<img src="bootstrap/musicimage/mainpageimage/musiclogp.png" style="height: 41px;width: 41px;" />
								</li>
								<li>
									网易云音乐
								</li>
							</ul>
						</div>

						<div class="col-md-6 column xcenter">
							<div class="col-md-5 xcenterone">
								<ul>
									<li class="daohang"><span class="glyphicon glyphicon-home"><a  href="#">首页</a></li>
						 	<li class="daohang"><a  href="#">我的音乐</a></li>	
						 </ul>
						</div>
					</div>
					<div class="col-md-4 column xright" >		
						<ul>
							<li><input type="text" id="" placeholder="搜王力宏新专"  value="" style=" width: 188px; background:white;outline:none; "/></li>
							<li id="vistor"><a href="">登录</a><a href="">注册</a></li>
			
		<!--
        	作者：offline
        	时间：2017-11-11
        	描述：用户头像和下拉列表开始
        -->	
			
			
							<li class="dropdown" id="userxra">
							<img src="bootstrap/musicimage/mainpageimage/头像.jpg" width="44px" height="40px"  />												
							<span class="caret" style="color: rgb(119,136,153);" ></span>
										<!--
    	作者：offline
    	时间：2017-11-11
    	描述：鼠标移动到头像右侧处下拉列表开始
    -->

										<ul class="dropdown-menu xialaliebiao " style="background-color: rgb(36,36,36);height: 120px;text-align: center;color: rgb(119,136,153);">
											<div class="xialabioa" style="text-align: left; height: 38px;line-height: 38px;">
												<p style="margin-left: 40px;"><span class="glyphicon glyphicon-user"></span>个人主页</p>
											</div>

											<div class="xialabioa" style="text-align: left; height: 38px;line-height: 38px;">
												<p style="margin-left: 40px;"><span class="glyphicon glyphicon-asterisk"></span>个人设置</p>
											</div>
											<div class="xialabioa" id="userleave" style="text-align: left; height: 38px;line-height: 38px;">
												<p style="margin-left: 40px;"><span class="glyphicon glyphicon-off"></span>退出</p>
											</div>

										</ul>

										<!--
    	作者：offline
    	时间：2017-11-11
    	描述：下拉列表结束
    -->

									</li>

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
				<div id="headertwo">
					<div class="col-md-3">
					</div>
					<!--推荐、排行榜、歌单等-->
					<div class="col-md-5 headertwotwo">
						<div class="list lefelist" style="border: none;">
							<a href="#" class="list-group">
								<div>
									推荐
								</div>
							</a>
						</div>
						<div class="list lefelist" style="border: none;">
							<a href="#" class="list-group ">
								<div>
									排行榜
								</div>
							</a>
						</div>
						<div class="list lefelist" style="border: none;">
							<a href="#" class="list-group ">
								<div>
									歌单
								</div>
							</a>
						</div>
						<div class="list lefelist" style="border: none;">
							<a href="#" class="list-group ">
								<div>
									歌手
								</div>
							</a>

						</div>
						<div class="list lefelist" style="border: none;">
							<a href="#" class="list-group ">
								<div>
									新碟上架
								</div>
							</a>
						</div>
					</div>
					<!--推荐、排行榜、歌单等结束-->
					<div class="col-md-3">
					</div>
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
														<h2 id="artist-name" data-rid="10559" class="sname f-thide sname-max" title="张惠妹 - aMEI;阿密特">张惠妹</h2>
														<h4 id="artist-alias" class="salias f-thide" style="margin-top: 4%; color: gray;" title="张惠妹 - aMEI;阿密特">aMEI;阿密特
														</h4>
														<a id="artist-sub" style="margin-left: 395px;margin-top: 25px;" href="javascript:void(0)" class="btnfav f-tid"><span class="glyphicon glyphicon-star"></span>收藏</a>
													</div>
													<img style="width: 95%;" src="http://p3.music.126.net/-JxOlVRUl3OFqNkCIu9dlw==/678398674363509.jpg?param=640y300">
													<div class="mask f-alpha"></div>
												</div>
												<div id="" style="background-color:rgb(192,12,12) ; margin: 0 5% ; width:90%; height: 3px;">

												</div>
												<ul class="nav nav-tabs" style="margin-left:5% ;">
													<li class="">
														<a href="#" target="iframe">热门单曲</a>
													</li>
													<li>
														<a href="#" target="iframe">歌手专辑</a>
													</li>
													<li class="">
														<a href="#" target="iframe">歌手介绍</a>
													</li>
												</ul>
												
												
	<div id="zhengti" style=" margin-left: 40px ;margin-top: 15px;">

			<div id="" style="display: flex;">
				<div class="btn-group" data-toggle="buttons">
					<button type="button" class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-play-circle"></span>播放
       
				</div>
			
		</div>
		<table class="table">
				<tbody>
					<tr>
						<td>
							1
						</td>
						<td>
							<a href="javascript:void(0);">我杰哥的牙</a>
						</td>
						<td><div id="12345" class="shicang" style="display: block;" >
							4:24
						</div>
						<div id="1" class="xiazai btn-group" style="display: none; background-color: white; margin-top: -13%; ">
							<a href="javascript:void(0);">这是我杰哥</a>
						</div>
						</td>
						<td>
							<a href="javascript:void(0);">杰哥床边的故事</a>
						</td>
					</tr>
					<tr>
						<td>
							2
						</td>
						<td>
							<a href="javascript:void(0);">我杰哥的嘴</a>
						</td>
						<td>
							<div class="shicang" style="display: block;" >
							4:24
						</div>
						<div id="2"  class="xiazai btn-group" style="display: none; background-color: white; margin-top: -13%;">
							<a href="javascript:void(0);">这是我杰哥</a>
						</div>
						</td>
						<td>
							<a href="javascript:void(0);">杰哥床边的故事</a>
						</td>
					</tr>
					
				</tbody>
		 </table>
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

			<!--
	作者：offline
	时间：2017-11-11
	描述：音乐播放器开始
-->

			<div class="audio-box">
				<div class="audio-container">
					<div class="audio-view">
						<div class="audio-cover"></div>
						<div class="audio-body">
							<h3 class="audio-title">未知歌曲</h3>
							<div class="audio-backs">
								<div class="audio-this-time">00:00</div>
								<div class="audio-count-time">00:00</div>
								<div class="audio-setbacks">
									<i class="audio-this-setbacks">
								<span class="audio-backs-btn"></span>
							</i>
									<span class="audio-cache-setbacks">
							</span>
								</div>
							</div>
						</div>
						<div class="audio-btn">
							<div class="audio-select">
								<div class="audio-prev"></div>
								<div class="audio-play"></div>
								<div class="audio-next"></div>
								<div class="audio-menu"></div>
								<div class="audio-volume"></div>
							</div>
							<div class="audio-set-volume">
								<div class="volume-box">
									<i><span></span></i>
								</div>
							</div>
							<div class="audio-list">
								<div class="audio-list-head">
									<p>歌单</p>
									<span class="menu-close">关闭</span>
								</div>
								<ul class="audio-inline">
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!--
	作者：offline
	时间：2017-11-11
	描述：音乐播放器结束
-->
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
		/**
		 * 播放器点击事件
		 */
		$(function() {
			/**
			 * 添加歌曲事件，可以陆续添加
			 */
			var song = [{
					'cover': 'bootstrap/musicimage/mainpageimage/封面1.jpg',
					'src': 'bootstrap/music/王力宏-第一个清晨.mp3',
					'title': '王力宏-第一个清晨'
				},
				{
					'cover': 'bootstrap/musicimage/mainpageimage/封面3.jpg',
					'src': 'bootstrap/music/薛之谦 - 意外.mp3',
					'title': '薛之谦 - 意外'
				},
				{
					'cover': 'bootstrap/musicimage/mainpageimage/封面4.jpg',
					'src': 'bootstrap/music/王力宏-花田错.mp3',
					'title': '王力宏-花田错'
				},
				{
					'cover': 'bootstrap/musicimage/mainpageimage/封面5.jpg',
					'src': 'bootstrap/music/陶喆 - Angel.mp3',
					'title': '陶喆 - Angel'
				},
				{
					'cover': 'bootstrap/musicimage/mainpageimage/封面6.jpg',
					'src': 'bootstrap/music/陶喆 - Melody.mp3',
					'title': '陶喆 - Melody'
				},
			];

			var audioFn = audioPlay({
				song: song,
				autoPlay: false //是否立即播放第一首，autoPlay为true且song为空，会alert文本提示并退出
			});

			/* 向歌单中添加新曲目，
			 * 第二个参数true为新增后立即播放该曲目，false则不播放
			 * 意识是，当你在听第一首歌的时候，列表还有很多歌没放，但是当你在浏览的网页的歌曲时候，突然发现有立刻想听的歌曲，然后添加列表中，如果为true，则点击
			 * 下一首时，会立刻播放刚刚添加的这首，如果为false则，默认最后播放
			 * 
			 * */
			audioFn.newSong({
				'cover': 'bootstrap/musicimage/mainpageimage/封面2.jpg',
				'src': 'bootstrap/music/王力宏-大城小爱.mp3',
				'title': '王力宏-大城小爱'
			}, false);

			/* 暂停播放 */
			//audioFn.stopAudio();

			/* 开启播放 */
			//audioFn.playAudio();

			/* 选择歌单中索引为3的曲目(索引是从0开始的)，第二个参数true立即播放该曲目，false则不播放 */

			//audioFn.selectMenu(3,true);

			/* 查看歌单中的曲目 */
			//console.log(audioFn.song);

			/* 当前播放曲目的对象 */
			//console.log(audioFn.audio);
		});
	</script>

</html>