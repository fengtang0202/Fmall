
	//本js文件只对detail.html有效
	//加载尾部内容
	$("footer").load("../html/footer.html");
	//console.log(111);
	//接受首页及全部商品介绍也中 传过来的商品ID
	const SID=sessionStorage.getItem("sid");
	//接受从登录页面中 传过来的用户uname
	const UNAME=sessionStorage.getItem("uname");
	
//    var SUBD=sessionStorage.getItem("arrTitle");
//	console.log(SUBD);
//	sessionStorage.setItem("subdivision",SUBD);
	//console.log(UNAME);
	//用AJAX请求detail.php文件，传数据
	$("#login").css("display","none");
	$("#login span").click(()=>{
		$("#login").css("display","none");
	})
	$.ajax({
		type:"GET",
		url:"../data/detail.php",
		data:{sid:SID},
		success:function(data){
			//加载商品信息


			//detail 加载小图对应左边的大图
			console.log(data);

			var color_big_pic="";
			for(var p of data.color_pic){
				color_big_pic+=`
					<img src="${p.color_big_pic}" alt="">
					`
			}
			$("#detail .left  div.color-pic").append(color_big_pic);
			
			//加载大图下面的小图以及对应的大图
			//console.log(data.details)
			var detail_small_pic="";
			var detail_big_pic="";
			for(var p of data.detail_pic){
				detail_small_pic+=`
					<li>
						<img src="${p.detail_small_pic}" alt="">
					</li>
					`;
				detail_big_pic+=`
						<img src="${p.detail_big_pic}" alt="">
					`;
			}
			//console.log(detail_big_pic);
			$("#detail .left  ul").append(detail_small_pic)
			$("#detail .left .bottom-pic").append(detail_big_pic)



			// detail   加载中间商品详细信息
			//console.log(data.details);
			var detail=data.details;
			var center=`
			<ul>
				<li class="shop_title">${detail.title}</li>
				<li class="clear" data-data="setTime">
					<div>价格：</div>
					<div>
						<s>¥${detail.price}</s>
					</div>
				</li>
				<li class="clear">
					<div>
						<span>快抢价：</span>
						<span class="price_fall">¥${detail.price_fall}</span>
					</div>
					<div> 
						<span>评价：</span>
						<span>2</span>
					</div>
					<div>
						<span>累计销量：</span>
						<span>${detail.sell_count}</span>
					</div>
				</li>
				<li class="clear">
					<div class="first">客服：</div>
					<div>
						<span>联系客服</span>
					</div>
				</li>
				<li class="buy">
					<ul >
						<li class="clear">
							<div class="first">颜色：</div>
							<ul class="clear choose">
							</ul>
						</li>
						<li class="clear size size-footage">
							<div class="first">尺码：</div>
							<div>S</div>
							<div>M</div>
							<div>L</div>
							<div>XL</div>
							<div>XXL</div>
						</li>
						<li class="clear count">
							<div class="first">数量：</div>
							<div>+</div>
							<div>1</div>
							<div>-</div>
							<div>库存：${detail.surp_count}件</div>
						</li>
						<li class="clear">
							<div data-btn="one">立刻购买</div>
							<div data-btn="two">加入购物车</div>
						</li>
					</ul>
					<ul style="display:none" >
						<li class="clear">
							<p>请选择商品<span></span></p>
							<div class="first">颜色：</div>
							<ul class="clear confirm" >
							</ul>
						</li>
						<li class="clear footage size-footage" >
						</li>
						<li class="clear count" >
							<div class="first">数量：</div>
							<div>+</div>
							<div>1</div>
							<div>-</div>
							<div>库存：${detail.surp_count}件</div>
						</li>
						<li class="clear">
							<div data-btn="three">确认</div>
						</li>
					</ul>
				</li>
				<li class="clear">
					<p><span></span>2256</p>
					<p><span></span>分享</p>
					<p><span></span>举报</p>
				</li>
				<li class="clear">
					<div class="first">服务承诺：</div>
					<div>
						<img src="../image/detail/idid_ie4timrzmq3tkzbzmezdambqgqyde_40x40.png" alt="">
						<p>退货补运费</p>
					</div>
					<div>
						<img src="../image/detail/idid_ie3tmyjxhfrtgzbzmezdambqgayde_40x40.png" alt="">
						<p>全国包邮</p>
					</div>
					<div>
						<img src="../image/detail/idid_ifrtgojygu2dgzbzmezdambqhayde_40x40.png" alt="">
						<p>7天无理由退货</p>
					</div>
					<div>
						<img src="../image/detail/idid_ifrdqobzmq3dizbzmezdambqmeyde_40x40.png" alt="">
						<p>72小时发货</p>
					</div>
				</li>
				<li class="clear">
					<div class="first">支付方式:</div>
					<div></div>
				</li>
			</ul>`;
			$("#detail div.center").html(center);
			//颜色图片加载
			//console.log(data.color_pic);
			var color_small_pic="";
			for(var p of  data.color_pic ){
				//console.log(p);
				color_small_pic+=`
					<li>
						<img src="${p.color_small_pic}" alt="" title="${p.color}">
					</li>`;
			}
			//console.log(color_pic);
			$("#detail div.center ul ul ul").append(color_small_pic);

			var pic="";
			for(var p of data.pic){
				pic+=`
					<img src="${p.pic}" alt="" title="">
					`;
			}
			$("[data-img=effect]").append(pic);
		},
		error:function(){
			console.log("网络出现故障");
		}
	}).then(()=>{
		if(SID<=64){
			$(".size-footage").html(`
				<div class="first">尺码：</div>
							<div>S</div>
							<div>M</div>
							<div>L</div>
							<div>XL</div>
							<div>XXL</div>			
			`);
		}else if(SID<=88){
			$(".size-footage").html(`
				<div class="first">尺码：</div>
							<div>35</div>
							<div>36</div>
							<div>37</div>
							<div>38</div>			
			`);
		}else if(SID<=104){
			$(".size-footage").html(`
				<div class="first">尺码：</div>
							<div>39</div>
							<div>40</div>			
							<div>41</div>			
							<div>42</div>			
							<div>43</div>			
			`);
		}else if(SID>104){
			$(".size-footage").html(`
				<div class="first">尺码：</div>
							<div>S</div>
							<div>M</div>
							<div>L</div>
							<div>XL</div>
							<div>XXL</div>			
			`);
			$("[data-data=setTime]").html(`
				<div class="setTime">
					<span>距离结束还有：</span><b class="b1">01</b><span>天</span><b class="b2">21</b><span>小时</span ><b class="b3">56</b><span>分</span><b class="b4">34</b><span>秒</span>
			    </div>	`
			)		
			if($("[data-data=setTime] div").hasClass("setTime")){
				setInterval(()=>{
				var s=parseInt($(".b4").html());
					s--;
					//console.log(s);
					$(".b4").html(s)
					if(s<0){
						$(".b4").html(`59`);
						var s1=parseInt($(".b3").html());
						s1--;
						$(".b3").html(s1);
						if(s1<0){
							$(".b3").html(`59`);
							var s2=parseInt($(".b2").html());
							s2--;
							if(s1<0){
								$(".b2").html(`24`);
							}
						}
					}
				},1000)
			}
		}

		//随机加载热卖推荐 和 本地商品
		const  list_subd=["毛衣外套","一字领","连衣裙","美女裤","棉衣棉服","T恤","牛仔裤","休闲裤"];
		list_id=parseInt(Math.random()*7);
		list_uid=parseInt(Math.random()*7);
		if(list_id==list_uid){
			list_uid=parseInt(Math.random()*7);
		}
		$.ajax({
			type:'GET',
			url:'../data/subdivision.php',
			data:{subdivision:list_subd[list_id]},
			success:function(data){
				var html='';
				var j=parseInt(Math.random()*5);
				for(var i=j;i<j+3;i++){
					html+=`
				<li>
					<a href="javacript:;">
					<img src="../${data.data[i].img}" alt="">
					</a>
					<div>￥${data.data[i].price_fall}</div>
				</li>	
					`
				}
				$("[data-shop=shop]").append(html);
			}
		}).then(()=>{
			jumpTo($("[data-shop=shop] img"));
		})
		$.ajax({
			type:'GET',
			url:'../data/subdivision.php',
			data:{subdivision:list_subd[list_uid]},
			success:function(data){
				var html='';
				var j=parseInt(Math.random()*5);
				for(var i=j;i<j+3;i++){
					html+=`
				<li>
					<img src="../${data.data[i].img}" alt="">
					<p>${data.data[i].title}</p>
					<p>￥${data.data[i].price_fall}</p>
				</li>	
					`
				}
				$("[data-shop=add]").append(html);
			}
		}).then(()=>{
			jumpTo($("[data-shop=add] img"));
		})
		//点击图片跳转到详情页
		function jumpTo(url){
			url.click((e)=>{
				$("img").removeClass("add-img");
				$(e.target).addClass("add-img");
				//console.log(document.querySelector(".add-img").src);
				//获取图片路径需用原生JS
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

		//大图下面小图的移入事件
		$("#detail .left .bottom-pic img:eq(0)").css("z-index",100);
		$("#detail .left  ul li").on("mouseover","img",(e)=>{
			var  i= $(e.target).parent().index();
			//console.log(i);
			$("#detail .left .color-pic").css("display","none");
			$("#detail .left .bottom-pic").css("display","block");
			$("#detail .left .bottom-pic img").css("z-index",1);
			$("#detail .left .bottom-pic img:eq("+i+")").css("z-index",100);
			$("#detail .left li").css("border-bottom","");
			$(e.target).parent().css("border-bottom","2px solid #EF2F23");
		})
		let shop_color=[];
		let shop_img=[];
		if($("#detail div.center .choose li").length==1){
			$("#detail .buy li img").addClass("border")
			shop_color[0]=document.querySelector("#detail .buy li img").title;
			shop_img[0]=document.querySelector("#detail .buy li img").src;
		}else{
		//点击颜色图片出现边框。表示已勾选
			$("#detail  ul ul li ").on("click","img",(e)=>{
				let i=$(e.target).parent().index();
				//console.log(11111);
				//console.log(i);
				//为图片增加边框
				$("#detail .buy li img").removeClass("border");
				$("#detail .confirm>li:eq("+i+") img").addClass("border");
				$("#detail .choose>li:eq("+i+") img").addClass("border");
				// 点击小图左边出现对应的大图
				$("#detail .left .color-pic").css("display","block");
				$("#detail .left .bottom-pic").css("display","none");
				$("#detail .left .color-pic img").css("z-index",1);
				$("#detail .left .color-pic img:eq("+i+")").css("z-index",100);

				shop_color[0]=document.querySelector("#detail img.border").title;
				shop_img[0]=document.querySelector("#detail img.border").src;
				//如果尺码已勾选,则确定按钮出现
				if($("#detail .footage div").hasClass("border")==true){
					$("[data-btn=three]").css("display","block");
				}
			})
		}
		let shop_size=[];
		//点击尺寸出现边框。表示已勾选
		$("#detail .size-footage ").on("click","div",(e)=>{
			let i=$(e.target).index();
			//console.log($("#detail .buy>ul>li:eq(1) "));
		
			$("#detail li.buy   div").removeClass("border");
			//$(e.target).addClass("border");
			$("#detail li.buy .footage  div:eq("+i+")").addClass("border");
			$("#detail li.buy .size  div:eq("+i+")").addClass("border");
			
			shop_size[0]=$(e.target).html();

			//如果颜色已勾选,则确定按钮出现
			if($("#detail .confirm img").hasClass("border")==true ){
				$("[data-btn=three]").css("display","block");
			}
		})

		//把客户选的商品添加到数据库中
		function addUserShop(){
			let id=SID;
			let uname=UNAME;
			let size=shop_size[0];
			let img="../image/"+shop_img[0].split("image/")[1];
			let color=shop_color[0];
			let title=$(".shop_title").html();
			let price=$(".price_fall").html().slice(1);
			$.ajax({
				type:'GET',
				url:'../data/cart_insert.php',
				data:{shop_name:uname,shop_id:id,shop_color:color,shop_img:img,shop_size:size,shop_title:title,shop_price:price},
				success:function(data){
					if(data==0){
						location="../html/cart.html";
					}else{
						location="../html/404.html";
					}
				}
			})
		}
		function addShop(){
			let id=SID;
			let uname=UNAME;
			let size=shop_size[0];
			let img="../image/"+shop_img[0].split("image/")[1];
			let color=shop_color[0];
			let title=$(".shop_title").html();
			let price=$(".price_fall").html().slice(1);
			$.ajax({
				type:'GET',
				url:'../data/cart_insert.php',
				data:{shop_name:uname,shop_id:id,shop_color:color,shop_img:img,shop_size:size,shop_title:title,shop_price:price},
				success:function(data){
					if(data==0){
						alert("已成功添加购物车");
						location="../html/detail.html";
					}else{
						location="../html/404.html";
					}
				}
			})
		}

		//立即购买点击事件
		$("[data-btn=one]").click(()=>{
			if($("#detail .size div").hasClass("border")==true && $("#detail .choose img").hasClass("border")==true ){
				//如果颜色,尺码全勾选，则判断用户是否登录	
				if(UNAME){
					//window.location="../html/cart.html";
					//console.log("进入购物车");
					addUserShop();
				}else{
					$("#login").css("display","block");
				}	
			}else{
				$("#detail .buy>ul:eq(0)").css("display","none");
				$("#detail .buy>ul:eq(1)").css("display","block");
				$("[data-btn=three]").css("display","none");
				$("#detail .buy>ul:eq(1)").css("border","1px solid #ef2f23");
				$("[data-btn=three]").html("立即购买");
			}
		});
		
		//× 号点击事件
		$("#detail ul ul p span").click(()=>{
			$("#detail .buy>ul:eq(1)").css("display","none");
			$("#detail .buy>ul:eq(0)").css("display","block");
		});
		
		//购买数量的 + -   点击事件
		
		$("#detail li.buy .count").on("click","div",(e)=>{
			var count= $("#detail li.buy .count div:eq(2)").html();
			let  current=$("#detail li.buy .count div:nth-child(3)");
			//console.log(count);
			if($(e.target).html()=="+"){
				count++;
				current.html(count)
			}
			if($(e.target).html()=="-"){
				if(count<=1){
					current.html(1);
				}else{
					count--;
					current.html(count);
				}
			}
		})
		

		//加入购物车  点击事件
		$("[data-btn=two]").click(()=>{
			if($("#detail .size div").hasClass("border")==true && $("#detail .choose img").hasClass("border")==true ){
				//如果颜色,尺码全勾选，则判断用户是否登录	
				if(UNAME){
					//提示用户添加成功返回当前页面
					//console.log("进入购物车");
					addShop();
				}else{
					$("#login").css("display","block");
				}
			}else{
				$("#detail .buy>ul:eq(0)").css("display","none");
				$("#detail .buy>ul:eq(1)").css("display","block");
				$("[data-btn=three]").css("display","none");
				$("#detail .buy>ul:eq(1)").css("border","1px solid #ef2f23");
				$("[data-btn=three]").html("确定添加");
			}
		})



		$("[data-btn=three]").click(()=>{
			if($("[data-btn=three]").html()=="立即购买"){
				if(UNAME){
					addUserShop();
					//console.log("进入购物车");
				}else{
					$("#login").css("display","block");
				}
			}
			if($("[data-btn=three]").html()=="确定添加"){
				if(UNAME){
					//提示用户添加成功返回当前页面
					//console.log("进入购物车");
					addShop();
				}else{
					$("#login").css("display","block");
				}
			}
		})




		//shopp-introd   事件
		//console.log($("#shopp-introd").offset().top);
		//固定定位
		$(window).scroll(function(){
			if(document.body.scrollTop>=$("#shopp-introd").offset().top){
				$("#shopp-introd .left div").css({"position":"fixed","top":0,"width":214});
				$("[data-title=top]").css({"position":"fixed","top":0,"left": 263});
				$("#shopp-introd .right").css({"position":"fixed","top":0,"right":83});
				$("[data-title=top] div:eq(4)").css("display","block");
				$("#shopp-detail").css("padding-top",45);
			}else{
				$("#shopp-introd .left div").css({"position":"","top":'',"width":''});
				$("[data-title=top]").css({"position":"","top":'',"left": ''});
				$("#shopp-introd .right").css({"position":"","top":'',"right":''});
				$("[data-title=top] div:eq(4)").css("display","none");
				$("#shopp-detail").css("padding-top",0);
			}	
		})
		
		
	}) 
	