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
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/mainpage.css" />
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/lunbocss.css" />
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/audio.css" />
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/PersonSet.css" />
		<title></title>

	</head>
	<!--地址级联-->
	<script type="text/javascript">
		function initcity(city) {
			switch(document.creator["province"].value) {
				case "安徽":
					var cityOptions = new Array("请选择地区", "", "合肥", "合肥", "安庆", "安庆", "蚌埠", "蚌埠", "亳州", "亳州", "巢湖", "巢湖", "滁州", "滁州", "阜阳", "阜阳", "贵池", "贵池", "淮北", "淮北", "淮化", "淮化", "淮南", "淮南", "黄山", "黄山", "九华山", "九华山", "六安", "六安", "马鞍山", "马鞍山", "宿州", "宿州", "铜陵", "铜陵", "屯溪", "屯溪", "芜湖", "芜湖", "宣城", "宣城");
					break;
				case "北京":
					var cityOptions = new Array("请选择地区", "", "东城", "东城", "西城", "西城", "崇文", "崇文", "宣武", "宣武", "朝阳", "朝阳", "丰台", "丰台", "石景山", "石景山", "海淀", "海淀", "门头沟", "门头沟", "房山", "房山", "通州", "通州", "顺义", "顺义", "昌平", "昌平", "大兴", "大兴", "平谷", "平谷", "怀柔", "怀柔", "密云", "密云", "延庆", "延庆");
					break;
				case "重庆":
					var cityOptions = new Array("请选择地区", "", "万州", "万州", "涪陵", "涪陵", "渝中", "渝中", "大渡口", "大渡口", "江北", "江北", "沙坪坝", "沙坪坝", "九龙坡", "九龙坡", "南岸", "南岸", "北碚", "北碚", "万盛", "万盛", "双挢", "双挢", "渝北", "渝北", "巴南", "巴南", "黔江", "黔江", "长寿", "长寿", "綦江", "綦江", "潼南", "潼南", "铜梁", "铜梁", "大足", "大足", "荣昌", "荣昌", "壁山", "壁山", "梁平", "梁平", "城口", "城口", "丰都", "丰都", "垫江", "垫江", "武隆", "武隆", "忠县", "忠县", "开县", "开县", "云阳", "云阳", "奉节", "奉节", "巫山", "巫山", "巫溪", "巫溪", "石柱", "石柱", "秀山", "秀山", "酉阳", "酉阳", "彭水", "彭水", "江津", "江津", "合川", "合川", "永川", "永川", "南川", "南川");
					break;
				case "福建":
					var cityOptions = new Array("请选择地区", "", "福州", "福州", "福安", "福安", "龙岩", "龙岩", "南平", "南平", "宁德", "宁德", "莆田", "莆田", "泉州", "泉州", "三明", "三明", "邵武", "邵武", "石狮", "石狮", "永安", "永安", "武夷山", "武夷山", "厦门", "厦门", "漳州", "漳州");
					break;
				case "甘肃":
					var cityOptions = new Array("请选择地区", "", "兰州", "兰州", "白银", "白银", "定西", "定西", "敦煌", "敦煌", "甘南", "甘南", "金昌", "金昌", "酒泉", "酒泉", "临夏", "临夏", "平凉", "平凉", "天水", "天水", "武都", "武都", "武威", "武威", "西峰", "西峰", "张掖", "张掖");
					break;
				case "广东":
					var cityOptions = new Array("请选择地区", "", "广州", "广州", "潮阳", "潮阳", "潮州", "潮州", "澄海", "澄海", "东莞", "东莞", "佛山", "佛山", "河源", "河源", "惠州", "惠州", "江门", "江门", "揭阳", "揭阳", "开平", "开平", "茂名", "茂名", "梅州", "梅州", "清远", "清远", "汕头", "汕头", "汕尾", "汕尾", "韶关", "韶关", "深圳", "深圳", "顺德", "顺德", "阳江", "阳江", "英德", "英德", "云浮", "云浮", "增城", "增城", "湛江", "湛江", "肇庆", "肇庆", "中山", "中山", "珠海", "珠海");
					break;
				case "广西":
					var cityOptions = new Array("请选择地区", "", "南宁", "南宁", "百色", "百色", "北海", "北海", "桂林", "桂林", "防城港", "防城港", "河池", "河池", "贺州", "贺州", "柳州", "柳州", "钦州", "钦州", "梧州", "梧州", "玉林", "玉林");
					break;
				case "贵州":
					var cityOptions = new Array("请选择地区", "", "贵阳", "贵阳", "安顺", "安顺", "毕节", "毕节", "都匀", "都匀", "凯里", "凯里", "六盘水", "六盘水", "铜仁", "铜仁", "兴义", "兴义", "玉屏", "玉屏", "遵义", "遵义");
					break;
				case "海南":
					var cityOptions = new Array("请选择地区", "", "海口", "海口", "儋县", "儋县", "陵水", "陵水", "琼海", "琼海", "三亚", "三亚", "通什", "通什", "万宁", "万宁");
					break;
				case "河北":
					var cityOptions = new Array("请选择地区", "", "石家庄", "石家庄", "保定", "保定", "北戴河", "北戴河", "沧州", "沧州", "承德", "承德", "丰润", "丰润", "邯郸", "邯郸", "衡水", "衡水", "廊坊", "廊坊", "南戴河", "南戴河", "秦皇岛", "秦皇岛", "唐山", "唐山", "新城", "新城", "邢台", "邢台", "张家口", "张家口");
					break;
				case "黑龙江":
					var cityOptions = new Array("请选择地区", "", "哈尔滨", "哈尔滨", "北安", "北安", "大庆", "大庆", "大兴安岭", "大兴安岭", "鹤岗", "鹤岗", "黑河", "黑河", "佳木斯", "佳木斯", "鸡西", "鸡西", "牡丹江", "牡丹江", "齐齐哈尔", "齐齐哈尔", "七台河", "七台河", "双鸭山", "双鸭山", "绥化", "绥化", "伊春", "伊春");
					break;
				case "河南":
					var cityOptions = new Array("请选择地区", "", "郑州", "郑州", "安阳", "安阳", "鹤壁", "鹤壁", "潢川", "潢川", "焦作", "焦作", "济源", "济源", "开封", "开封", "漯河", "漯河", "洛阳", "洛阳", "南阳", "南阳", "平顶山", "平顶山", "濮阳", "濮阳", "三门峡", "三门峡", "商丘", "商丘", "新乡", "新乡", "信阳", "信阳", "许昌", "许昌", "周口", "周口", "驻马店", "驻马店");
					break;
				case "香港":
					var cityOptions = new Array("请选择地区", "", "香港", "香港", "九龙", "九龙", "新界", "新界");
					break;
				case "湖北":
					var cityOptions = new Array("请选择地区", "", "武汉", "武汉", "恩施", "恩施", "鄂州", "鄂州", "黄冈", "黄冈", "黄石", "黄石", "荆门", "荆门", "荆州", "荆州", "潜江", "潜江", "十堰", "十堰", "随州", "随州", "武穴", "武穴", "仙桃", "仙桃", "咸宁", "咸宁", "襄阳", "襄阳", "襄樊", "襄樊", "孝感", "孝感", "宜昌", "宜昌");
					break;
				case "湖南":
					var cityOptions = new Array("请选择地区", "", "长沙", "长沙", "常德", "常德", "郴州", "郴州", "衡阳", "衡阳", "怀化", "怀化", "吉首", "吉首", "娄底", "娄底", "邵阳", "邵阳", "湘潭", "湘潭", "益阳", "益阳", "岳阳", "岳阳", "永州", "永州", "张家界", "张家界", "株洲", "株洲");
					break;
				case "江苏":
					var cityOptions = new Array("请选择地区", "", "南京", "南京", "常熟", "常熟", "常州", "常州", "海门", "海门", "淮安", "淮安", "江都", "江都", "江阴", "江阴", "昆山", "昆山", "连云港", "连云港", "南通", "南通", "启东", "启东", "沭阳", "沭阳", "宿迁", "宿迁", "苏州", "苏州", "太仓", "太仓", "泰州", "泰州", "同里", "同里", "无锡", "无锡", "徐州", "徐州", "盐城", "盐城", "扬州", "扬州", "宜兴", "宜兴", "仪征", "仪征", "张家港", "张家港", "镇江", "镇江", "周庄", "周庄");
					break;
				case "江西":
					var cityOptions = new Array("请选择地区", "", "南昌", "南昌", "抚州", "抚州", "赣州", "赣州", "吉安", "吉安", "景德镇", "景德镇", "井冈山", "井冈山", "九江", "九江", "庐山", "庐山", "萍乡", "萍乡", "上饶", "上饶", "新余", "新余", "宜春", "宜春", "鹰潭", "鹰潭");
					break;
				case "吉林":
					var cityOptions = new Array("请选择地区", "", "长春", "长春", "白城", "白城", "白山", "白山", "珲春", "珲春", "辽源", "辽源", "梅河", "梅河", "吉林", "吉林", "四平", "四平", "松原", "松原", "通化", "通化", "延吉", "延吉");
					break;
				case "辽宁":
					var cityOptions = new Array("请选择地区", "", "沈阳", "沈阳", "鞍山", "鞍山", "本溪", "本溪", "朝阳", "朝阳", "大连", "大连", "丹东", "丹东", "抚顺", "抚顺", "阜新", "阜新", "葫芦岛", "葫芦岛", "锦州", "锦州", "辽阳", "辽阳", "盘锦", "盘锦", "铁岭", "铁岭", "营口", "营口");
					break;
				case "澳门":
					var cityOptions = new Array("请选择地区", "", "澳门", "澳门");
					break;
				case "内蒙古":
					var cityOptions = new Array("请选择地区", "", "呼和浩特", "呼和浩特", "阿拉善盟", "阿拉善盟", "包头", "包头", "赤峰", "赤峰", "东胜", "东胜", "海拉尔", "海拉尔", "集宁", "集宁", "临河", "临河", "通辽", "通辽", "乌海", "乌海", "乌兰浩特", "乌兰浩特", "锡林浩特", "锡林浩特");
					break;
				case "宁夏":
					var cityOptions = new Array("请选择地区", "", "银川", "银川", "固源", "固源", "石嘴山", "石嘴山", "吴忠", "吴忠");
					break;
				case "青海":
					var cityOptions = new Array("请选择地区", "", "西宁", "西宁", "德令哈", "德令哈", "格尔木", "格尔木", "共和", "共和", "海东", "海东", "海晏", "海晏", "玛沁", "玛沁", "同仁", "同仁", "玉树", "玉树");
					break;
				case "山东":
					var cityOptions = new Array("请选择地区", "", "济南", "济南", "滨州", "滨州", "兖州", "兖州", "德州", "德州", "东营", "东营", "菏泽", "菏泽", "济宁", "济宁", "莱芜", "莱芜", "聊城", "聊城", "临沂", "临沂", "蓬莱", "蓬莱", "青岛", "青岛", "曲阜", "曲阜", "日照", "日照", "泰安", "泰安", "潍坊", "潍坊", "威海", "威海", "烟台", "烟台", "枣庄", "枣庄", "淄博", "淄博");
					break;
				case "上海":
					var cityOptions = new Array("请选择地区", "", "崇明", "崇明", "黄浦", "黄浦", "卢湾", "卢湾", "徐汇", "徐汇", "长宁", "长宁", "静安", "静安", "普陀", "普陀", "闸北", "闸北", "虹口", "虹口", "杨浦", "杨浦", "闵行", "闵行", "宝山", "宝山", "嘉定", "嘉定", "浦东", "浦东", "金山", "金山", "松江", "松江", "青浦", "青浦", "南汇", "南汇", "奉贤", "奉贤");
					break;
				case "山西":
					var cityOptions = new Array("请选择地区", "", "太原", "太原", "长治", "长治", "大同", "大同", "候马", "候马", "晋城", "晋城", "离石", "离石", "临汾", "临汾", "宁武", "宁武", "朔州", "朔州", "忻州", "忻州", "阳泉", "阳泉", "榆次", "榆次", "运城", "运城");
					break;
				case "陕西":
					var cityOptions = new Array("请选择地区", "", "西安", "西安", "安康", "安康", "宝鸡", "宝鸡", "汉中", "汉中", "渭南", "渭南", "商州", "商州", "绥德", "绥德", "铜川", "铜川", "咸阳", "咸阳", "延安", "延安", "榆林", "榆林");
					break;
				case "四川":
					var cityOptions = new Array("请选择地区", "", "成都", "成都", "巴中", "巴中", "达川", "达川", "德阳", "德阳", "都江堰", "都江堰", "峨眉山", "峨眉山", "涪陵", "涪陵", "广安", "广安", "广元", "广元", "九寨沟", "九寨沟", "康定", "康定", "乐山", "乐山", "泸州", "泸州", "马尔康", "马尔康", "绵阳", "绵阳", "眉山", "眉山", "南充", "南充", "内江", "内江", "攀枝花", "攀枝花", "遂宁", "遂宁", "汶川", "汶川", "西昌", "西昌", "雅安", "雅安", "宜宾", "宜宾", "自贡", "自贡", "资阳", "资阳");
					break;
				case "台湾":
					var cityOptions = new Array("请选择地区", "", "台北", "台北", "基隆", "基隆", "台南", "台南", "台中", "台中", "高雄", "高雄", "屏东", "屏东", "南投", "南投", "云林", "云林", "新竹", "新竹", "彰化", "彰化", "苗栗", "苗栗", "嘉义", "嘉义", "花莲", "花莲", "桃园", "桃园", "宜兰", "宜兰", "台东", "台东", "金门", "金门", "马祖", "马祖", "澎湖", "澎湖");
					break;
				case "天津":
					var cityOptions = new Array("请选择地区", "", "天津", "天津", "和平", "和平", "东丽", "东丽", "河东", "河东", "西青", "西青", "河西", "河西", "津南", "津南", "南开", "南开", "北辰", "北辰", "河北", "河北", "武清", "武清", "红挢", "红挢", "塘沽", "塘沽", "汉沽", "汉沽", "大港", "大港", "宁河", "宁河", "静海", "静海", "宝坻", "宝坻", "蓟县", "蓟县");
					break;
				case "新疆":
					var cityOptions = new Array("请选择地区", "", "乌鲁木齐", "乌鲁木齐", "阿克苏", "阿克苏", "阿勒泰", "阿勒泰", "阿图什", "阿图什", "博乐", "博乐", "昌吉", "昌吉", "东山", "东山", "哈密", "哈密", "和田", "和田", "喀什", "喀什", "克拉玛依", "克拉玛依", "库车", "库车", "库尔勒", "库尔勒", "奎屯", "奎屯", "石河子", "石河子", "塔城", "塔城", "吐鲁番", "吐鲁番", "伊宁", "伊宁");
					break;
				case "西藏":
					var cityOptions = new Array("请选择地区", "", "拉萨", "拉萨", "阿里", "阿里", "昌都", "昌都", "林芝", "林芝", "那曲", "那曲", "日喀则", "日喀则", "山南", "山南");
					break;
				case "云南":
					var cityOptions = new Array("请选择地区", "", "昆明", "昆明", "大理", "大理", "保山", "保山", "楚雄", "楚雄", "大理", "大理", "东川", "东川", "个旧", "个旧", "景洪", "景洪", "开远", "开远", "临沧", "临沧", "丽江", "丽江", "六库", "六库", "潞西", "潞西", "曲靖", "曲靖", "思茅", "思茅", "文山", "文山", "西双版纳", "西双版纳", "玉溪", "玉溪", "中甸", "中甸", "昭通", "昭通");
					break;
				case "浙江":
					var cityOptions = new Array("请选择地区", "", "杭州", "杭州", "安吉", "安吉", "慈溪", "慈溪", "定海", "定海", "奉化", "奉化", "海盐", "海盐", "黄岩", "黄岩", "湖州", "湖州", "嘉兴", "嘉兴", "金华", "金华", "临安", "临安", "临海", "临海", "丽水", "丽水", "宁波", "宁波", "瓯海", "瓯海", "平湖", "平湖", "千岛湖", "千岛湖", "衢州", "衢州", "江山", "江山", "瑞安", "瑞安", "绍兴", "绍兴", "嵊州", "嵊州", "台州", "台州", "温岭", "温岭", "温州", "温州", "余姚", "余姚", "舟山", "舟山");
					break;
				case "海外":
					var cityOptions = new Array("请选择地区", "", "欧洲", "欧洲", "北美", "北美", "南美", "南美", "亚洲", "亚洲", "非洲", "非洲", "大洋洲", "大洋洲");
					break;
				default:
					var cityOptions = new Array("请选择地区", "");
					break;
			}
			document.creator["city"].options.length = 0;
			for(var i = 0; i < cityOptions.length / 2; i++) {
				document.creator["city"].options[i] = new Option(cityOptions[i * 2], cityOptions[i * 2 + 1]);
				if(document.creator["city"].options[i].value == city) {
					document.creator["city"].selectedIndex = i;
				}
			}
		}

		function reatprovince(province) {
			var provinces = new Array("北京", "上海", "重庆", "安徽", "福建", "甘肃", "广东", "广西", "贵州", "海南", "河北", "黑龙江", "河南", "香港", "湖北", "湖南", "江苏", "江西", "吉林", "辽宁", "澳门", "内蒙古", "宁夏", "青海", "山东", "山西", "陕西", "四川", "台湾", "天津", "新疆", "西藏", "云南", "浙江", "海外");
			document.creator["province"].options[0] = new Option("请选择省份", "");
			for(var i = 0; i < provinces.length; i++) {
				document.creator["province"].options[i + 1] = new Option(provinces[i], provinces[i]);
				if(document.creator["province"].options[i + 1].value == province) {
					document.creator["province"].selectedIndex = i + 1;
				}
			}
		}
	</script>
	<!--地址级联结束-->

	<body style="background-color: rgba(0, 0, 0, 0.05);">
		<!--头部logo以及导航栏开始-->
		
			<!--
	作者：offline
	时间：2017-11-11
	描述：下方内容开始
