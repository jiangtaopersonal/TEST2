$(()=>{
	//产品加载
	function getcar(){
		$.get("data/getcart.php").then(data=>{
			var html ="";
			var heighttd = 112;
			var totle1 = 0;
			for (var i = 0; i < data.length; i++) {
				var p =data[i];
				// var number = parseInt(p.priceage);
				var price = parseInt(p.priceage);
				totle1+=price;
				var shopcartheight = 200 + heighttd*data.length;
				console.log(shopcartheight);
				html+=`<tr><td>
								<input type="checkbox" name="" class="ckeck">
								<img src="${p.imgway}">
								<span>${p.title}</span>
							</td>
							<td>$<span>${p.priceage}</span></td>
							<td>
								<div class="prodIntr_cart">
									<span class="reduce">-</span>
									<span class="span">1</span>
									<span class="add">+</span>
									</div>
							</td>
							<td>¥<span class="computer">${p.priceage}</span></td>
						</tr>`;
			}
			$("table>tbody").html(html);
			$(".shopcart").css('height',shopcartheight);
			$(".shopcart-right .totle1").html("￥"+totle1);
			$(".shopcart-right .totle2").html("￥"+totle1);
		})
	}
	getcar();
	//全选按钮
		$(document.body)
		.on("click","tfoot :checkbox",function(){
			if ($("tfoot :checkbox").prop("checked")) {
					$("tbody :checkbox").prop("checked",true);
				}else{
					$("tbody :checkbox").prop("checked",false);
				}
		})
		$(document.body)
		.on("click","tbody :checkbox",function(){
			$inputs = $("tbody :checkbox");
			var num = 0;
			for (var i = 0; i < $inputs.length; i++) {
					if ($("tbody :checkbox").get(i).checked) {
							num+=1;
						if (num==$inputs.length) {
							$("tfoot :checkbox").prop("checked",true);
						}else{
							$("tfoot :checkbox").prop("checked",false);
						}
					}
			}
		})

	//商品购物车总价
	//商品列表中单击按钮
	// $(".prodIntr_cart")
	$(document.body)
		.on("click",".reduce,.add",e=>{
			var $tar=$(e.target);
			var $span=$tar.parent().children(":eq(1)");
			// 单价
			var $price = parseInt($tar.parent().parent().prev().children().html());
			var $parent =$tar.parent().parent().next().children();
			var n=parseInt($span.html());
			if($tar.is(".add"))
				n++,
				$parent.html(($price*n));
			else if(n>1)
				n--,
				$parent.html(($price*n));
			$span.html(n);
			// 右边前往收银台
			var totle=0;
			var $tooles = document.getElementsByClassName('computer');
			for (var i = 0; i < $tooles.length; i++) {
				var price =parseInt(($tooles[i].innerHTML));
					totle+=price;
			}

			$(".shopcart-right .totle1").html("￥"+totle);
			$(".shopcart-right .totle2").html("￥"+totle);
		})
});
