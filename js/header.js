$(()=>{
	//首页加载
	$(".header").load("header.html");

	//验证登录
	function islogin(){
		$.get("data/islogin.php").then(data=>{
			if(data.ok==1){
				$(".a1").html("欢迎您:")
						.removeAttr('href')
						.css('cursor', 'text');
				$(".a2").html(data.uname)
						.removeAttr('href')
						.css('cursor', 'text');
				$(".a3").show();
			}
		})
	}
	islogin();

	//搜索
	$(document.body).on("click",
		"[data-toggle=search]",
		function () {
			$search = $(this).prev().val();
			if ($search.trim()!=="") {
				location="products.html?kw="+$search;
			}else{
				location="products.html";
			}
		}
	);
	//注销
	$(document.body).on(
				"click",
				"[data-toggle=loginout]",
				e=>{
					$.get("data/loginout.php").then(()=>{
						location.reload(true);
					})
				}
			);
	// //跳转登录
	// $(document.body).on("click","[data-toggle=register]",e=>{
	// 				location="register.html";
	// 			}
	// 		);
	// //跳转注册
	// $(document.body).on("click","[data-toggle=login]",e=>{
	// 				location="login.html";
	// 			}
	// 		);
	// //跳转购物车
	// $(document.body).on("click","[data-toggle=shopcart]",e=>{
	// 				location="shopcart.html";
	// 			}
	// 		);
})



