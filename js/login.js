$(()=>{
	//复选框禁用
	$(":checkbox").click(e=>{
			var $cbn = $(e.target);
			$(":submit").prop("disabled",!$cbn.prop("checked"));
		})
	// 获取焦点事件
	$("[name=uname]").blur(e=>{
		 var  $txtName = $(e.target);
		 var reg=/^[a-z]{5,10}$/;
		 if (!reg.test($txtName.val())) {
				$txtName.next().show();
				$txtName.next().html("用户名必须介于6~10位字母之间!");
		}else{
				$txtName.next().show();
				$txtName.next().html("用户名格式正确");
		};
	})
	$("[name=email]").blur(e=>{
		 var  $txtUpwd = $(e.target);
		 var reg1 = /^\d{3,10}$/;
		 if (!reg1.test($txtUpwd.val())) {
				$txtUpwd.next().show();
				$txtUpwd.next().html("邮箱格式不正确!");
		}else{
				$txtUpwd.next().show();
				$txtUpwd.next().html("邮箱格式正确");
		};
	})
	$("[name=upwd]").blur(e=>{
		 var  $txtUpwd1 = $(e.target);
		 var reg2 =/^\d{3,10}$/;
		 if (!reg2.test($txtUpwd1.val())) {
				$txtUpwd1.next().show();
				$txtUpwd1.next().html("密码格式不正确!");
		}else{
				$txtUpwd1.next().show();
				$txtUpwd1.next().html("密码格式正确");
		};
	})
	$("[name=twoupwd]").blur(e=>{
		 var  $txtUpwd1 = $("[name=upwd]");
		 var  $txtUpwd2 = $(e.target);
		 if ($txtUpwd1.val()==$txtUpwd2.val()) {
				$txtUpwd2.next().show();
				$txtUpwd2.next().html("密码相同");
		}else{
				$txtUpwd2.next().show();
				$txtUpwd2.next().html("两次密码不一致!");
		};
	})
	//表单验证
	// $("form").submit(e=>{
	// 	var $form=$("form");
	// 	var $txtName = $("[name=uname]");
	// 	var $txtEmail = $("[name=email]");
	// 	var $txtUpwd = $("[name=upwd]");
	// })
	$(".button1").click(()=>{
		var $form=$("form");
		// if (reg.test($txtName.val())&&reg1.test($txtUpwd.val())) {
			 $.post("data/loginin.php",$form.serialize())
				.then(text=>{
					console.log(text);
				if(text==true){
					// $form[0].reset();
					alert("用户名或密码不正确!")
				}else{
					alert("注册成功!");
					location="index.html";
				}
			})
		// }
	});
	//跳转登陆页
	$(".denglv").click(function(){
		location = "register.html"
	})
})