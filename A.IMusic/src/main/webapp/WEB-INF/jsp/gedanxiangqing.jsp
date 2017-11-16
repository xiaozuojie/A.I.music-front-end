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
		<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/gedangxiangqing.css"/>
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/lunbocss.css"/>
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/audio.css"/>
	    <style type="text/css">
    	.remengedan li {
	     height: 70px;
}
    </style>
	</head>

	<body onload="init()" style="background-color: rgb(245,245,245);">
<!--头部logo以及导航栏开始-->
		<div id="header">
		 <div id="headerone">	
			<div class="container">
				<div class="row clearfix">
					
					<div class="col-md-2 logo" >   
			        <ul>
			         	<li>
			         	<img src="bootstrap/musicimage/mainpageimage/musiclogp.png" style="height: 41px;width: 41px;"/>					
			         	</li>
			         	<li>			    
			         	 	网易云音乐			         		
			         	</li>
			        </ul>		   
					</div>
					
					<div class="col-md-6 column xcenter" >
						<div class="col-md-5 xcenterone" >
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
									
		<ul class="dropdown-menu xialaliebiao "   style="background-color: rgb(36,36,36);height: 120px;text-align: center;color: rgb(119,136,153);">      
          <div class="xialabioa" style="text-align: left; height: 38px;line-height: 38px;">
            <p style="margin-left: 40px;"><span class="glyphicon glyphicon-user" ></span>个人主页</p>  
          </div>
          
          <div class="xialabioa"  style="text-align: left; height: 38px;line-height: 38px;">
          	 <p style="margin-left: 40px;"><span class="glyphicon glyphicon-asterisk"></span>个人设置</p>    
          </div>
          <div class="xialabioa" id="userleave"  style="text-align: left; height: 38px;line-height: 38px;">
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
   	  <div class="col-md-5 headertwotwo" >  
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
	          <div  class="content">
		
<!--
	作者：offline
	时间：2017-11-11
	描述：下面内容开始
-->	
<div class="container" style="" >
	<div class="row clearfix">
		<div class="col-md-12 column" style=" width: 83%;background-color:white" >
			<div class="row clearfix">
<!--
	作者：offline
	时间：2017-11-11
	描述：专辑图片以及一些属性
-->	
			<div class="col-md-8 column" style=" width: 75%;margin: 0px;padding: 0px;border: 1px solid gray;">		
				<div  class="zhuyao"  style="width: 90%;float: right; height: 40px; ">
					<img id="tupian4" width="170px" height="170px" src="bootstrap/musicimage/mainpageimage/头像.jpg"/>
					<div id="tupian4-1" >
         				 <span><img src="bootstrap/musicimage/mymusic/icon.png"/></span>
     					 <h3>reputation</h3><br />
						 <span><img src="bootstrap/musicimage/mainpageimage/touxiang1.jpg"/>&nbsp;&nbsp;&nbsp;<a>Taylor Swift</a> </span>
						 &nbsp;&nbsp;&nbsp;&nbsp;
						 <span>发行时间:&nbsp;&nbsp;&nbsp; 2001-9-29</span><br />
						 <button type="button" class="btn btn-default btn-sm "><i class="fa fa-caret-square-o-right fa-inverse-red">播放</i></button>
						 <button type="button" class="btn btn-default btn-sm"><i class="fa fa-plus-square">收藏</i></button>
						 <button type="button" class="btn btn-default btn-sm"><i class="fa fa-external-link">转发(21312)</i></button>
						 <button type="button" class="btn btn-default btn-sm"><i class="fa fa-arrow-circle-down">下载</i></button>
						 <button type="button" class="btn btn-default btn-sm"><i class="fa fa-commenting-o">(23123)</i></button><br /><br />
						 <span id="biaoqian">标签：
			    		 <input type="button" class="btn btn-default btn-sm" id="bq" value="华语" style="border-radius: 12px;"/>
			    		 <input type="button" class="btn btn-default btn-sm" id="bq" value="华语" style="border-radius: 12px;"/>
			    	 	 <input type="button" class="btn btn-default btn-sm" id="bq" value="华语" style="border-radius: 12px;"/>
			    		 </span><br />
					</div>
		           
			   </div>
			   
			    <div id="content"  class="zhuyao1"  style="width: 90%;float: right;">
			    	<h5 style="font-weight:bold;">歌单介绍:</h5>
					<span id="wenzi1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们谁不曾在城市里盲目流动，努力生长。人海中浮动的万千面孔陌生、机械化，冷漠的外表下都有一个被压抑了的生动灵魂。金玟岐2017第三张个人EP《沙发》三组歌曲也许能在共鸣感中给你慰藉，让你转身回望到那个舒适的港湾。
