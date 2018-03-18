// 广告轮播
$(()=>{
	var LIWIDTH=600,
			timer=null,
			moved=0,
			duration=500,
			wait=3000;
		var $ul=$(".banner-img");
		$ul.css("width","4220px");
		setInterval(()=>{
			moved++;
			$ul.animate({
				left:-LIWIDTH*moved
			},duration,function(){
				if(moved==4){
					moved=0;
					$ul.css("left",0);
				}
			})
		},wait+duration)
});
// 产品加载
$(()=>{
	$.get("data/index_product.php").then(results=>{
		var html="";
		for(var i=0;i<results.length;i++){
			var p=results[i];
			html+=`<li>
						<a href="${p.way}"><img src="${p.imgway}"></a>
						<h5>${p.title}</h5>
						<p>￥<span>${p. priceage}</span></p>
					</li>`;
		}
		document.querySelector(".product ul")
						.innerHTML=html;
	})
});
// 文章加载
$(()=>{
	$.get("data/index_article.php").then(results=>{
		var html="";
		for(var i=0;i<results.length;i++){
			var p = results[i];
			var content = p.content.slice(0,30)+"。..........";
			html+=`<div class="article-introde">
					<div class="article-date lf">
						<p>${p.timemonth}<span>${p.timeyear}</span></p>
					</div>
					<div class="article-conter rt">
						<h3><a href="${p.way}">${p. title}</a></h3>
						<p>${content}</p>
					</div>
				</div>`;
		}
		document.querySelector(".article-list")
						.innerHTML=html;
	})
});

// 产品动画效果
$(()=>{
	$(window).scroll(()=>{
		var scrollTop = $(window).scrollTop();
		var offsetTop = $(".product ul").offset().top;
		var offsetTopTitle = $(".product-title").offset().top;
		if (offsetTop-500<=scrollTop+innerHeight/2) {
			$(".product ul").animate({
				top: '250',
				opacity: "1"
				},700);
		}
		if (offsetTopTitle-105<=scrollTop+innerHeight/2) {
			$(".product-title").animate({
				top: '70',
				opacity: "1"
				},700);
		}
	});
})
//楼层滚动
$(()=>{
	$(window).scroll(()=>{
		var scrollTop = $(window).scrollTop();
		var offsetTop = $(".banner-background").offset().top;
		if(offsetTop<=scrollTop){
 			$(".side-list").show();
		}else{
			$(".side-list").hide();
		}
	var $floors=$(".floor");
		for(var i=0;i<$floors.length;i++){
			var scrollTop = $(window).scrollTop();
			var $f=$($floors[i]);
			if($f.offset().top>scrollTop){
				break;
			}
		}
		$(`.side-list li:eq(${i-1})`)
			.addClass("active")
			.siblings().removeClass("active")
		});
		$(".side-list").on("click",".lift_btn",e=>{
			var i = $(e.target).index();
			var offsetTop=$(`.floor:eq(${i})`).offset().top;
			$("html").stop(true).animate({
			scrollTop:offsetTop
			},500)
		})

})