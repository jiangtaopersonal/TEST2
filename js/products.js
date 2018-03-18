//搜索框
function products(pageNo=1) {
		var kw = decodeURI(location.search.split("=")[1]);
		if (kw == "undefined") {
			kw="";
		}else{
			kw = kw;
		}
		var pageSize = 8;
		var target = "products";
		var query={pageNo,pageSize,target,kw};
	$.get("data/productbykw.php",query).then(resdata=>{
		var {rows,pageNo,pageCount}=resdata;
		var html="";
		for(var i=0;i<rows.length;i++){
			var p=rows[i];
			html+=`<li>
						<a href="${p.way}"><img src="${p.imgway}"></a>
						<a href="${p.way}" class="title">${p.title}</a>
						<p class="title">￥<span>${p.priceage}</span></p>
					</li>`;
		}
		document.querySelector(".ul_list")
						.innerHTML=html;
	})
}
products();

$(()=>{
	$(".ul_chose li").on("click","li:gt(0)",function(e){
			var target = String($(e.target).html());
			products();
	})
})