	function  text(){
		//用AJAX判断输入文本框里是否为空，为空提示，不为空，不提示
		var uname=$("uname").value;
		if(uname==""){
			$("unam").innerHTML="不能为空";
		}else if(uname==uname){
			$("unam").innerHTML="";
		} 		  
	}
	function password(){
		//用AJAX判断输入密码框里是否为空，为空提示，不为空，不提示
		var upwd=$("upwd").value;
		if(upwd==""){
			$("upw").innerHTML="不能为空";
		}else if(upwd==upwd){
			$("upw").innerHTML="";
		}
	}
	function find(){ 
		if($("uname").value==""||$("upwd").value==""){
			if($("uname").value==""){
				$("unam").innerHTML="不能为空";
			}
			if($("upwd").value==""){
				$("upw").innerHTML="不能为空";
			}
			if($("uname").value==""&&$("upwd").value==""){
				$("unam").innerHTML="不能为空";
				$("upw").innerHTML="不能为空";
			}
		}else{
			var xhr=getXhr();
			//是请求密码。最好用post请求方式
			xhr.open("post","../data/login.php",true);
			xhr.onreadystatechange=function(){
				if(xhr.readyState==4 && xhr.status==200){
					var resText = xhr.responseText;
					//判断输入内容是否与数据库的一样
					if(resText=="0"){
						//将用户名保存下来
						let uname=$("uname").value;
						sessionStorage.setItem("uname",uname);
						//通过按钮跳转到页面上
						window.location="../init.html";									    
					}else{
						$("error").innerHTML="错误";
					}
				}
			}
			//用post发送请求，在发送请求之前，需要将表头改掉
			xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
			var uname=$("uname").value;
			var upwd=$("upwd").value;
			var msg="uname="+uname+"&upwd="+upwd;
			//请求方式要放在xhr.send()中
			xhr.send(msg);
		}
	}



	