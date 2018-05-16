<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="美味家" />
<meta name="description" content="美味家" />
<title>美味家宅急送外卖网上订餐官网-美味家优惠套餐-外送菜单-送餐网</title>
<!-- 加载CSS -->

<link rel="stylesheet" type="text/css"
	href="css/style.css~1524258922681.css" />
<link rel="stylesheet" type="text/css"
	href="css/jquery-ui.css~1524258922681.css" />
<!-- 加载JS -->
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<!--<script type="text/javascript" src="js/min/vendor/jquery-1.jquery.js2681"></script>-->
<script type="text/javascript"
	src="js/min/vendor/regCustomer/jquery.cookie.js~1524258922681"></script>
<script type="text/javascript"
	src="js/min/vendor/regCustomer/jquery.lazyload.js~1524258922681"></script>
<script type="text/javascript"
	src="js/min/vendor/regCustomer/jquery.ui.yumdialog.js~1524258922681"></script>
<script type="text/javascript"
	src="js/min/yum/regCustomer/property_cn.js~1524258922681"></script>
<script type="text/javascript"
	src="js/min/yum/regcustomer/kfc/common/base.js~1524258922681"></script>
<script type="text/javascript"
	src="js/min/yum/regCustomer/kfc/sdc_kfc.js~1524258922681"></script>
<!-- kfc_ios add js wanglei4 20150528  start-->
<script type="text/javascript"
	src="js/min/yum/regCustomer/pageToUrl.js~1524258922681"></script>
<!--  kfc_ios add js wanglei4 20150528  end -->
<link rel="stylesheet" type="text/css"
	href="css/jquery.autocomplete.css~1524258922681.css" />
<script type="text/javascript"
	src="js/min/yum/regCustomer/kfc/home.js~1524258922681"></script>
<script type="text/javascript"
	src="js/min/yum/regCustomer/kfc/flexibleCombo.js~1524258922681"></script>
<!-- kfc_ios add js wanglei2 20130228  start-->
<script type="text/javascript"
	src="js/min/yum/regCustomer/kfc/common/PageEffect.js~1524258922681"></script>
<!--  kfc_ios add js wanglei2 20130228  end -->
<script type="text/javascript"
	src="js/min/yum/regCustomer/kfc/commoncs.js~1524258922681"
	language="javascript"></script>
<!-- 加载JS -->
<script type="text/javascript"
	src="js/min/yum/regCustomer/kfc/autonavi_config_common.js~1524258922681"></script>
<script type="text/javascript"
	src="js/min/yum/regCustomer/kfc/config.js~1524258922681"></script>
<script type="text/javascript"
	src="js/min/vendor/regCustomer/jquery.autocomplete.js~1524258922681"></script>
<script type="text/javascript"
	src="js/min/vendor/regCustomer/jquery.custom.js~1524258922681"></script>
<script type="text/javascript"
	src="js/min/yum/regCustomer/kfc/address.js~1524258922681"></script>
<script type="text/javascript"
	src="js/min/yum/regCustomer/kfc/cityChoose.js~1524258922681"></script>
<script type="text/javascript"
	src="js/min/yum/regCustomer/kfc/groupProduct.js~1524258922681"></script>
