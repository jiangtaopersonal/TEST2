
$(()=>{
	// 获取焦点事件
	$(".uname").blur(e=>{
		 var  $txtName = $(e.target);
		 var reg=/^[a-z]{5,10}$/;
		 if (!reg.test($txtName.val())) {
				$txtName.next().show();
				$txtName.next().html("用户名必须介于6~10位字符之间!");
		}else{
				$txtName.next().show();
				$txtName.next().html("用户名格式正确");
		};
	})

	$(".upwd").blur(e=>{
		 var  $txtUpwd = $(e.target);
		 var reg1 = /^\d{3,10}$/;
		 if (!reg1.test($txtUpwd.val())) {
				$txtUpwd.next().show();
				$txtUpwd.next().html("密码必须介于6~10位数字之间!");
		}else{
				$txtUpwd.next().show();
				$txtUpwd.next().html("密码格式正确");
		};
	})


	$("#btn").click(()=>{
		var $form=$("form");
		var reg=/^[a-z]{5,10}$/;
		var reg1 = /^\d{3,10}$/;
		var $txtName = $(".uname");
		var $txtUpwd = $(".upwd");
		if (reg.test($txtName.val())&&reg1.test($txtUpwd.val())) {
			 $.post("data/login.php",$form.serialize())
				.then(text=>{
					console.log(text);
				if(text==false){
					// $form[0].reset();
					alert("用户名或密码不正确!")
				}else{
					alert("登录成功!");
					location="index.html";
				}
			})
		}
	});
	$(window).keyup(e=>{
		if(e.keyCode==13) $("#btn").click();
	})
		//跳转注册
	$(".zhuce").click(function(){
		location = "login.html"
	})
});