第三张EP《沙发》包含三首原创歌曲《沙发》《711》《手机》依然由金玟岐全揽词曲创作，著名制作人薛琳可完成完成编曲，默契十足的两人将这张EP诠释得明快又生活。金玟岐将自己投入到每一首歌的场景里，描写每一个冷漠外表下被压抑了的生动灵魂。
主打歌《沙发》是家的象征，很久以前我们每天都可以回到自己的客厅每一个家都是一座岛屿，在城市的无垠大海中飘荡的你啊，累了就停泊上岸喘口气，你不需要满载而归，你不需要凯旋胜利，卸下所有盔甲和身份，这里有遮风挡雨的一方天地。
《711》这首歌注入了鼓和打击乐，旋律更加清朗明快，都市感十足。金玟岐抖落之前发布歌曲舒缓、低沉的氛围，多了几分戏谑的唱腔，白描化的语言，画面感十足，在这个孤独，缺憾又不失美好的城市，为你歌唱灵魂的归属与认同。
压轴歌曲《手机》将听众的认同感升华，为我们展现了一段暖心的故事。智能手机颠覆了人们的生活，让我们的距离既亲密又疏离。聚会的时候，先自拍一下帮我记录我现在快乐的样子，然后再Po到社交媒体告诉大家我快乐的样子。手机也是记录我们快乐或悲伤的载体，而音乐是宣泄情绪的载体。这首歌特邀了立式贝斯手，配合金玟岐的词曲一同展现了音乐的张力。
			 </span></div>
			  <div class="yllist" style="width: 90%;float: right;">
			  	<h4>&nbsp;</h4>
			  	<h3 style="font-weight:bold;">包含歌曲列表
			  		<small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4首歌</small>
			  		<small style="float: right; margin-top: 10px;">播放:
			  			<span id="bofangcishu" style="color: red;">
			  			53020
			  			</span>次
			  		</small>
			  	</h3>
			  	<div style="border-top: 2px solid red;"></div>
			  </div>
			  <!--
              	作者：offline
              	时间：2017-11-12
              	描述：歌曲的表格
              -->
			  <div class="musicList" style="width: 90%;" >
			  	<table class="table table-striped table-hover" >
	<thead>
		<tr>
			<th>歌曲编号</th>
			<th>歌曲编曲</th>
			<th>歌曲时长</th>
			<th>歌手</th>
			<th>专辑</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>沙发</td>
			<td>04:21</td>
			<td>金玟岐</td>
			<td>Sandy</td>
		</tr>
		<tr>
			<td>2</td>
			<td>第一个清晨</td>
			<td>04:21</td>
			<td>王力宏</td>
			<td>Sandy</td>
		</tr>
		<tr>
			<td>3</td>
			<td>肖大陆</td>
			<td>04:21</td>
			<td>肖作杰</td>
			<td>Sandy</td>
		</tr>
		<tr>
			<td>4</td>
			<td>我们不一样</td>
			<td>04:43</td>
			<td>大壮</td>
			<td>Sandy</td>
		</tr>
		<tr>
			<td>4</td>
			<td>我们不一样</td>
			<td>04:43</td>
			<td>大壮</td>
			<td>Sandy</td>
		</tr>
		<tr>
			<td>4</td>
			<td>我们不一样</td>
			<td>04:43</td>
			<td>大壮</td>
			<td>Sandy</td>
		</tr>
		<tr>
			<td>4</td>
			<td>我们不一样</td>
			<td>04:43</td>
			<td>大壮</td>
			<td>Sandy</td>
		</tr>
		<tr>
			<td>4</td>
			<td>我们不一样</td>
			<td>04:43</td>
			<td>大壮</td>
			<td>Sandy</td>
		</tr>
		<tr>
			<td>4</td>
			<td>我们不一样</td>
			<td>04:43</td>
			<td>大壮</td>
			<td>Sandy</td>
		</tr>
		<tr>
			<td>4</td>
			<td>我们不一样</td>
			<td>04:43</td>
			<td>大壮</td>
			<td>Sandy</td>
		</tr>
	</tbody>
