


$(window).on("scroll",()=>{
	if($(window).scrollTop()>100){
		$(".headerTop").css("display","none");
		$(".search>ul").css("display","none");
		$(".search").css("marginRight","35%");
		$(".headerBottom").css({position:"fixed"});
		$(".headerBottom>div").css("float","left");
		$(".redPacket").css("display","none");
	}else{
		$(".headerTop").css("display","block");
		$(".search>ul").css("display","block");
		$(".search").css("marginRight","");
		$(".headerBottom").css({position:""});
		$(".headerBottom>div").css("float","");
		$(".redPacket").css("display","block");
	}	
});
function jumpImg(){
	$("img").click((e)=>{
			$("img").removeClass("add-img");
			$(e.target).addClass("add-img");
			//console.log(document.querySelector(".add-img").src);
			//可用jq里的  $("").attr()
			let src=document.querySelector(".add-img").src.split("image");
			let img_src="image"+src[1];
			//console.dir(img_src);
			$.ajax({
				type:"GET",
				url:'../data/find-id.php',
				data:{img:img_src},
				success:function(data){
					console.log(data);
					let sid=data.sid;
					if(sid!=-1){
						//保存商品ID发送到详情页
						sessionStorage.setItem("sid",sid);
						//跳转到详情页
						location="../html/detail.html";
					}
				}
			})
		});
}
function  add(sivion,url){
	$.ajax({
		type:'GET',
		url:url,
		data:sivion,
		success:function(data){		
			//console.log(typeof(data));
			if(data=='404'){
				window.open("../html/404.html","_blank");
			}else{
				var html='';
				for(var p of data.data){
					var num=parseInt(Math.random()*7999+2000);
					html+=`
				<li>
					<img src="../${p.img}" alt="">
					<p>${p.title}</p>
					<div>
						<ul class="clear">
							<li>￥${p.price_fall}</li>
							<li><s>${p.price}</s></li>
							<li>
								<img src="../image/subdivision/yemiao/upload_27g4f1ch6akie83hacb676j622b9l_32x30.png" alt="">
								<span>${num}</span>
							</li>
						</ul>	
					</div>
				</li>	
					`;
				}
				$("[data-content=content]").html(html);
			}
		},
		error:function(){
			window.open("../html/404.html","_blank");
		}
	}).then(()=>{
		jumpImg();
	})

}

	//接收从首页传过来的sessionStorage数据
	var SUBD=sessionStorage.getItem("subdivision");
	//console.log(SUBD);
	$("#title a").each((i,elem)=>{
		if($(elem).html()==SUBD){
			if(i<=3){
				$(elem).addClass('addColor');
			}else{
				$(elem).addClass('add');
			}
		}
	}) 
	
	add({subdivision:SUBD},'../data/subdivision.php');
		$("#content h3").html(SUBD);
	  //点击商品分类
	var   arrTitle=[];
	$("#title div a").click(function(){
		var title=$(this).html();
		arrTitle[0]=title;
		$("#title  a").removeClass("add");
		$("#title  a").removeClass("addColor");
		$("#content h3").html(title);
		add({subdivision:title},'../data/subdivision.php');
		$(this).addClass("add");
		sessionStorage.setItem("subdivision",arrTitle[0])
		
	})
	$("#title>ul a").click(function(){
		var title=$(this).html();
		$("#title  a").removeClass("addColor");
		$("#title  a").removeClass("add");
		$("#content h3").html(title);
		$(this).addClass("addColor");
		//console.log(title);
		loadProductByPage(1);
		console.log(arrTitle[0]);
})
$("[data-data=page]").on("click","a",(e)=>{
	$(e.target).addClass("aa");
	e.preventDefault();
    //b:获取当前页码
    var pno = $(e.target).attr("href");
    //c:调用函数
    loadProductByPage(pno);
})
function loadProductByPage(pno){
	var title=$("#title .addColor").html();
  //3:发送AJAX请求 
  //4:参数pno  
  $.ajax({
      type:"GET",
      url:'../data/shop_list.php',
      //与php里获得pno参数相关
	  data:{description:title,pno:pno},
      success:function(pager){
          //console.log("获取服务器返回数据");
          //console.log(pager);
          //5:获取返回数据 pager.data
          //6:拼接字符串动态创建表格并且添加数据
          var html = "";
          for(var p of pager.data){
				  var num=parseInt(Math.random()*7999+2000);
              html += `
				<li>
					<img src="../${p.img}" alt="">
					<p>${p.title}</p>
					<div>
						<ul class="clear">
							<li>￥${p.price_fall}</li>
							<li><s>${p.price}</s></li>
							<li>
								<img src="../image/subdivision/yemiao/upload_27g4f1ch6akie83hacb676j622b9l_32x30.png" alt="">
								<span>${num}</span>
							</li>
						</ul>	
					</div>
				</li>	
             `;
                            

          }
          $("[data-content=content]").html(html);
          //7:获取总页数  pager.pageCount
          //8:拼接字符串动态创建页码
          var html = "";
		   html +=`<a href="${pager.pno-1}" class="pagelink_a up">上一页</a>`;
          //判断是否显示上上一页
          if(pager.pno-2>0){
              html += `<a class="pagelink_b " href="${pager.pno-2}">${pager.pno-2}</a>`;
          }
          //判断是否显示上一页
          if(pager.pno-1>0){
          html += `<a class="pagelink_b " href="${pager.pno-1}">${pager.pno-1}</a>`;
          }
          
		  html += `<a class="pagelink_b pagenow" href="${pager.pno}">${pager.pno}</a>`;
		 
          //判断是否显示下一页
          if(pager.pno+1<=pager.pageCount){
              html += `<a class="pagelink_b " href="${pager.pno+1}">${pager.pno+1}</a>`;
          }
          //判断是否显示下下一页
          if(pager.pno+2<=pager.pageCount){
              html += `<a class="pagelink_b " href="${pager.pno+2}">${pager.pno+2}</a>`;
          }
		  if(pager.pno+1<=pager.pageCount){
			html +=`<a href="${pager.pno+1}" class="pagelink_a down">下一页</a>`;
          }else{
			html +=`<a href="${pager.pno}" class="pagelink_a down">下一页</a>`;
		  }

		  $("[data-data=page]").html(html);
		  

      },
      error:function(){
          alert("网络出现故障，请检查");
      }
  }).then(()=>{
	jumpImg();
  })


}
//加载尾部页面
$("footer").load("../html/footer.html");
//console.log(111);