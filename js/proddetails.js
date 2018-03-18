// 商品信息加载
$(()=>{
		var pid=location.search.split("=")[1];
		$.get({type:"get",url:"data/proddetails.php",data:"pid="+pid}).then(data=>{
					console.log(data);
			html="";
			html+=`<h3>${data[1]}</h3>
						<p>${data[11]}</p>
						 <p class="price">¥<span>${data[6]}</span></p>
						 <p>商品编号：<span>${data[8]}</span></p>
						 <p class="fenlei">分类：<span>${data[4]}</span> </p>
						 <p>重量：<span>${data[10]}</span></p>`;
			document.querySelector(".prodIntr_intrs")
						.innerHTML=html;
			$(".product_img").attr("src",`${data[3]}`);
			})
});
//商品列表中单击按钮
$(()=>{
	$(".prodIntr_cart")
		.on("click",".reduce,.add",e=>{
			var $tar=$(e.target);
			var $span=$tar.parent().children(":eq(2)");
			var n=parseInt($span.html());
			if($tar.is(".add"))
				n++;
			else if(n>1)
				n--;
			$span.html(n);
		})
});

//放大镜功能
$(()=>{
	$(".supmasktwo").mouseover(function(){
		$(".supmask").show();
		$(".mask").show();
	})
	$(".supmasktwo").mouseout(function(){
		$(".supmask").hide();
		$(".mask").hide();
	})
	$(".supmasktwo").mousemove(e=>{
		var offsetX=e.offsetX, offsetY=e.offsetY;
		var top=offsetY-150/2,
			  left=offsetX-150/2;
		top=top<0?0:top>150?150:top;
		left=left<0?0:left>150?150:left;
		$(".supmask").css({
			top: top+"px",
			left: left+"px",
		});
		$(".mask").css({
			backgroundPosition:-left*4/3+"px "+(-top*4/3)+"px",
		});
		console.log((-top*4/3));
		console.log((-left*4/3));
	})

});

//加入购物车
$(()=>{
	$(".prodIntr_cart>.button").click(()=>{
		$.get("data/islogin.php")
					.then(data=>{
						console.log(data);
				if(data.ok==0){
					location="register.html";
				}else{
					var ppid=parseInt(location.search.split("=")[1]);
					console.log(ppid);
					var num = parseInt($(".prodIntr_cart>.span").html());
					function addcart(ppid,num){
					var query={ppid,num};
					$.get("data/shopcart.php",query).then(result=>{
						alert(result.ok)
					// alert(resda.ok);
							})
	 					}
	 				addcart(ppid,num);
				}
		})
	})
})