</table>
 </div>
 
 
			   <div class="pinglun" style="width: 90%;" > 
			   	<h4>&nbsp;</h4>
			   	<h3 style="font-weight:bold;">评论<small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;共1234评论</small></h3>
			   	<div style="border-top: 2px solid red;"></div>
			  </div>
			<!--
            	作者：offline
            	时间：2017-11-12
            	描述：评论开始
            -->
            <div class="pinglunStar" style="width: 90%;" >
       <form>    
    	<div>    
            <p id="face" style="position:absolute;margin-left: 10px;margin-top: 10px;"><img width="55px" height="55px" src="bootstrap/musicimage/mainpageimage/cover.png" class="current" /></p>
            <textarea  class="teratext"   style="margin-top: 15px;width:85px;height:50px; width: 580px;margin-left: 70px;border: 1px solid #D9D9D9;"></textarea>           
    	</div>
        <div class="tr">
            <p>
                <input id="sendBtn" type="button" value="评论" style="background-color: rgb(255,192,159);color: white;float: right;margin-right: 10px;" title="快捷键 Ctrl+Enter" />
            </p>
        </div>
      </form>
            	
   
       <h4>&nbsp;</h4>
       <h5 style="font-weight:bold;">精彩评论</h5>
       <div style="border-top: 1px solid gray;"></div>
        <div id="plh">        
        		<ul>
        		<li>
        		<div  class="tupian1" style=" float: left;" >
        			<img height="55px" width="55px" src="bootstrap/musicimage/mainpageimage/cover.png"/>
        		</div>	
        		
        		<div id="personpl" style="width: 80%;" >
        		   <div class="userName"><a href="#" style="color: orangered;">伯牙绝弦</a>:<span >下一季的中国有嘻哈的水电费撒的发生股份大胜多负少的发斯蒂芬撒大声地的发生的范德萨就是你了</span></div> 
        		    <span>9月13日 00:00</span>  <a id="dianz"><i class="fa fa-thumbs-up"></i></a><span>(2399)</span>&nbsp;&nbsp;|&nbsp;&nbsp;<span><a>回复</a></span>
        		</div>
        		</li>
        	</ul>
        	
        	
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
            <div class="col-md-4 column" style="width:25%;">		
            <div id="youbian" >
            	<span style="font-weight: bold;">热门歌单</span>
            </div>
            <div style="border-top: 2px solid gray;"></div>
               	<span >&nbsp;</span>              
                <ul class="remengedan">
            		<li>
            			<div id="tupian3" style=" float: left;">
            				<img  width="55px" height="55px"  src="bootstrap/musicimage/mainpageimage/cover2.jpg"/>
            			</div>
            			<div id="tupianmingzi">
            				<span style="font-size: 22px;">&nbsp;&nbsp;&nbsp;reputation</span><br />
            				<span style="font-size: 18px;">&nbsp;&nbsp;&nbsp;&nbsp;by&nbsp;&nbsp;<a href="#">楠</a></span>
            			</div>
            		</li>
            		<li>
            			<div id="tupian3" style=" float: left;">
            				<img  width="55px" height="55px"  src="bootstrap/musicimage/mainpageimage/cover2.jpg"/>
            			</div>
            			<div id="tupianmingzi">
            				<span style="font-size: 22px;">&nbsp;&nbsp;&nbsp;reputation</span><br />
            				<span style="font-size: 18px;">&nbsp;&nbsp;&nbsp;&nbsp;by&nbsp;&nbsp;<a href="#">楠</a></span>
            			</div>
            		</li>
            		<li>
            			<div id="tupian3" style=" float: left;">
            				<img  width="55px" height="55px"  src="bootstrap/musicimage/mainpageimage/cover2.jpg"/>
            			</div>
            			<div id="tupianmingzi">
            				<span style="font-size: 22px;">&nbsp;&nbsp;&nbsp;reputation</span><br />
            				<span style="font-size: 18px;">&nbsp;&nbsp;&nbsp;&nbsp;by&nbsp;&nbsp;<a href="#">楠</a></span>
            			</div>
            		</li>
            		<li>
            			<div id="tupian3" style=" float: left;">
            				<img  width="55px" height="55px"  src="bootstrap/musicimage/mainpageimage/cover2.jpg"/>
            			</div>
            			<div id="tupianmingzi">
            				<span style="font-size: 22px;">&nbsp;&nbsp;&nbsp;reputation</span><br />
            				<span style="font-size: 18px;">&nbsp;&nbsp;&nbsp;&nbsp;by&nbsp;&nbsp;<a href="#">楠</a></span>
            			</div>
            		</li>
            		<li>
            			<div id="tupian3" style=" float: left;">
            				<img  width="55px" height="55px"  src="bootstrap/musicimage/mainpageimage/cover2.jpg"/>
            			</div>
            			<div id="tupianmingzi">
            				<span style="font-size: 22px;">&nbsp;&nbsp;&nbsp;reputation</span><br />
            				<span style="font-size: 18px;">&nbsp;&nbsp;&nbsp;&nbsp;by&nbsp;&nbsp;<a href="#">楠</a></span>
            			</div>
            		</li>
            		<li>
            			<div id="tupian3" style=" float: left;">
            				<img  width="55px" height="55px"  src="bootstrap/musicimage/mainpageimage/cover2.jpg"/>
            			</div>
            			<div id="tupianmingzi">
            				<span style="font-size: 22px;">&nbsp;&nbsp;&nbsp;reputation</span><br />
            				<span style="font-size: 18px;">&nbsp;&nbsp;&nbsp;&nbsp;by&nbsp;&nbsp;<a href="#">楠</a></span>
            			</div>
            		</li>
            		
            	</ul>
            
            
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
	 </div>  
	</div>  	
