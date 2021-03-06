<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="美味家">
    <meta name="description" content="美味家在线订餐">
    <title>美味家网上订餐官网</title>

    <!-- 加载CSS -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">

    <!-- 加载JS -->
    <script type="text/javascript" src="js/quote/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="asset/js/customerConfirm.js"></script>
    <script type="text/javascript" src="asset/js/common.js"></script>
</head>
<body>

<div class="con">
    <!-- 标题 -->
    <div id="top">
        <div class="top_menu">
            <div class="top_menu_1">
                <input type="hidden" id="isLogin" value="false">
                <span class="span_1 fl_l" id="logout" style=""> 欢迎网上订餐!</span>
                <div class="fl_r">
				<span class="span_2 favbtn">
					<a href="javascript:;">收藏本订餐网站</a>
				</span>
                </div>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
            <div class="top_menu_2">
                <ul>
                    <li class="w1">
                        <span>
					        <a href="index.jsp">首页</a>
						</span>
                    </li>
                    <li class="w2">
                        <span>开始订餐</span>
                    </li>
                    <li class="w3">
                        <span>个人中心</span>
                    </li>
                    <li class="w4">
                        <span>
					        <a href="#">评论专区</a>
						</span>
                    </li>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
    </div>

    <!-- 内容 -->
    <div id="content">
        <div class="login_content">
            <div class="">
                <form id="mainForm" action="">

                    <div class="address_manage">

                        <!-- 用户欢迎栏 -->
                        <p class="title_span">欢迎您，请填送餐地址:</p>

                        <!-- 用户信息栏 -->
                        <div class=" info_table">

                            <%-- 添加送餐地址 --%>
                            <div id="addAddress" style="display: none;">
                                <div style="width:11%;float:left"><span class="span_2">送餐城市：</span>
                                    <span class="span_2" address2="" style="display: block;">路名/小区名：</span>
                                    <span class="span_2" address3="" style="display: block;">请继续填全：</span>
                                    <span class="span_2" address5="">联系人：</span>
                                    <span class="span_2" address6="">联系电话：</span>
                                </div>
                                <div style="width:760px">
                                    <div id="import_addr_tip"></div>

                                    <a href="javascript:;" style="display: none;" onclick="" id="addressAdd">新增</a>

                                    <!--添加送餐地址开始-->
                                    <div style="position: relative; height: 100px; z-index:1;">
                                        <div class="fl_l">
                                            <div class="info_table_1">
                                                <div>
                                                    <div style="border: none;">
                                                        <input id="editAddressId" type="hidden" value="0">
                                                        <input id="editCityCode" type="hidden" value="00013">
                                                        <div class="add_address">

                                                            <p>
                                                                <span class="new_tel_input">
                                                                <input id="cityName" type="text" class="input_5"
                                                                       autocomplete="off"
                                                                       style="color: rgb(115, 115, 115);">
                                                                <span class="add_icon" id="query_city"></span>
                                                                <span class="location"></span>
                                                                </span>
                                                            </p>

                                                            <p id="add_add2" address2="" style="display: block;">
                                                                <input id="address2"
                                                                       style="width: 188px; color: rgb(115, 115, 115);"
                                                                       type="text" class="input_4" autocomplete="off">
                                                                <span class="new_add_img"><a href="javascript:void(0);">查询</a></span>
                                                            </p>

                                                            <p id="add_add3" address3="" style="display: block;">
                                                                <input id="address3" type="text" maxlength="10"
                                                                       class="input_3" autocomplete="off"
                                                                       style="color: rgb(115, 115, 115);">
                                                            </p>

                                                            <p id="add_add5" address5="">
                                                                <input id="linkman" type="text" class="input_4"
                                                                       style="width: 188px; color: rgb(115, 115, 115);"
                                                                       autocomplete="off">&nbsp;&nbsp;
                                                                <input id="gender0" name="gender" type="radio" value="0"
                                                                       checked="checked">&nbsp;先生
                                                                &nbsp;&nbsp;
                                                                <input id="gender1" name="gender" type="radio"
                                                                       value="1">&nbsp;女士
                                                            </p>

                                                            <p id="add_add6" address6="">
                                                                <input id="linkphone" name="linkphone" type="text"
                                                                       style="width: 188px; color: rgb(115, 115, 115);"
                                                                       maxlength="11" class="input_4"
                                                                       autocomplete="off">
                                                                <span class="new_add_boxs1">
                                                                    <a id="saveAddressBtn" href="javascript:;">保存</a>
                                                                </span>
                                                            </p>
                                                            <p>
                                                                <span class="new_add_map">如此处与路名/小区名填写内容有矛盾，视为无效订单<br>此处仅支持中文输入地址。</span>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                    </div> <!--添加送餐地址结束-->
                                </div>
                            </div>

                            <%-- 地址选择 --%>
                            <div id="adderssArea" style="padding-bottom: 20px;" class="line_back">
                                <div class="address_span"><span class="span_1" id="span1">送餐地址：</span></div>

                                <!--送餐地址开始-->
                                <div id="address_1" style="">
                                    <div class="fl_l">
                                        <ul class="info_table_1">
                                            <li id="0" class="selectcolor td_no_border">
                                                <div style="width: 20px; float: left; margin-top: 12px;">
                                                    <input name="selAddressId" type="radio" value="0" checked="checked">
                                                    <input name="supportonlinepay" type="hidden" value="true">
                                                    <input name="nCityCode" type="hidden" value="00013">
                                                    <input name="nCityName" type="hidden" value="北京">
                                                    <input name="nMainaddress" type="hidden"
                                                           value="六铺炕1区(安德里中街与旧鼓楼外大街交叉口西北150米)">
                                                    <input name="nMainaddressDescription" type="hidden"
                                                           value="六铺炕1区(安德里中街与旧鼓楼外大街交叉口西北150米)">
                                                    <input name="nSupplementaladdress" type="hidden" value="12">
                                                    <input name="nSupplementaladdressDescription" type="hidden"
                                                           value="12">
                                                    <input name="coordinate_x" type="hidden" value="">
                                                    <input name="coordinate_y" type="hidden" value="">
                                                    <input name="addressDESFlag" type="hidden" value="1">
                                                    <input name="gender" type="hidden" value="0">
                                                    <input name="name" type="hidden" value="12">
                                                    <input name="phone" type="hidden" value="13347573463">
                                                </div>

                                                <div style="float:left" class="cityName">
                                                    <%--<a name="selAddressLink"--%>
                                                       <%--style="text-decoration: none;display: block;width: 493px;"--%>
                                                       <%--href="javascript:void(0);">北京&nbsp;&nbsp;&nbsp;&nbsp;六铺炕1区(安德里中街与旧鼓楼外大街交叉口西北150米)--%>
                                                        <%--12<br>12先生&nbsp;&nbsp;13347573463</a>--%>
                                                </div>

                                                <div style="float:right">
                                                    <a href="javascript:void(0);"
                                                       class="editAddressBtn" newaddressflag="1"
                                                       tip="六铺炕1区(安德里中街与旧鼓楼外大街交叉口西北150米)"></a><a
                                                        href="javascript:;" class="deleteAddressBtn"
                                                        tip="六铺炕1区(安德里中街与旧鼓楼外大街交叉口西北150米)"></a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class=" fl_l">
                                        <a href="javascript:;" class="ml20px mt5px" id="addAddressBtn">新增</a>
                                    </div>
                                    <div class="clear"></div>
                                </div> <!--送餐地址结束-->
                            </div>

                            <%-- 选择送餐时间 --%>
                            <div tip="deliveryTime" style="width:838px">
                                <div class="address_span" style="height:70px;margin-right:25px;width: 71px;">送餐时间：</div>
                                <div>
                                    <%-- 预计30分钟后送达--%>
                                    <div style=" margin-top: 20px;"><p class="deliveryHeight">
                                        <input name="sendfoodtime"
                                               type="radio"
                                               tip="inTime"
                                               checked="checked"
                                               style="vertical-align:middle;margin:-4px 0 0;">
                                        <a name="sendfoodtimeLink" href="javascript:void(0);"
                                           style="text-decoration: none;">
                                            <span>成功提交订单后，预计</span>
                                            <span class="bc">30</span>分钟左右送达。</a></p>

                                        <%--空表div,为使代码统一--%>
                                        <div></div>

                                        <%--隔天送达--%>
                                        <div style="position:relative;width: 100%;height: 30px;margin-left: 93px;display:block">
                                            <div class="fl_l">
                                                <input class="sendfoodtime-style" name="sendfoodtime"
                                                       type="radio"
                                                       value="00289,12,新1秀(东莞路与伊春路交叉口南50米),120.390564,36.103476"> <a
                                                    name="sendfoodtimeLink"
                                                    href="javascript:void(0);"
                                                    style="text-decoration: none;"><span>预约当日稍晚时间送餐。</span></a>
                                            </div>
                                            <div class="selectTime sendTime" style="display: none;">
                                                <div><span>2018年5月12日</span>
                                                    <div class="macstyle">
                                                        <div class="tag_select">15</div>
                                                        <ul class="tag_options" style="display: none">
                                                            <li>15</li>
                                                            <%--class="hover"--%>
                                                            <li>21</li>
                                                            <li>22</li>
                                                            <li>23</li>
                                                        </ul>
                                                        <input type="hidden" name="hour" value="15"></div>
                                                    <span>时</span>
                                                    <div class="macstyle">
                                                        <div class="tag_select">55</div>
                                                        <ul class="tag_options" style="display: none;">
                                                            <li>55</li>
                                                        </ul>
                                                        <input type="hidden" name="minute" value="55"></div>
                                                    <span>分送到</span><input type="hidden" name="isSecondDay"
                                                                           value="false"></div>
                                            </div>
                                            <div></div>
                                        </div>

                                        <%--隔几天后送达--%>
                                        <div style="position:relative;width: 100%;height: 30px;margin-left: 93px;display:block">
                                            <div class="fl_l">
                                                <input class="sendfoodtime-style" name="sendfoodtime"
                                                       type="radio"
                                                       value="00289,12,新1秀(东莞路与伊春路交叉口南50米),120.390564,36.103476"
                                                       bookingtype="2"> <a
                                                    name="sendfoodtimeLink" href="javascript:void(0);"
                                                    style="text-decoration:none;"><span>隔日预约单。</span></a></div>
                                            <div class="selectTime otherDaySendTime" style="display: none;">
                                                <div><span>送餐时间：</span>
                                                    <div class="macstyle">
                                                        <div class="tag_day_select">2018年05月13日 周日</div>
                                                        <ul class="tag_day_options" style="display: none;">
                                                            <li>2018年05月13日 周日</li>
                                                            <li>2018年05月14日 周一</li>
                                                            <li>2018年05月15日 周二</li>
                                                        </ul>
                                                        <input type="hidden" name="day" value="2018年05月13日 周日"></div>
                                                    <div class="macstyle">
                                                        <div class="tag_select">10</div>
                                                        <ul class="tag_options" style="display: none;">
                                                            <li>20</li>
                                                            <li>21</li>
                                                            <li>22</li>
                                                        </ul>
                                                        <input type="hidden" name="hour" value="10"></div>
                                                    <span>时</span>
                                                    <div class="macstyle">
                                                        <div class="tag_select">40</div>
                                                        <ul class="tag_options">
                                                            <li>40</li>
                                                            <li>50</li>
                                                            <li>55</li>
                                                        </ul>
                                                        <input type="hidden" name="minute" value="40"></div>
                                                    <span>分送到</span><input type="hidden" name="isSecondDay" value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="the_other_day_tip" style="display: none;">
                                            隔日预约单是预约当日菜单、价格可能会发生变化，以实际发生为准。
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div>
                            <div>
                                <div id="nextTr" style="text-align: center; margin-top: 10px;">
                                    <div class="agreeTd">
                                        <img id="nextStep" class="agree_next" src="images/next02.png">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- alert 弹出层 -->
    <div id="dialog-message-alert" title="友情提示" closebtn="true" style="display: none;">
        <span></span>
    </div>

    <!-- dialog-bind-phone 弹出层 -->
    <div id="dialog-bind-phone" title="友情提示" closebtn="true" style="display: none;">
        <span></span>
    </div>

    <!-- confirm 弹出层 -->
    <div id="dialog-message-confirm" title="友情提示" closebtn="true" style="display: none;">
        <span></span>
    </div>

    <!-- alert_back 弹出层 -->
    <div id="dialog-message-alert-back" title="友情提示" closebtn="true" style="display: none;">
        <span></span>
    </div>

    <!-- 弹出层 -->
    <div id="dialog-message" title="友情提示：" closebtn="false" style="display: none;">
        <span></span>
    </div>

    <!--弹出层开始-->
    <div id="layer_box"></div>

</div>
</body>
</html>