-->
			<div class="container">
				<div class="row clearfix">
					<div class="col-md-10 column">
						<div class="content">

							<div class="container">
								<div class="row clearfix">
									<div class="col-md-12 column" id="setstart" style="border: 1px solid red; width: 83%; height: 800px;">
										<div class="row clearfix" id="setbody">
											<div id="sethead">
												<h3>个人设置</h3>
											</div>
											<div id="setdaohang">
												<ul class="nav nav-tabs" style="margin-left:5% ;">
													<li class="">
														<a id="perset" href="javascript:void(0);" target="iframe">基本设置</a>
													</li>
													<li>
														<a id="uppwd" href="javascript:void(0);" target="iframe">修改密码</a>
													</li>
												</ul>
											</div>
											<div id="jibensz" style="display: block;">
												<div id="jibenszbody" style="display: flex;">
													<div id="xinxi">
														<div class="form-group">
															<div class="xinxi">
																<label class="zifu">昵称：</label>
																<input type="text" class="form-control" id="nickname" maxlength="30" style="width: 280px;">
															</div>
															<div class="xinxi">
																<label class="zifu">介绍：</label>
																<div>
																	<textarea id="signature" class="form-control" style="width: 280px; height: 120px;"></textarea>
																</div>
															</div>
															<div class="xinxi">
																<label>性别：</label>
																<div>
																	<label class="check"><input name="gender" type="radio" class="u-rdi" checked="true" value="1"> 男</label>
																	<label class="check"><input name="gender" type="radio" class="u-rdi" value="2"> 女</label>
																	<label class="check"><input name="gender" type="radio" class="u-rdi" value="0"> 保密</label>
																</div>
															</div>
															<div class="xinxi">
																<div class="demo">
																	<p>
																		<label>生日：</label>
																		<select class="birth" id="select_year" name="year"></select>年
																		<select id="select_month" name="month"></select>月
																		<select id="select_day" name="day"></select>日
																	</p>
																</div>
															</div>
															<div class="xinxi">
																<label>地区：</label>
																<form name=creator>
																	<select onchange="initcity();" name="province">
																		<SCRIPT>
																		reatprovince();
																		</SCRIPT>
																	</select>
																	<select name="city">
																		<option value="">选择城市</option>
																	</select>
																</form>
															</div>
															<div class="xinxi">
																<a class="btn btn-default" href="#">保 存</a>
															</div>
														</div>
													</div>
													<div id="touxinag">
														<div class="avatar f-pr">
															<img src="bootstrap/musicimage/mymusic/头像01.jpg" id="avatar">
															<span class="btm"></span><br />
															<a href="javascript:;" class="upload" id="upload">更换头像</a>
														</div>
													</div>
												</div>
											</div>
											<div id="xiugaimm" style="display: none;">
												<div id="zhanghaoxx">
													<div class="form-group">
														<form>
															<div class="zhxx">
																<label class="zifu">原密码：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
																<input type="text" class="form-control " id="nickname" maxlength="30" style="width: 280px;">
															</div>
															<div class="zhxx">
																<label class="zifu">新密码：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
																<input type="password" class="form-control " id="nickname" maxlength="30" style="width: 280px;">
															</div>
															<div class="zhxx">
																<label class="zifu">确认新密码：</label>
																<input type="password" class="form-control " id="nickname" maxlength="30" style="width: 280px;">
															</div>
															<div class="zhxx">
																<input type="submit" class="btn btn-default" id="" value="确认修改" />
															</div>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

	</body>
	<!--生日级联-->
	<script language="javascript">
		(function($) {
			$.extend({
				ms_DatePicker: function(options) {
					var defaults = {
						YearSelector: "#sel_year",
						MonthSelector: "#sel_month",
						DaySelector: "#sel_day",
						FirstText: "--",
						FirstValue: 0
					};
					var opts = $.extend({}, defaults, options);
					var $YearSelector = $(opts.YearSelector);
					var $MonthSelector = $(opts.MonthSelector);
					var $DaySelector = $(opts.DaySelector);
					var FirstText = opts.FirstText;
					var FirstValue = opts.FirstValue;

					// 初始化  
					var str = "<option value=\"" + FirstValue + "\">" + FirstText + "</option>";
					$YearSelector.html(str);
					$MonthSelector.html(str);
					$DaySelector.html(str);

					// 年份列表  
					var yearNow = new Date().getFullYear();
					var yearSel = $YearSelector.attr("rel");
					for(var i = yearNow; i >= 1900; i--) {
						var sed = yearSel == i ? "selected" : "";
						var yearStr = "<option value=\"" + i + "\" " + sed + ">" + i + "</option>";
						$YearSelector.append(yearStr);
					}

					// 月份列表  
					var monthSel = $MonthSelector.attr("rel");
					for(var i = 1; i <= 12; i++) {
						var sed = monthSel == i ? "selected" : "";
						var monthStr = "<option value=\"" + i + "\" " + sed + ">" + i + "</option>";
						$MonthSelector.append(monthStr);
					}

					// 日列表(仅当选择了年月)  
					function BuildDay() {
						if($YearSelector.val() == 0 || $MonthSelector.val() == 0) {
							// 未选择年份或者月份  
							$DaySelector.html(str);
						} else {
							$DaySelector.html(str);
							var year = parseInt($YearSelector.val());
							var month = parseInt($MonthSelector.val());
							var dayCount = 0;
							switch(month) {
								case 1:
								case 3:
								case 5:
								case 7:
								case 8:
								case 10:
								case 12:
									dayCount = 31;
									break;
								case 4:
								case 6:
								case 9:
								case 11:
									dayCount = 30;
									break;
								case 2:
									dayCount = 28;
									if((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0)) {
										dayCount = 29;
									}
									break;
								default:
									break;
							}

							var daySel = $DaySelector.attr("rel");
							for(var i = 1; i <= dayCount; i++) {
								var sed = daySel == i ? "selected" : "";
								var dayStr = "<option value=\"" + i + "\" " + sed + ">" + i + "</option>";
								$DaySelector.append(dayStr);
							}
						}
					}
		
					
					$MonthSelector.change(function() {
						BuildDay();
					});
					$YearSelector.change(function() {
						BuildDay();
					});
					if($DaySelector.attr("rel") != "") {
						BuildDay();
					}
				} // End ms_DatePicker  
			});
		})(jQuery);
	</script>
	<script language="javascript">
		$(function() {
			$.ms_DatePicker({
				YearSelector: "#select_year",
				MonthSelector: "#select_month",
				DaySelector: "#select_day"
			});
			$.ms_DatePicker({
				YearSelector: "#select_year2",
				MonthSelector: "#select_month2",
				DaySelector: "#select_day2"
			});
		});
	</script>
	<!--生日级联结束-->
	<script type="text/javascript">
		$(function() {
			$(document).on("click", "#perset", function() {
				document.getElementById("jibensz").style.display = 'block';
				document.getElementById("xiugaimm").style.display = 'none';
			});
			$(document).on("click", "#uppwd", function() {
				document.getElementById("jibensz").style.display = 'none';
				document.getElementById("xiugaimm").style.display = 'block';
			});
		})
	</script>

	<!--<script type="text/javascript">
		$(function() {
			$("#setstart").append("<div class='row clearfix' id='setbody'>" +
				"<div id='sethead'>" +
				"<h3>个人设置</h3>" +
				"</div>" +
				"<div id='setdaohang'>" +
				"<ul class='nav nav-tabs' style='margin-left:5% ;'>" +
				"<li class=''>" +
				"<a id='perset' href='javascript:void(0);' target='iframe'>基本设置</a>" +
				"</li>" +
				"<li>" +
				"<a id='uppwd' href='javascript:void(0);' target='iframe'>修改密码</a>" +
				"</li>" +
				"</ul>" +
				"</div>" +
				"<div id='jibensz' style='display: block;'>" +
				"<div id='jibenszbody' style='display: flex;'>" +
				"<div id='xinxi'>" +
				"<div class='form-group'>" +
				"<div class='xinxi'>" +
				"<label class='zifu'>昵称：</label>" +
				"<input type='text' class='form-control' id='nickname' maxlength='30' style='width: 280px;'>" +
				"</div>" +
				"<div class='xinxi'>" +
				"<label class='zifu'>介绍：</label>" +
				"<div>" +
				"<textarea id='signature' class='form-control' style='width: 280px; height: 120px;'></textarea>" +
				"</div>" +
				"</div>" +
				"<div class='xinxi'>" +
				"<label>性别：</label>" +
				"<div>" +
				"<label class='check'><input name='gender' type='radio' class='u-rdi' checked='true' value='1'> 男</label>" +
				"<label class='check'><input name='gender' type='radio' class='u-rdi' value='2'> 女</label>" +
				"<label class='check'><input name='gender' type='radio' class='u-rdi' value='0'> 保密</label>" +
				"</div>" +
				"</div>" +
				"<div class='xinxi'>" +
				"<div class='demo'>" +
				"<p>" +
				"<label>生日：</label>" +
				"<select class='birth' id='select_year' name='year'></select>年" +
				"<select id='select_month' name='month'></select>月" +
				"<select id='select_day' name='day'></select>日" +
				"</p>" +
				"</div>" +
				"</div>" +
				"<div class='xinxi'>" +
				"<label>地区：</label>" +
				"<form name=creator>" +
				"<select onchange='initcity();' name='province'>" +
				"<SCRIPT>" +
				"reatprovince();" +
				"</" + "SCRIPT>" +
				"</select>" +
				"<select name='city'>" +
				"<option value=''>选择城市</option>" +
				"</select>" +
				"</form>" +
				"</div>" +
				"<div class='xinxi'>" +
				"<a class='btn btn-default' href='#'>保 存</a>" +
				"</div>" +
				"</div>" +
				"</div>" +
				"<div id='touxinag'>" +
				"<div class='avatar f-pr'>" +
				"<img src='http://p1.music.126.net/2YOV5Ajc4y5zP8yJrAXerw==/109951163064026391.jpg?param=140y140' id='avatar'>" +
				"<span class='btm'></span><br />" +
				"<a href='javascript:;' class='upload' id='upload'>更换头像</a>" +
				"</div>" +
				"</div>" +
				"</div>" +
				"</div>" +
				"<div id='xiugaimm' style='display: none;'>" +
				"<div id='zhanghaoxx'>" +
				"<div class='form-group'>" +
				"<form>" +
				"<div class='zhxx'>" +
				"<label class='zifu'>原密码：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>" +
				"<input type='text' class='form-control ' id='nickname' maxlength='30' style='width: 280px;'>" +
				"</div>" +
				"<div class='zhxx'>" +
				"<label class='zifu'>新密码：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>" +
				"<input type='password' class='form-control ' id='nickname' maxlength='30' style='width: 280px;'>" +
				"</div>" +
				"<div class='zhxx'>" +
				"<label class='zifu'>确认新密码：</label>" +
				"<input type='password' class='form-control ' id='nickname' maxlength='30' style='width: 280px;'>" +
				"</div>" +
				"<div class='zhxx'>" +
				"<input type='submit' class='btn btn-default' id='' value='确认修改' />" +
				"</div>" +
				"</form>" +
				"</div>" +
				"</div>" +
				"</div>" +
				"</div>");
		})
	</script>-->

</html>