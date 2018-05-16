$(function() {

	// 当输入框被点击时触发事件
	// 清除输入框中内容
	$("#mobi").on('click', function() {
		var content = $("#mobi").val();
		if (content == '请输入手机号') {
			$("#mobi").val("");
		}
	});

	// 当输入框失去焦点时触发事件
	// 当失去焦点时，判断是否应该恢复input中的提示内容
	$("#mobi").on('blur', function() {
		var content = $("#mobi").val();
		if (content == null || content.trim().length == 0) {
			$("#mobi").val("请输入手机号");
		}
	});

	$("#password_text").on('click', function() {
		var content = $("#password_text").val();
		if (content == '请输入密码') {
			$("#password_text").val("");
			$("#password_text").attr("type", "password");
		}
	});

	$("#password_text").on('blur', function() {
		var content = $("#password_text").val();
		if (content == null || content.trim().length == 0) {
			$("#password_text").val("请输入密码");
			$("#password_text").attr("type", "text");
		}
	});

	// 当点击提交按钮时，ajax校验该账号是否注册
	$("#loginSubmit").on('click', function() {

		var loginData = {
			mobile : $("#mobi").val(),
		};

		$.ajax({
			url : "./LoginValidate.action",
			type : 'POST',
			dataType : 'json',
			data : {
				loginData : JSON.stringify(loginData)
			},
			success : function(info) {

				var d = eval(info);

				var flag = d.head == "true" ? true : false;

				if (flag) {
					$("#showPwd").css("display", "block");
					$(".Loginboxbg03").css("display", "block");
					$(".wangji").css("display", "block");

					/**
					 * 按钮绑定另一函数
					 */
					$("#loginSubmit").on('click', function() {

						$("#showVerifyCode").css("display", "block");

						$("#loginSubmit").on('click', function() {
							var loginData = {
								mobile : $("#mobi").val(),
								password : $("#password_text").val(),
								verifyCode : $("#showVerifyCode").val()
							};

							$.ajax({
								url : "./UserLogin.action",
								type : 'POST',
								dataType : 'json',
								data : {
									loginData : JSON.stringify(loginData)
								},
								success : function(data) {
								}
							});

						});

					});
				} else {
					window.location.href = d.body;
				}
			}
		});
	});

});