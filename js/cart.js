
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
			console.log(1111);
		});
			console.log(1111);
	}
	
	$(".headerTopRight").on("mouseover","li",function(){
		$(this).children('ul').css("display","block");
	}).on("mouseout","li",function(){
		$(this).children('ul').css("display","none");
	});
    //全局的checkbox选中和未选中的样式
    var $allCheckbox = $('input[type="checkbox"]'),     //全局的全部checkbox
        $wholeChexbox = $('.whole_check'),
        $cartBox = $('.cartBox'),                       //每个商铺盒子
        $shopCheckbox = $('.shopChoice'),               //每个商铺的checkbox
        $sonCheckBox = $('.son_check');                 //每个商铺下的商品的checkbox
    $allCheckbox.click(function () {
        if ($(this).is(':checked')) {
            $(this).next('label').addClass('mark');
        } else {
            $(this).next('label').removeClass('mark')
        }
    });

	//根据ID找购物车的商品对应的信息
if(uname){
	console.log(11122);
	$.ajax({
		type:'get',
		url:'../data/cart.php',
		data:{shop_name:uname},
		success:function(data){
			console.log(data);
			var html='';
			for(var p of data){
				var data=new Date;
				var datas=data.getTime()+parseInt(Math.random()*9999999+1);
			var html=`
				<ul class="order_lists">
					<li class="list_chk list_div">
						<div></div>
					</li>
					<li class="list_con">
						<div class="list_img">
							<a href="javascript:;">
								<img src="${p.shop_img}" alt="">
							</a>
						</div>
						<div class="list_text">
							<a href="javascript:;">${p.shop_title}</a>
							<span style="display:none">${p.shop_id}</span>
						</div>
					</li>
					<li class="list_info">
						<p>颜色：${p.shop_color}</p>
						<p>尺寸：${p.shop_size}</p>
					</li>
					<li class="list_price">
						<p class="price">￥${p.shop_price}</p>
					</li>
					<li class="list_amount">
						<div class="amount_box">
							<a href="javascript:;" class="reduce reSty">-</a>
							<input type="text" value="1" class="sum">
							<a href="javascript:;" class="plus">+</a>
						</div>
					</li>
					<li class="list_sum">
						<p class="sum_price">￥${p.shop_price}</p>
					</li>
					<li class="list_op">
						<p class="del">
							<a href="javascript:;" class="delBtn">
								移除商品
							</a>
							<span style="display:none">${p.id}</span>
						</p>
					</li>
				</ul>	
				`
				$(".order_content").append(html);
			}

		},
		error:function(){
			//location="../html/404.html";
		}
	}).then(()=>{
		//默认购物车样式
		$(".order_content ul:eq(0) .list_chk div").addClass("mark");
		$(".piece_num").html($(".order_content ul:eq(0) input").val());
		$(".total_text").html($(".order_content ul:eq(0) .sum_price").html());
		
		
		$(".list_text a").click((e)=>{
			let id=$(e.target).next().html();
			sessionStorage.setItem("sid",id);
			location="../html/detail.html"
		})
		
		//点击全部，所有商品都勾选
		$(".all").click(()=>{
			$(".all").toggleClass("mark");
			if($(".all").hasClass("mark")){
				$(".list_div div").addClass("mark");
				var count=$(".order_content").children().length;
				//console.log(count);
				var sum=0;
				$(".sum_price").each((i,elem)=>{
					
					sum+=parseFloat($(elem).html().slice(1));
				})
				$(".piece_num").html(count);
				$(".total_text").html("￥"+sum.toFixed(2));
			}else{
				$(".list_div div").removeClass("mark");
				$(".piece_num").html(0);
				$(".total_text").html("￥0.00");
			}
		})
		
		function sumEach(){
			var count=$(".order_content").children().length-1;
			var sum=0;
			var all_count=0;
			$(".list_div div.mark").each((i,elem)=>{
				if(i==count){
					$(".all").addClass("mark");
				}
				if(i!=count){
					$(".all").removeClass("mark");
				}
				var price=$(elem).parent().siblings('.list_sum').children().html();
				sum+=parseFloat(price.slice(1));
				all_count+=parseInt($(elem).parent().siblings('.list_amount').children().children().eq(1).val());
				$(".piece_num").html(all_count);
			})
			$(".total_text").html("￥"+sum.toFixed(2));
		}

		//勾选商品，总额显示
		$(".list_div div").click((e)=>{
			$(e.target).toggleClass("mark");
			//console.log(count);
			sumEach();
			if(!$(".list_div div").hasClass("mark")){
				$(".piece_num").html(0);
			}
		})
		//
		$(".amount_box").on("click","a",function(){
			var count=$(this).siblings('input').val();
			//console.log(count);
			if($(this).html()=="-"){
				if(count>1){
					--count;
					$(this).siblings().val(count);
				}else{
					$(this).siblings().val(1);
				}
			}
			if($(this).html()=="+"){
				++count;
				$(this).siblings().val(count)
			}
			var price=$(this).parent().parent().prev().children().html().slice(1);
			var sum=price*count;
			$(this).parent().parent().next().children().html("￥"+sum.toFixed(2))
			sumEach();
		})
	
		//移除商品
		let shop_uid=[];
		var $order_lists = null;
		var $order_content = '';
		$('.delBtn').click(function(){
			$order_lists = $(this).parents('.order_lists');
			$order_content = $order_lists.parents('.order_content');
			$('.model_bg').fadeIn(300);
			$('.my_model').fadeIn(300);
			shop_uid[0]=$(this).next().html();
			console.log($(this).next().html());
			//console.log(shop_uid[0]);
		});

		//关闭模态框
		$('.closeModel').click(function () {
			closeM();
		});
		$('.dialog-close').click(function () {
			closeM();
		});
		function closeM() {
			$('.model_bg').fadeOut(300);
			$('.my_model').fadeOut(300);
		}
		//确定按钮，移除商品
		$('.dialog-sure').click(function () {
			console.log(shop_uid);
			for(var p of shop_uid){
				$.ajax({
					type:'GET',
					url:'../data/car-delete.php',
					data:{id:p},
					success:function(data){
						console.log(data.code);
						if(data.code==1){
							console.log(1111);
							$order_lists.remove();
							if($order_content.html().trim() == null || $order_content.html().trim().length == 0){
								$order_content.parents('.cartBox').remove();
							}
							closeM();
							$sonCheckBox = $('.son_check');
							sumEach();
						}
					}
				})
			}
		})

	})
};
	//加载页面尾部
	$("footer").load("../html/footer.html");