<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<script src="bootstrap/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<script src="bootstrap/musicjs/script.js" type="text/javascript" charset="utf-8"></script>
		<script src="bootstrap/musicjs/audio.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/gedangpage.css" />
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/lunbocss.css" />
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/audio.css" />
		<title></title>
	</head>

	<body style="background-color:#FAF4FF;">
		<div class="content">

			<!--
	作者：offline
	时间：2017-11-11
	描述：下面内容开始
-->
			<div class="container">
				<div class="row clearfix">
					<div class="col-md-12 column" style="border: 1px ; width: 83%; height: 1700px;">
						<div class="row clearfix">
							<!--
	作者：offline
	时间：2017-11-11
	描述：歌單
-->
							<div class="col-md-8 column" style="border: 1px ; width: 100%; height: 800px;margin: 0px;padding: 0px;">
								<div style="margin-top: 20px;height: 40px;">
									<div class="rementuijian" style="width: 80%;float: left; height: 40px;border: 1px ;border-bottom: 2px solid red;				
    							" align="center">
										<ul>
											<li style="margin-left: 20px;">
												<a href="#">所有</a>
											</li>
											<li>
												<a href="#">华语</a>
											</li>
											<li>
												<a href="#">流行</a>
											</li>
											<li>
												<a href="#">摇滚</a>
											</li>
											<li>
												<a href="#">民谣</a>
											</li>
											<li>
												<a href="#">电子</a>
											</li>
										</ul>
									</div>
									<div class="rementuijian" style="float: right; width: 20%;height: 40px;border: 1px ; border-bottom: 2px solid orangered;">
										<ul>
											<li style="margin-left: 30px; float: left;">
												<a href="#" style="font: '微软雅黑' ; font-size: large;">热门</a>
											</li>
											<li style="margin-left: 30px;float: left;">
												<a href="#" style="font: '微软雅黑' ; font-size: large;">最新</a>
											</li>
										</ul>

									</div>
								</div>

								<!--
                	作者：offline
                	时间：2017-11-12
                	描述：這是歌單
                -->
								<div style="margin-left: 40px; margin-top: 20px; border: 1px solid red;">
									<ul class="m-cvrlst f-cb" id="m-pl-container">
										<!--<li style="">
											<div class="u-cover u-cover-1" style="border: 1px solid black; width: 18%; height: 190px; float: left;">
												<img class="j-flag" height="150px" width="140px" src="bootstrap/musicimage/deipian/3.jpg">
												<a title="说唱的艺术，不止押韵而已" href="#" class="msk"></a>
												<div class="bottom" style="border: 1px solid red; text-overflow:ellipsis; white-space:nowrap;overflow:hidden;width:140px;">
													<a class="icon-play f-fr" title="播放" href="javascript:;" data-res-type="13" data-res-id="937264651" data-res-action="play"></a>

												<span class="icon-headset"></span>
                                                        <a href="#" style="position: absolute;margin-left: 120px;margin-top: -20px;">
                                              <span class="glyphicon glyphicon-expand"></span>
                                         </a>
														<p class="dec" style="margin-top: 8px;">
														<a title="说唱的艺术，不止押韵而已"  href="#" class="tit f-thide s-fc0">说唱的艺术，不止押韵而已</a>
													</p>								
												</div>
											</div>
										</li>-->
									</ul>
								</div>
							</div>
							<!--
	作者：offline
	时间：2017-11-11
	描述：歌單结束
-->

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

	</body>

	<script type="text/javascript">
		$(function() {
					$("#m-pl-container").append("<li style=''>"+
											"<div class='u-cover u-cover-1' style='border: 1px solid black; width: 18%; height: 190px; float: left;'>"+
												"<img class='j-flag' height='150px' width='140px' src='bootstrap/musicimage/deipian/3.jpg'>"+
												"<a title='说唱的艺术，不止押韵而已' href='#' class='msk'></a>"+
												"<div class='bottom' style='border: 1px solid red; text-overflow:ellipsis; white-space:nowrap;overflow:hidden;width:140px;'>"+
													"<a class='icon-play f-fr' title='播放' href='javascript:;' data-res-type='13' data-res-id='937264651' data-res-action='play'></a>"+
												"<span class='icon-headset'></span>"+
                                                        "<a href='#' style='position: absolute;margin-left: 120px;margin-top: -20px;'>"+
                                              "<span class='glyphicon glyphicon-expand'></span></a>"+                                   
														"<p class='dec' style='margin-top: 8px;'>"+
														"<a title='说唱的艺术，不止押韵而已'  href='#' class='tit f-thide s-fc0'></a>"+
													"</p>"+								
												"</div>"+
											"</div>"+
										"</li>");
					})
	</script>

</html>