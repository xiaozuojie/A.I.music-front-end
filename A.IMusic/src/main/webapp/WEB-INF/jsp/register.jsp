<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.css" />
<link href="bootstrap/css/gloab.css" rel="stylesheet">
<link href="bootstrap/css/index.css" rel="stylesheet">
<script src="bootstrap/js/jquery-2.1.0.js" type="text/javascript"
	charset="utf-8"></script>
<link href="bootstrap/css/drag.css" rel="stylesheet" type="text/css" />
<script src="bootstrap/js/drag.js" type="text/javascript"></script>
</head>

<body class="bgf4">
	<div class="login-box f-mt10 f-pb50">
		<div class="main bgf">
			<div class="reg-box-pan display-inline">
				<div class="step">
					<ul>
						<li class="col-xs-4 on"><span class="num"><em
								class="f-r5"></em><i>1</i></span> <span class="line_bg lbg-r"></span>
							<p class="lbg-txt">填写账户信息</p></li>
						<li class="col-xs-4"><span class="num"><em
								class="f-r5"></em><i>2</i></span> <span class="line_bg lbg-l"></span> <span
							class="line_bg lbg-r"></span>
							<p class="lbg-txt">验证账户信息</p></li>
						<li class="col-xs-4"><span class="num"><em
								class="f-r5"></em><i>3</i></span> <span class="line_bg lbg-l"></span>
							<p class="lbg-txt">注册成功</p></li>
					</ul>
				</div>
				<div class="reg-box" id="verifyCheck" style="margin-top: 20px;">
					<div class="part1">
						<div class="item col-xs-12">
							<span class="intelligent-label f-fl"><b class="ftx04">*</b>用户名：</span>
							<div class="f-fl item-ifo">
								<p id="hph" style="display: none;"></p>
								<p id="hno" style="display: none;"></p>
								<input type="text" maxlength="20" class="txt03 f-r3 required"
									tabindex="1"
									data-valid="isNonEmpty||between:3-20||isUname||ismmp"
									data-error="用户名不能为空||用户名长度3-20位||只能输入中文、字母、数字、下划线，且以中文或字母开头||用户名已存在"
									id="adminNo" /> <span class="ie8 icon-close close hide"></span>
								<label class="icon-sucessfill blank hide"></label> <label
									class="focus"><span>3-20位，中文、字母、数字、下划线的组合，以中文或字母开头</span></label>
								<label class="focus valid"></label>
							</div>
						</div>
						<div class="item col-xs-12">
							<span class="intelligent-label f-fl"><b class="ftx04">*</b>手机号：</span>
							<div class="f-fl item-ifo">
								<input type="text" class="txt03 f-r3 required" keycodes="tel"
									tabindex="2" data-valid="isNonEmpty||isPhone||isdsb"
									data-error="手机号码不能为空||手机号码格式不正确||用户已存在" maxlength="11"
									id="phone" /> <span class="ie8 icon-close close hide"></span>
								<label class="icon-sucessfill blank hide"></label> <label
									class="focus">请填写11位有效的手机号码</label> <label class="focus valid"></label>
							</div>
						</div>
						<div class="item col-xs-12">
							<span class="intelligent-label f-fl"><b class="ftx04">*</b>密码：</span>
							<div class="f-fl item-ifo">
								<input type="password" id="password" maxlength="20"
									class="txt03 f-r3 required" tabindex="3"
									style="ime-mode: disabled;" onpaste="return  false"
									autocomplete="off"
									data-valid="isNonEmpty||between:6-20||level:2"
									data-error="密码不能为空||密码长度6-20位||该密码太简单，有被盗风险，建议字母+数字的组合" /> <span
									class="ie8 icon-close close hide" style="right: 55px"></span> <span
									class="showpwd" data-eye="password"></span> <label
									class="icon-sucessfill blank hide"></label> <label
									class="focus">6-20位英文（区分大小写）、数字、字符的组合</label> <label
									class="focus valid"></label> <span class="clearfix"></span> <label
									class="strength"> <span class="f-fl f-size12">安全程度：</span>
									<b><i>弱</i><i>中</i><i>强</i></b>
								</label>
							</div>
						</div>
						<div class="item col-xs-12">
							<span class="intelligent-label f-fl"><b class="ftx04">*</b>确认密码：</span>
							<div class="f-fl item-ifo">
								<input type="password" maxlength="20"
									class="txt03 f-r3 required" tabindex="4"
									style="ime-mode: disabled;" onpaste="return  false"
									autocomplete="off"
									data-valid="isNonEmpty||between:6-16||isRepeat:password"
									data-error="密码不能为空||密码长度6-16位||两次密码输入不一致" id="rePassword" /> <span
									class="ie8 icon-close close hide" style="right: 55px"></span> <span
									class="showpwd" data-eye="rePassword"></span> <label
									class="icon-sucessfill blank hide"></label> <label
									class="focus">请再输入一遍上面的密码</label> <label class="focus valid"></label>
							</div>
						</div>

						<div class="item col-xs-12">
							<span class="intelligent-label f-fl"><b class="ftx04">*</b>验证码：</span>
							<div id="drag" style="margin-left: 100px;"></div>
							<script type="text/javascript">
								$('#drag').drag();
							</script>
						</div>

						<div class="item col-xs-12" style="height: auto">
							<span class="intelligent-label f-fl">&nbsp;</span>
							<p class="f-size14 required" data-valid="isChecked"
								data-error="请先同意条款">
								<input type="checkbox" /> <a href="javascript:showoutc();"
									class="f-ml5">我已阅读并同意条款</a>
							</p>
							<label class="focus valid"></label>
						</div>
						<div class="item col-xs-12">
							<span class="intelligent-label f-fl">&nbsp;</span>
							<div class="f-fl item-ifo">
								<a href="javascript:;" class="btn btn-blue f-r3" id="btn_part1">下一步</a>
							</div>
						</div>
					</div>
					<div class="part2" style="display: none">
						<div class="alert alert-info" style="width: 700px">短信已发送至您手机，请输入短信中的验证码，确保您的手机号真实有效。</div>
						<div class="item col-xs-12 f-mb10" style="height: auto">
							<span class="intelligent-label f-fl">手机号：</span>
							<div class="f-fl item-ifo c-blue">15260916182</div>
						</div>
						<div class="item col-xs-12">
							<span class="intelligent-label f-fl"><b class="ftx04">*</b>验证码：</span>
							<div class="f-fl item-ifo">
								<input type="text" maxlength="6" id="verifyNo"
									class="txt03 f-r3 f-fl required" tabindex="4"
									style="width: 167px" data-valid="isNonEmpty||isInt"
									data-error="验证码不能为空||请输入6位数字验证码" /> <span
									class="btn btn-gray f-r3 f-ml5 f-size13" id="time_box" disabled
									style="width: 97px; display: none;">发送验证码</span> <span
									class="btn btn-gray f-r3 f-ml5 f-size13" id="verifyYz"
									style="width: 97px;">发送验证码</span> <span
									class="ie8 icon-close close hide" style="right: 130px"></span>
								<label class="icon-sucessfill blank hide"></label> <label
									class="focus"><span>请查收手机短信，并填写短信中的验证码（此验证码3分钟内有效）</span></label>
								<label class="focus valid"></label>
							</div>
						</div>
						<div class="item col-xs-12">
							<span class="intelligent-label f-fl">&nbsp;</span>
							<div class="f-fl item-ifo">
								<a href="javascript:;" class="btn btn-blue f-r3" id="btn_part2">注册</a>
							</div>
						</div>
					</div>
					<div class="part3" style="display: none">
						<div class="item col-xs-12">
							<span class="intelligent-label f-fl"><b class="ftx04">*</b>真实姓名：</span>
							<div class="f-fl item-ifo">
								<input type="text" maxlength="10" class="txt03 f-r3 required"
									tabindex="1" data-valid="isNonEmpty||between:2-10||isZh"
									data-error="真实姓名不能为空||真实姓名长度2-10位||只能输入中文" id="adminNo" /> <span
									class="ie8 icon-close close hide"></span> <label
									class="icon-sucessfill blank hide"></label> <label
									class="focus">2-10位，中文真实姓名</label> <label class="focus valid"></label>
							</div>
						</div>
						<div class="item col-xs-12">
							<span class="intelligent-label f-fl"><b class="ftx04">*</b>身份证号：</span>
							<div class="f-fl item-ifo">
								<input type="text" class="txt03 f-r3 required" tabindex="2"
									data-valid="isNonEmpty||isCard"
									data-error="身份证号不能为空||身份证号码格式不正确" maxlength="18" id="phone" />
								<span class="ie8 icon-close close hide"></span> <label
									class="icon-sucessfill blank hide"></label> <label
									class="focus">请填写18位有效的手机号码</label> <label class="focus valid"></label>
							</div>
						</div>
						<div class="item col-xs-12">
							<span class="intelligent-label f-fl">&nbsp;</span>
							<div class="f-fl item-ifo">
								<a href="javascript:;" class="btn btn-blue f-r3" id="btn_part3">下一步</a>
							</div>
						</div>
					</div>
					<div class="part4 text-center" style="display: none">
						<h3>恭喜您，您已注册成功，现在开始您的音乐之旅吧！</h3>
						<p class="c-666 f-mt30 f-mb50">
							页面将在 <strong id="times" class="f-size18">10</strong> 秒钟后，跳转到 <a
								href="list" class="c-blue">A.I.音乐首页</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="m-sPopBg" style="z-index: 998;"></div>
	<div class="m-sPopCon regcon">
		<div class="m-sPopTitle">
			<strong>服务协议条款</strong><b id="sPopClose" class="m-sPopClose"
				onClick="closeClause()">×</b>
		</div>
		<div class="apply_up_content">
			<pre class="f-r0">
		<strong>同意以下服务条款，提交注册信息</strong>
        </pre>
		</div>
		<center>
			<a
				class="btn btn-blue btn-lg f-size12 b-b0 b-l0 b-t0 b-r0 f-pl50 f-pr50 f-r3"
				href="javascript:closeClause();">已阅读并同意此条款</a>
		</center>
	</div>
	<script>
		$(function() {
			//第一页的确定按钮
			$("#btn_part1").click(function() {
				if (!verifyCheck._click())
					return;
				$(".part1").hide();
				$(".part2").show();
				$(".step li").eq(1).addClass("on");
			});
			//第二页的确定按钮
			$("#btn_part2").click(function() {
				if (!verifyCheck._click())
					return;
				$(".part2").hide();
				$(".part3").show();
			});
			//第三页的确定按钮
			$("#btn_part3").click(function() {
				if (!verifyCheck._click())
					return;
				window.location.href = "registerin?una="+$("#adminNo").val()+"&uph="+$("#phone").val()+"&upw="+$("#password").val();
						/* console.log($("#adminNo").val())
						console.log($("#phone").val())
						console.log($("#password").val()) */
				$(".part3").hide();
				$(".part4").show();
				$(".step li").eq(2).addClass("on");
				countdown({
					maxTime : 10,
					ing : function(c) {
						$("#times").text(c);
					},
					after : function() {
						window.location.href = "MusicMan/Mainpage.html";
					}
				});
			});
		});

		function showoutc() {
			$(".m-sPopBg,.m-sPopCon").show();
		}

		function closeClause() {
			$(".m-sPopBg,.m-sPopCon").hide();
		}
	</script>
	<!-- register的js拷贝到这，因为js中不会用ajax -->

	<script type="text/javascript">
			(function($) {
				var h, timerC = 60,
					opt;
				var j = function(a) {
					a = $.extend(require.defaults, a || {});
					opt = a;
					return(new require())._init(a)
				};

				function require(f) {
					var g = {
						phone: /^1(3\d|5[0-35-9]|8[025-9]|47)\d{8}$/,
						company: /^[一-龥a-zA-Z][一-龥a-zA-Z0-9\s-,-.]*$/,
						uname: /^[一-龥a-zA-Z][一-龥a-zA-Z0-9_]*$/,
						zh: /^[一-龥]+$/,
						card: /^((1[1-5])|(2[1-3])|(3[1-7])|(4[1-6])|(5[0-4])|(6[1-5])|71|(8[12])|91)\d{4}(((((19|20)((\d{2}(0[13-9]|1[012])(0[1-9]|[12]\d|30))|(\d{2}(0[13578]|1[02])31)|(\d{2}02(0[1-9]|1\d|2[0-8]))|(([13579][26]|[2468][048]|0[48])0229)))|20000229)\d{3}(\d|X|x))|(((\d{2}(0[13-9]|1[012])(0[1-9]|[12]\d|30))|(\d{2}(0[13578]|1[02])31)|(\d{2}02(0[1-9]|1\d|2[0-8]))|(([13579][26]|[2468][048]|0[48])0229))\d{3}))$/,
						int: /^[0-9]*$/,
						s: ''
					};
					this.rules = {
						isNonEmpty: function(a, b) {
							b = b || " ";
							if(!a.length) return b
						},
						minLength: function(a, b, c) {
							c = c || " ";
							if(a.length < b) return c
						},
						maxLength: function(a, b, c) {
							c = c || " ";
							if(a.length > b) return c
						},
						isRepeat: function(a, b, c) {
							c = c || " ";
							if(a !== $("#" + b).val()) return c
						},
						between: function(a, b, c) {
							c = c || " ";
							var d = parseInt(b.split('-')[0]);
							var e = parseInt(b.split('-')[1]);
							if(a.length < d || a.length > e) return c
						},
						level: function(a, b, c) {
							c = c || " ";
							var r = j.pwdStrong(a);
							if(b > 4) b = 3;
							if(r < b) return c
						},
						isPhone: function(a, b) {
							b = b || " ";
							if(!g.phone.test(a)) return b
						},
						isCompany: function(a, b) {
							b = b || " ";
							if(!g.company.test(a)) return b
						},
						isInt: function(a, b) {
							b = b || " ";
							if(!g.int.test(a)) return b
						},
						isUname: function(a, b) {
							b = b || " ";
							if(!g.uname.test(a)) return b
						},
						isZh: function(a, b) {
							b = b || " ";
							if(!g.zh.test(a)) return b
						},
						isCard: function(a, b) {
							b = b || " ";
							if(!g.card.test(a)) return b
						},
						isChecked: function(c, d, e) {
							d = d || " ";
							var a = $(e).find('input:checked').length,
								b = $(e).find('.on').length;
							if(!a && !b) return d
						},
						isdsb: function(a, b) {
							b = b || " ";
							$.get("LoginRegister", {
								"ph" : $("#phone").val()
							}, function(data) {
								document.getElementById('hph').value = data;
							});
							if(a == $("#hph").val())  return b
						},
						ismmp: function(a, b) {
							b = b || " ";
							$.get("LoginRegisteryh", {
								"na" : $("#adminNo").val()
							}, function(data) {
									document.getElementById('hno').value = data;
							});
							if(a == $("#hno").val())  return b
						}
					}
				};
				require.prototype = {
					_init: function(b) {
						this.config = b;
						this.getInputs = $('#' + b.formId).find('.required:visible');
						var c = false;
						var d = this;
						if(b.code) {
							$("#verifyYz").click(function() {
								$("#time_box").text("60 s后可重发");
								d._sendVerify()
							})
						}
						$('body').on({
							blur: function(a) {
								d.formValidator($(this));
								if(b.phone && $(this).attr("id") === "phone") d._change($(this));
								b.onBlur ? b.onBlur($(this)) : ''
							},
							focus: function(a) {
								b.onFocus ? b.onFocus($(this)) : $(this).parent().find("label.focus").not(".valid").removeClass("hide").siblings(".valid").addClass("hide") && $(this).parent().find(".blank").addClass("hide") && $(this).parent().find(".close").addClass("hide")
							},
							keyup: function(a) {
								if(b.phone && $(this).attr("id") === "phone") d._change($(this))
							},
							change: function(a) {
								b.onChange ? b.onChange($(this)) : ''
							}
						}, "#" + b.formId + " .required:visible");
						$('body').on("click", ".close", function() {
							var p = $(this).parent(),
								input = p.find("input");
							input.val("").focus()
						})
					},
					formValidator: function(a) {
						var b = a.attr('data-valid');
						if(b === undefined) return false;
						var c = b.split('||');
						var d = a.attr('data-error');
						if(d === undefined) d = "";
						var e = d.split("||");
						var f = [];
						for(var i = 0; i < c.length; i++) {
							f.push({
								strategy: c[i],
								errorMsg: e[i]
							})
						};
						return this._add(a, f)
					},
					_add: function(a, b) {
						var d = this;
						for(var i = 0, rule; rule = b[i++];) {
							var e = rule.strategy.split(':');
							var f = rule.errorMsg;
							var g = e.shift();
							e.unshift(a.val());
							e.push(f);
							e.push(a);
							var c = d.rules[g].apply(a, e);
							if(c) {
								opt.resultTips ? opt.resultTips(a, false, c) : j._resultTips(a, false, c);
								return false
							}
						}
						opt.successTip ? (opt.resultTips ? opt.resultTips(a, true) : j._resultTips(a, true)) : j._clearTips(a);
						return true
					},
					_sendVerify: function() {
						var a = this;
						$("#verifyYz").text("发送验证码").hide();
						$("#time_box").text("10 s后可重发").show();
						if(timerC === 0) {
							clearTimeout(h);
							timerC = 60;
							var b = /^1([^01269])\d{9}$/;
							if(!b.test($("#phone").val())) {
								$("#time_box").text("发送验证码")
							} else {
								$("#verifyYz").show();
								$("#time_box").hide()
							}
							return
						}
						$("#time_box").text(timerC + " s后可重发");
						timerC--;
						h = setTimeout(function() {
							a._sendVerify()
						}, 1000)
					},
					_change: function(a) {
						var b = this;
						if(a.val().length != 11) {
							$("#verifyYz").hide();
							$("#time_box").show();
							if(timerC === 60) $("#time_box").text("发送验证码");
							$("#verifyNo").val("");
							this.config.clearTips ? this.config.clearTips($("#verifyNo")) : j._clearTips($("#verifyNo"));
							return
						}
						var c = /^1([^01269])\d{9}$/;
						if(!c.test(a.val())) return false;
						if(timerC === 60) {
							$("#verifyYz").show();
							$("#time_box").hide()
						} else {
							$("#verifyYz").hide();
							$("#time_box").show()
						}
					}
				};
				j._click = function(c) {
					c = c || opt.formId;
					var d = $("#" + c).find('.required:visible'),
						self = this,
						result = true,
						t = new require(),
						r = [];
					$.each(d, function(a, b) {
						result = t.formValidator($(b));
						if(result) r.push(result)
					});
					if(d.length !== r.length) result = false;
					return result
				};
				j._clearTips = function(a) {
					a.parent().find(".blank").addClass("hide");
					a.parent().find(".valid").addClass("hide");
					a.removeClass("v_error")
				};
				j._resultTips = function(a, b, c) {
					a.parent().find("label.focus").not(".valid").addClass("hide").siblings(".focus").removeClass("hide");
					a.parent().find(".close").addClass("hide");
					a.removeClass("v_error");
					c = c || "";
					if(c.length > 21) c = "<span>" + c + "</span>";
					var o = a.parent().find("label.valid");
					if(!b) {
						o.addClass("error");
						a.addClass("v_error");
						if($.trim(a.val()).length > 0) a.parent().find(".close").removeClass("hide")
					} else {
						a.parent().find(".blank").removeClass("hide")
					}
					o.text("").append(c)
				};
				j.textChineseLength = function(a) {
					var b = /[一-龥]|[、-。]|[：-？]|[《-』]|[【-〕]|[–-”]|[！-．]|[〈-〉]|[…]|[￥]/g;
					if(b.test(a)) return a.match(b).length;
					else return 0
				};
				j.pwdStrong = function(a) {
					var b = 0;
					if(a.match(/[a-z]/g)) {
						b++
					}
					if(a.match(/[A-Z]/g)) {
						b++
					}
					if(a.match(/[0-9]/g)) {
						b++
					}
					if(a.match(/(.[^a-z0-9A-Z])/g)) {
						b++
					}
					if(b > 4) {
						b = 4
					}
					if(b === 0) return false;
					return b
				};
				require.defaults = {
					formId: 'verifyCheck',
					onBlur: null,
					onFocus: null,
					onChange: null,
					successTip: true,
					resultTips: null,
					clearTips: null,
					code: true,
					phone: false
				};
				window.verifyCheck = $.verifyCheck = j
			})(jQuery);
			(function($) {
				var f;
				var g = function() {
					return(new require())._init()
				};

				function require(a) {};
				require.prototype = {
					_init: function() {
						var b = this;
						$('body').on({
							click: function(a) {
								b._click($(this))
							}
						}, ".showpwd:visible")
					},
					_click: function(a) {
						var c = a.attr('data-eye');
						if(c === undefined) return false;
						var d = $("#" + c),
							cls = !d.attr("class") ? "" : d.attr("class"),
							value = !d.val() ? "" : d.val(),
							type = d.attr("type") === "password" ? "text" : "password",
							b = d.parent().find("b.placeTextB"),
							isB = b.length === 0 ? false : true;
						var s = d.attr("name") ? " name='" + d.attr("name") + "'" : "";
						s += d.attr("data-valid") ? " data-valid='" + d.attr("data-valid") + "'" : "";
						s += d.attr("data-error") ? " data-error='" + d.attr("data-error") + "'" : "";
						s += d.attr("placeholder") ? " placeholder='" + d.attr("placeholder") + "'" : "";
						var e = '<input readonly type="' + type + '" class="' + cls + '" value="' + value + '" id="' + c + '"' + s + ' />';
						if(type === "text") {
							if(isB) b.hide();
							d.parent().find(".icon-close.close").addClass("hide");
							d.removeAttr("id").hide();
							d.after(e);
							a.addClass("hidepwd")
						} else {
							d.prev("input").attr("id", c).val(value).show();
							if(isB && $.trim(value) === "") {
								d.prev("input").hide();
								b.show()
							}
							d.remove();
							a.removeClass("hidepwd")
						};
						$('body').on("click", "#" + c, function() {
							$(this).parent().find(".hidepwd").click();
							if(isB && $.trim($(this).val()) === "") {
								d.show();
								b.hide()
							}
							d.focus()
						})
					}
				};
				require.defaults = {};
				window.togglePwd = $.togglePwd = g
			})(jQuery);
			(function($) {
				var b, timerC, opt;
				var d = function(a) {
					a = $.extend(require.defaults, a || {});
					opt = a;
					d._clear();
					return(new require())._init()
				};

				function require(a) {};
				require.prototype = {
					_init: function() {
						timerC = opt.maxTime;
						this._sendVerify()
					},
					_sendVerify: function() {
						var a = this;
						if(timerC === 0) {
							d._clear();
							opt.after();
							timerC = opt.maxTime;
							return
						}
						timerC--;
						opt.ing(timerC);
						b = setTimeout(function() {
							a._sendVerify()
						}, 1000)
					}
				};
				d._clear = function() {
					clearTimeout(b)
				};
				require.defaults = {
					maxTime: 60,
					minTime: 0,
					ing: function(c) {},
					after: function() {}
				};
				window.countdown = $.countdown = d
			})(jQuery);
			$(function() {
				togglePwd();
				verifyCheck();
				$('body').on("keyup", "#password", function() {
					var t = $(this).val(),
						o = $(this).parent().find(".strength");
					if(t.length >= 6) {
						o.show();
						var l = verifyCheck.pwdStrong(t);
						o.find("b i").removeClass("on");
						for(var i = 0; i < l; i++) {
							o.find("b i").eq(i).addClass("on")
						}
					} else {
						o.hide()
					}
				})
			});
		</script>
</body>
</html>