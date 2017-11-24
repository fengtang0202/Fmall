
	$("[data-login=find]").click(()=>{ 
		let uname=$("#uname").val();
		let upwd=$("#upwd").val();
		$.ajax({
			type:'GET',
			url:'../data/login.php',
			data:{uname:uname,upwd:upwd},
			success:function(data){
				console.log(data);
				if(data=="0"){
					//将用户名保存下来
					let uname=$("#uname").val();
					sessionStorage.setItem("uname",uname);
					console.log(uname);
					//通过按钮跳转到页面上
					location="../html/detail.html";					
				}else{
					$("#unam").html("***用户名或密码错误");
				}
			}
		})
	});