</head>
<body style="_width: 100%; _height: 100%; display: none;">
	<!-- Google Tag Manager -->
	<script>
		(function(w, d, s, l, i) {
			w[l] = w[l] || [];
			w[l].push({
				'gtm.start' : new Date().getTime(),
				event : 'gtm.js'
			});
			var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
					+ l
					: '';
			j.async = true;
			j.src = '//www.googletagmanager.com/gtm.js?id=' + i + dl;
			//f.parentNode.insertBefore(j, f);
		})(window, document, 'script', 'dataLayer', 'GTM-WG4Z75');
	</script>
	<!-- End Google Tag Manager -->
	<form id="mainForm" name="myForm" action="" method="post">
		<div class="con">
			<input type="hidden" id="specialIds" value="" /> <input
				type="hidden" id="beverageClass" value="" />
			<!-- 导航栏 -->
			<div id="top">
				<input type="hidden" id="page_flag" value="home" /> <input
					type="hidden" id="seoPath"
					value="http://www.4008823823.com.cn/kfcios" /> <input
					type="hidden" value="" id="topFlag" name="topFlag" />
				<div class="logo"></div>
				<div class="top_menu">
					<div class="top_menu_1">
						<input type="hidden" id="isLogin" value="true" /> <input
							type="hidden" id="loginFlag" value="true" /> <span
							class="span_1 fl_l" id="logon">欢迎网上订餐！</span>
						<div class="fl_r">
							<span class="span_2 favbtn"> <a href="javascript:;">收藏本订餐网站</a>
							</span>
						</div>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
					<div class="top_menu_2">
						<ul>
							<li><span class="current"> 首页</span></li>
							<li><span><a href="orderLogin.jsp">重新登录</a></span></li>
							<li><span><a href="customerCenter.jsp">个人中心</a></span></li>
							<li class="last_li w5"><a
								href="http://www.4008823823.com.cn/kfcios/jsp/help/help_new.html"
								target="_blank">帮助中心</a></li>
						</ul>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<!-- 内容页面 -->
			<input type="hidden" id="tag" value="index" /> <input type="hidden"
				name="classId" id="classId" value="" /> <input type="hidden"
				name="gotoBeforeLoginClass" id="gotoBeforeLoginClass" value="Y" />
			<input type="hidden" name="addBeforeLoginProduce"
				id="addBeforeLoginProduce" value="Y" />
			<div id="content" class="ersee_product_height_ie6">
				<!-- 左侧菜单栏 -->
				<!-- 左侧菜单栏  wanglei2 add 2013021-->
				<div id="s_lm" class="left_menu s_lm" style="position: absolute;">
					<div class="left_menu_top"></div>
					<div class="left_menu_main">
						<ul id="nav">
							<!-- kfcClassList为空走原有逻辑 -->
							<li id="promotion">
								<h4></h4>
								<ul id="ChMenu" class="IClass">
									<li class="last_li"><a href="javascript:;" pid="91" cs="1"
										menuPath="Afternoon_tea" test="01"> 欢乐送下午茶 </a></li>
								</ul>
							</li>
							<li id="lunch">
								<h6 onclick="DoMenu('ChildMenu3','child3')">
									<span>(10:00-22:00)</span> <a href="javascript:;" id="child3"
										class="plus_btn"></a>
								</h6>
								<ul id="ChildMenu3" class="IClass collapsed" time="9:15-22:44"
									classType="L">
									<li><a href="javascript:;" pid="115" cs="1"
										menuPath="seasonpromotion">当季主打</a></li>
									<li><a href="javascript:;" pid="28" cs="1"
										menuPath="SRDRC_MM">桶</a></li>
									<li><a href="javascript:;" pid="44" cs="1"
										menuPath="MWHB_MM">美味汉堡/卷</a></li>
									<li><a href="javascript:;" pid="116" cs="1"
										menuPath="mealbox">人气明星餐</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<div class="left_menu_btm"></div>
				</div>
				<!--文字链-->
				<!-- 公告 wanglei 20130401-->
				<div id="s_nt" class="notice s_nt"
					style="position: absolute; top: 0; margin: 0 0 0 212px; z-index: 100;">
					<div class="news news_icon">&gt;最新活动：</div>
					<div id="rolling"></div>
				</div>
				<!-- 详细内容部分 -->
				<div id="main" class="e_main">
					<!--  -->
					<div class="home_bg_mid" style="margin: 36px 0 0;">
						<!--菜单 -->

						<div class="prod_show" style="width: 600px">
							<input type="hidden" id="ptpListStr" value="" />
							<ul class="product_ul"></ul>
						</div>

						<!-- banner -->
					</div>
					<p class="clear"></p>
				</div>
				<!-- 右侧模块  modified by Pete-->
				<div id="s_cart" class="right s_rm_cart"
					style="position: absolute; top: 0; float: none; margin: 0 0 0 779px;">
					<div id="shopping_cart">

						<!-- 右侧订单 -->
						<div class="right_order_menu">
							<div class="right_order_top">
								<h2>购物车</h2>
								<span class="shop_cart_num" id="tatalnum">0</span>
							</div>
							<div class=" sub_right_order_main">
								<div class="order_detail">
									<ul id="cart_menus"></ul>
								</div>
								<div class="promotion cart_promotion">
									<h4>享优惠:</h4>
								</div>
								<div class="promotion_box cart_promotion">
									<ul id="cart_promotion_list"></ul>
								</div>
							</div>
							<div class="total">
								<ul>
									<li><span class="Til">小计:</span> <span class="Price">0.0元</span>
									</li>
									<li><span class="Til" style="width: 170px;"> 外送费<font
											id="prodesc" color="red"></font>
									</span> <span class="Price">9.0元</span></li>
									<li id="netUser_price" style="display: none;"></li>
									<li><span class="Til">合计:</span> <span class="Price">9.0元</span>
									</li>
									<li style="height: 22px;"><span class="Til"
										style="color: red; display: none;">本单您共省了：</span> <span
										class="Price" style="color: red; display: none;"> 0.0元
									</span></li>
								</ul>
							</div>
							<p class="al_c">
								<input id="ToCalcu" type="button" class="order_btn_1" />
							</p>
							<script>
								$("#ToCalcu").click(function() {
									location.assign("cart.jsp");
								});
							</script>
							<div class="order_add">
								<p>
									<span class="til">送餐地址：</span> <span class="modify"> </span>
								</p>
								<p>
									上海W1(上海新国际博览中心)(龙阳路2345号上海新国际博览中心F1层)71 <input type="hidden"
										id="cityNameDes" value="上海" /> <input type="hidden"
										id="mainAddressDes"
										value="W1(上海新国际博览中心)(龙阳路2345号上海新国际博览中心F1层)" /> <input
										type="hidden" id="supplementaladdressDes"
										value="W1(上海新国际博览中心)(龙阳路2345号上海新国际博览中心F1层)" /> <input
										type="hidden" id="x" value="121.565124" /> <input
										type="hidden" id="y" value="31.207368" /> <input
										type="hidden" id="addressId"
										value="013f9b8b-97b5-449c-8678-df3b54ead996-a0" />
								</p>
							</div>
							<p style="padding: 6px 10px;">
								<span class="span_3">提醒：根据您最终提交订单时间，送餐时间可能略有调整。</span>
							</p>
						</div>
						<div class=" sub_right_order_btm"></div>
					</div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<!-- 页面脚 -->

	</form>

</body>
</html>
