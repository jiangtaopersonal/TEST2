//页面内容加载
function pagee(pageNo=1) {
		var pageSize = 5;
		var target = "articles";
		var query={pageNo,pageSize,target};
	$.get("data/article_list.php",query).then(resdata=>{
		var {rows,pageNo,pageCount}=resdata;
		var html="";
		var fenye ="";
		for(var i=0;i<rows.length;i++){
			var p=rows[i];
			var content = p.content.slice(0,30)+"。..........";
			console.log(p.way);
			html+=`<li>
					<div>
						<div class="new_img"></div>
						<div class="inner_list">
							<a href="${p.way}">${p.title}</a>
							<span>发布时间:&nbsp;&nbsp;
							<i>${p.timeyear}.${p.timemonth}.${p.timesecond}&nbsp;&nbsp;</i>分类:&nbsp;&nbsp;
							<i>${p.breed}</i></span>
							<p>${content}</p>
						</div>
					</div>
				</li>`;
		}
		document.querySelector(".news_list")
						.innerHTML=html;

		// 分页A标签
		console.log(pageCount,pageNo);
		fenye+=`<li><a href="javascript:;"  class='${pageNo==1?"disabled":"prev"}'>上一页</a></li>`;
		for(var i=1;i<=pageCount;i++){
			fenye+=`<li><a href="javascript:;" class='${pageNo==i?"active":""}'>${i}</a><li>`;
		}
		fenye+=`<li><a href="javascript:;" class='${pageNo==pageCount?"disabled":"next"}'>下一页</a><li>`;
		document.querySelector(".pagesize ul").innerHTML=fenye;
	})
}
pagee()

//动画效果
$(()=>{
	$(".common-title").animate({
		top: "70",
		opacity: "1"
	},500)
})

//分页按钮
$(()=>{
	$(".pagesize").on("click","a",e=>{
		var divPages=document.getElementById("pages");
		var tar=e.target;
			var i=1;
			if(/prev/.test(tar.className)){
				var a=divPages.querySelector(".active");
				console.log(a.innerHTML);
				i=parseInt(a.innerHTML)-1;
			}else if(/next/.test(tar.className)){
				var a=divPages.querySelector(".active");
				i=parseInt(a.innerHTML)+1;
			}else{
				i=parseInt(tar.innerHTML);
			}
			pagee(i);
			console.log(i);
		// }
	})
});



