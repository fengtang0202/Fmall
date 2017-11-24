//本js只针对init.htmll有效
//加载尾部
$("footer").load("html/footer.html");

//头部事件
	var uname=sessionStorage.getItem("uname");
	if(uname){
	//console.log($("[data-login=login]").html());
		$("[data-login=login]").html(`
			<a href="javascript:;">欢迎回来：${uname}</a>
						<span>|</span>
		`);
		$("[data-register=register]").html(`
			<a href="javascript:;" data-login="loginOut">退出</a>
						<span>|</span>
		`);
		$("[data-login=loginOut]").click(()=>{
			sessionStorage.removeItem("uname");
			window.location="html/login.html";
			console.log(1111);
		});
			console.log(1111);
	}

	$(".headerTopRight").on("mouseover","li",function(){
		$(this).children('ul').css("display","block");
	}).on("mouseout","li",function(){
		$(this).children('ul').css("display","none");
	});
	var myList=["时尚套装","短袖T恤","小白鞋","长袖T恤","套头卫衣","时尚短靴"];
	for(let i=0;i<myList.length;i++){
		$(".search>ul.ul").append("<li><a>"+myList[i]+"</a></li>");
	}
	$(window).on("scroll",()=>{
	if($(window).scrollTop()>100){
		$(".headerTop").css("display","none");
		$(".search>ul").css("display","none");
		$(".search").css("marginRight","35%");
		$(".headerBottom").css({position:"fixed",top:0});
		$(".headerBottom>div").css("float","left");
		$(".redPacket").css("display","none");
	}else{
		$(".headerTop").css("display","block");
		$(".search>ul.ul").css("display","block");
		$(".search>ul.list").css("display","none");
		$(".search").css("marginRight","");
		$(".headerBottom").css({position:""});
		$(".headerBottom>div").css("float","");
		$(".redPacket").css("display","block");
	}	
});

//点击轮播
$("#banner #show img").click(()=>{
	sessionStorage.setItem("subdivision","一字领");
	window.location="html/subdivision.html";
})

//限时抢购
$.ajax({
	type:"GET",
	url:'data/subdivision.php',
	data:'subdivision=套装',
	success:function(data){
		console.log(data);
		var html="";
		if(data.data.length>6){
				data.data=data.data.slice(0,6);
			}
		for(var p of data.data){		
			html+=`
				<div class="d1">
					<img src="${p.img}" />
					<p class="p1">${p.synopsis}</p>
				</div>	
			`
			$("#last-minute").html(html);
		}		
	}

}).then(()=>{
	addaa();
	setInterval(()=>{
		var index=parseInt(Math.random()*6+1);
		
		var img=$("#last-minute>div>img");
		var arr=[];
		img.each(function(){
			arr.push($(this).attr("src"));
		});
		
		var div=$("#last-minute>div:nth-child("+index+")");
		div.css("transform","rotateY(90deg)");
		setTimeout(()=>{
			$.ajax({
					type:"GET",
					url:'data/subdivision.php',
					data:'subdivision=套装',
					success:function(data){
						var html="";
						console.log(data.data);
						for(var p of data.data){
							if(arr.indexOf(p.img)==-1){
								html=`
										<img src="${p.img}" />
										<p class="p1">${p.synopsis}</p>	
								`
								$("#last-minute>div:nth-child("+index+")").html(html);	
							}					
						}											
					}

			}).then(()=>{
				addaa();
			})
			div.css("transform","rotateY(0deg)");
		},1000);				
	},5000);

	
});



$("div.common-nav li").on("click","a",(e)=>{
		//console.log($(e.target).html());
		let subdivision=$(e.target).html();
		sessionStorage.setItem("subdivision",subdivision);
		window.location="html/subdivision.html";
})


//点击图片根据图片路径找到该图片的ID
function  addaa(){
	$("img").click((e)=>{
		$("img").removeClass("add-img");
		$(e.target).addClass("add-img");
		console.log(document.querySelector(".add-img").src);
		let src=document.querySelector(".add-img").src.split("image");
		let img_src="image"+src[1];
		console.dir(img_src);
		$.ajax({
			type:"GET",
			url:'data/find-id.php',
			data:{img:img_src},
			success:function(data){
				//console.log(data);
				let sid=data.sid;
				console.log(sid)
				if(sid!=-1){
					//保存商品ID发送到详情页
					sessionStorage.setItem("sid",sid);
					//跳转到详情页
					window.location.href="html/detail.html";
				}
			}
		})
	});
}
addaa();