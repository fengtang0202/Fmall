//加载头部内容

	$("header").load("header.html",()=>{
	//console.log(11111);
		
	//接受登录页面传过来的用户名
	//console.log(document.querySelector(".login"));
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
			window.location="login.html";
			//console.log(1111);
		});
			//console.log(1111);
	}

	$(".headerTopRight").on("mouseover","li",function(){
		$(this).children('ul').css("display","block");
	}).on("mouseout","li",function(){
		$(this).children('ul').css("display","none");
	});
	$("ul.ul").css("display","block");
})


//$(window).on("scroll",()=>{
//	if($(window).scrollTop()>100){
//		$(".headerTop").css("display","none");
//		$(".search>ul").css("display","none");
//		$(".search").css("marginRight","35%");
//		$(".headerBottom").css({position:"fixed"});
//		$(".headerBottom>div").css("float","left");
//		$(".redPacket").css("display","none");
//	}else{
//		$(".headerTop").css("display","block");
//		$(".search>ul").css("display","block");
//		$(".search").css("marginRight","");
//		$(".headerBottom").css({position:""});
//		$(".headerBottom>div").css("float","");
//		$(".redPacket").css("display","block");
//	}	
//});