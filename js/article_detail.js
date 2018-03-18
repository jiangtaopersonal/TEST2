$(()=>{
		var aid=location.search.split("=")[1];
			$.get({type:"get",url:"data/article_detail.php",data:"aid="+aid}).then(data=>{
			console.log(data);
				document.querySelector(".span5")
						.innerHTML=data[8];
				document.querySelector(".span6")
						.innerHTML=data[1];
				document.querySelector(".article_border h1")
						.innerHTML=data[1];
				document.querySelector(".article_time span")
						.innerHTML=data[2]+"-"+data[3]+"&nbsp;&nbsp;"+data[4];
				document.querySelector(".article_body p")
						.innerHTML=data[7];
			})
})

//上下篇
$(()=>{
	var aid=parseInt(location.search.split("=")[1]);
	$(".turn_article").on("click", ".previouspage, .naxtpage",e=>{
		var tar=e.target;
		if (tar.className=="previouspage") {
			aid = aid-1;
			if(aid<=0) aid=1;
		}
		if(tar.className=="naxtpage"){
			aid = aid + 1;
		}
		window.location.href="article_detail.html?aid="+aid;
	})
})