/**
 * Created by Shinelon on 2018/5/2.
 */
$(function () {

    //ajax向后台请求这是一天的菜点
    $.ajax({
        url: "./queryDishTypeByMealType.action",
        type: "POST",
        dataType: "json",
        data: {
            mealType: "早餐"
        },
        success: function (data) {

            var d = eval(data);

            for (var x = 0; x < d.length; x++) {
                $("#ChildMenu2").append("<li><a onclick='$.sendInfo(this);'" + d[x] + ">" + d[x] + "</a></li>");
            }
        }
    });

    // ajax向后台请求早餐菜品种类
    $.ajax({
        url: "./queryDishTypeByMealType.action",
        type: "POST",
        dataType: "json",
        data: {
            mealType: "正餐"
        },
        success: function (data) {

            var d = eval(data);

            for (var x = 0; x < d.length; x++) {
                $("#ChildMenu3").append("<li><a onclick='$.sendInfo(this);'" + d[x] + ">" + d[x] + "</a></li>");
            }

        }
    });

    $.ajax({
        url: "./queryDishTypeByMealType.action",
        type: "POST",
        dataType: "json",
        data: {
            mealType: "夜宵"
        },
        success: function (data) {

            var d = eval(data);

            for (var x = 0; x < d.length; x++) {
                $("#ChildMenu4").append("<li><a onclick='$.sendInfo(this);'" + d[x] + ">" + d[x] + "</a></li>");
            }

        }
    });


    $.sendInfo = function (obj) {

        $.ajax({
            url: "./queryDishesByDishesType.action",
            type: "POST",
            dataType: "json",
            data: {
                dishesType: obj.innerHTML
            }, success: function (data) {

                var d = eval(data);

                $(".product_ul").html("");

                var address = $("#goods_pic_addrs").val();

                for (var x = 0; x < d.length; x++) {

                    $(".product_ul").append(
                        "<li style='height:295px'>" +
                        "<div>" +
                        "<img src='" + address + d[x].picAddress + "' name='menuImg' alt='" + d[x].dishesName + "' style='width: 179px;height:179px;'>" +
                        "<div>" +
                        "<div class='pro_info'>" +
                        "<p>" +
                        "<a href='javascript:;' class='pro_name'>" + d[x].dishesName + "</a> <span class='couponDesc'>&nbsp;</span>" +
                        "</p>" +
                        "<p class='p_realPrice'>" +
                        "</p>" +
                        "<p style='height:22px'>" +
                        "<span class='pro_price'>" + d[x].price + "元 / 份" + "</span>" +
                        "</p>" +
                        "<p style='clear: both; margin-bottom: 20px!important;'>" +
                        "<input type='button' class='order_btn_start'>" +
                        "</p>" +
                        "</div>" +
                        "</li>"
                    );

                }

            }
        });

    }


    // $(".breakfast").on('click', function () {
    //     alert(123);
    // });


    //
    //
    // $("#nbId").on('click', function () {
    //     $.ajax({
    //         url:,
    //         data: {},
    //         type: "POST",
    //
    //     });
    // });

});