</div> 
	
	

</body>
	

<script type="text/javascript">
   	$(function(){
   	$("#vistor").hide();
    $("#userxra").show();
   	$(".logo").hover().css("cursor", "pointer");
   	$(".daohang").hover().css("cursor", "pointer"); 
   	$(".xialabioa").hover().css("cursor", "pointer"); 
   	
   	$(".daohang").first().addClass("xcenteroneone");//先设置推荐是点击的	 	
    $(".lefelist").first().addClass("navsearch");//先设置推荐是点击的	
   /**
    * 导航栏的点击事件
    */
   $(".lefelist").click(function(){
   	$(this).addClass('navsearch').siblings().removeClass('navsearch');
   })
   $(".daohang").click(function(){
   	$(this).addClass('xcenteroneone').siblings().removeClass('xcenteroneone');
   }) 
   /**
    * 鼠标滑动弹出下拉列表事件
    */
  $(".caret").mouseover(function(){
    $(this).next("ul").slideDown(500);
  });
  $(".dropdown").mouseleave(function(){
    $(this).children("ul").slideUp(500);
  });
   $("#userleave").click(function(){
   		$("#vistor").show();
        $("#userxra").hide();
   })
   $(".tupianxe").click(function(){
   	alert($(this).text());  	 
   })
   
   
});
/**
 * 播放器点击事件
 */
$(function(){
/**
 * 添加歌曲事件，可以陆续添加
 */
	var song = [
		{
			'cover' : 'bootstrap/musicimage/mainpageimage/封面1.jpg',
			'src' : 'bootstrap/music/王力宏-第一个清晨.mp3',
			'title' : '王力宏-第一个清晨'
		},
		{
			'cover' : 'bootstrap/musicimage/mainpageimage/封面3.jpg',
			'src' : 'bootstrap/music/薛之谦 - 意外.mp3',
			'title' : '薛之谦 - 意外'
		},
		{
			'cover' : 'bootstrap/musicimage/mainpageimage/封面4.jpg',
			'src' : 'bootstrap/music/王力宏-花田错.mp3',
			'title' : '王力宏-花田错'
		},	
		{
			'cover' : 'bootstrap/musicimage/mainpageimage/封面5.jpg',
			'src' : 'bootstrap/music/陶喆 - Angel.mp3',
			'title' : '陶喆 - Angel'
		},	
		{
			'cover' : 'bootstrap/musicimage/mainpageimage/封面6.jpg',
			'src' : 'bootstrap/music/陶喆 - Melody.mp3',
			'title' : '陶喆 - Melody'
		},	
	];

	var audioFn = audioPlay({
		song : song,
		autoPlay : false  //是否立即播放第一首，autoPlay为true且song为空，会alert文本提示并退出
	});

	/* 向歌单中添加新曲目，
	 * 第二个参数true为新增后立即播放该曲目，false则不播放
	 * 意识是，当你在听第一首歌的时候，列表还有很多歌没放，但是当你在浏览的网页的歌曲时候，突然发现有立刻想听的歌曲，然后添加列表中，如果为true，则点击
	 * 下一首时，会立刻播放刚刚添加的这首，如果为false则，默认最后播放
	 * 
	 * */
	audioFn.newSong({
		'cover' : 'bootstrap/musicimage/mainpageimage/封面2.jpg',
		'src' : 'bootstrap/music/王力宏-大城小爱.mp3',
		'title' : '王力宏-大城小爱'
	},false);

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

/**
 * 专辑介绍的文字展开和收起
 */
 function init(){  
      var len =200;      //默认显示字数  
      var ctn = document.getElementById("content");  //获取div对象  
      var content = ctn.innerHTML;                   //获取div里的内容  
      
      //alert(content);  
      var span = document.createElement("span");     //创建<span>元素  
      var a = document.createElement("a");           //创建<a>元素  
      span.innerHTML = content.substring(0,len);     //span里的内容为content的前len个字符  
      a.innerHTML = content.length>len?"....展开":"";  //设置a的显示  
      a.href = "javascript:void(0)";  
      a.onclick = function(){  
          if(a.innerHTML.indexOf("展开")>0){    //如果a中含有"展开"则显示"收起"  
            a.innerHTML = "收起";  
            span.innerHTML = content;  
          }else{  
              a.innerHTML = "...展开";  
              span.innerHTML = content.substring(0,len);  
          }  
      }  
      // 设置div内容为空，span元素 a元素加入到div中  
      ctn.innerHTML = "";  
      ctn.appendChild(span);  
      ctn.appendChild(a);  
        
   }  
</script>     
</html>
