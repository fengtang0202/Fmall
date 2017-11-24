/**
*此文件用于头部搜索框
*/

$((()=>{
	$("[data-data=button]").click(()=>{
		console.log(111);
	    var input=$.trim($("[data-data=search]").val());
		console.log(input);
		if(input!=""){
			$.ajax({
				type:'GET',
				url:'data/search.php',
				data:{kw:input},
				success:function(data){
					if(data!=404){
						console.log(data);
					var uname=data[0].subdivision;
					console.log(uname);
					sessionStorage.setItem("subdivision",uname);
					location="html/subdivision.html";
					}else{
						location="html/404.html"
					}
				}
			})
		}
	})
	$("[data-data=search]").keyup(function(){
		var input=$.trim($(this).val());
		//console.log(input);
		//console.log(111);
		if(input!=''){
			$.ajax({
				type:'GET',
				url:'data/search.php',
				data:{kw:`${input}`},
				success:function(data){
					//console.log(data);
					if(data!=404){
						var html='';
						for(var p of data){
							html+=`
							<li>
								<a>${p.description}</a>
								<a>${p.classify}</a>
								<a>${p.subdivision}</a>
								<a>${p.title}</a>
								<a type="display:none">${p.sid}</a>
							</li>	
							`
						}
						$("[data-data=list]").html(html);
						
					}
				}
			}).then(()=>{
				$("ul.ul").css("display","none");
				$("ul.list").css("display","block");
				id();
			})
		}else{
			$("ul.list").css("display","none");	
		}
	})
	function id(){
		$("[data-data=list] li a").click((e)=>{
			console.log(111);
			var id=$(e.target).parent().children().last().html();
			sessionStorage.setItem("sid",id);
			location="html/detail.html";
		})
	}
})());