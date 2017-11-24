	
        //	验证用户密码跟确认密码是否一样，并提示 
		function y_upwd(){
			var upwd=$("upwd").value;
			var reg=/^\w{6,15}$/;
			if(upwd==""){
				$("show-upwd").innerHTML="不能为空";
				$("show-upwd").style.display="block";
			}
			if(reg.test(upwd)==true){
				$("show-upwd").innerHTML="通过";
				$("show-upwd").style.display="none";
			}else{
				$("show-upwd").innerHTML="用户名长度为6~15位；包含数字字母";
				$("show-upwd").style.display="block";
			}
		}
		//验证密码格式
	    function y_cpwd(){
			var upwd=$("upwd").value;
			var cpwd=$("cpwd").value;
			//使用正则表达式规定用户密码的格式 
			var reg=/^\w{6,15}$/;
			if(reg.test(upwd)==true){			
				if(upwd==cpwd){
					$("show-upwd").innerHTML="通过";
					$("show-pwd").innerHTML="通过";
					$("show-upwd").style.display="none";
					$("show-pwd").style.display="none";
				}else{
					$("show-pwd").innerHTML="与密码不一样";	
					$("show-pwd").style.display="block";
				}
			}else{
				$("show-pwd").innerHTML="用户密码不通过";
				$("show-pwd").style.display="block";
			}
		}
	
		//验证邮箱是否正确
		function y_email(){
			console.log(111);
			var email=$("email").value;
			var atpos=email.indexOf("@");
			var dotpos=email.lastIndexOf(".");
			if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length){
				$("show-email").innerHTML="邮箱格式不正确";
				$("show-email").style.display="block";
			}else{
				$("show-email").innerHTML="正确";
				$("show-email").style.display="none";
			}
		}
		//用户名验证
		
		function y_user(){
			var user_name=$("user_name").value;
			var reg=/^[\u4e00-\u9fa5]{2,6}$/; 
			if(reg.test(user_name)==true){
				$("show-user").innerHTML="正确";
				$("show-user").style.display="none";
			}else{
				$("show-user").innerHTML="请输入2~6个汉字"
				$("show-user").style.display="block";
			}
		}



        //	验证用户是否存在，并提示  
		function  y_uname(){
		    var xhr=getXhr();
			var uname=$("uname").value;
			//使用正则表达式规定用户的格式
			var reg=/^\w{6,15}$/;
			if(reg.test(uname)==true){
				xhr.open("get","../data/check-name.php?uname="+uname,true);
				xhr.onreadystatechange=function(){
					if(xhr.readyState==4 && xhr.status==200){
						if(xhr.responseText=="0"){
							$("una").innerHTML="通过";
							$("una").style.display="none";
						}else{
							$("una").innerHTML="用户名已存在";
							$("una").style.display="block";
						}
					}
				}
				xhr.send(null);
			}
	        else
            $("una").innerHTML="用户名长度为6~15位；包含数字字母";  
			$("una").style.display="block";
		}
        
		
		//	验证手机是否存在，并提示  
		function  y_phone(){
		    var xhr=getXhr();
			var phone=$("phone").value;
			//使用正则表达式规定用户的格式
			var reg=/^(\+86|0086)?\s*1[34578]\d{9}$/;
			if(reg.test(phone)==true){
				xhr.open("get","../data/check-phone.php?phone="+phone,true);
				xhr.onreadystatechange=function(){
					if(xhr.readyState==4 && xhr.status==200){
						console.log(xhr.responseText);
						if(xhr.responseText=="0"){
							$("show-phone").innerHTML="通过";
							$("show-phone").style.display="none";
						}else{
							$("show-phone").innerHTML="手机号已存在";
							$("show-phone").style.display="block";
						}
					}
				}
				xhr.send(null);
			}else{
				$("show-phone").innerHTML="请输入正确手机号"; 
				$("show-phone").style.display="block";
			}
		}
       
		
		
		
		
		
		function  register(){
		    var xhr=getXhr();
            var uname=$("uname").value;
            var upwd=$("upwd").value;
            var email=$("email").value;		
            var phone=$("phone").value;
            var gender=$("gender").value;
            var user_name=$("user_name").value;
			var url="../data/register.php";
            xhr.open("post",url,true);
			xhr.onreadystatechange=function(){
				if(xhr.readyState==4 && xhr.status==200){
					var resText=xhr.responseText;
					if(resText=="0"){
					    //$("m").innerHTML="成功";
						//$("una").innerHTML==="通过" && $("show-phone").innerHTML="通过" && $("show-upwd").innerHTML="通过"&&$("show-pwd").innerHTML="通过";
						if($("una").innerHTML==="通过" && $("show-phone").innerHTML=="通过"&& $("show-upwd").innerHTML=="通过"&&$("show-pwd").innerHTML=="通过"&&$("show-email").innerHTML=="正确"&&$("show-email").innerHTML=="正确")
						{
							window.location.href="../html/login.html";
						}else{
							if(upwd==""){
								$("show-upwd").innerHTML="不能为空";
								$("show-upwd").style.display="block";
							}
							if(uname==""){
								$("una").innerHTML="不能为空";
								$("una").style.display="block";
							}
							if(phone==""){
								$("show-phone").innerHTML="不能为空";
								$("show-phone").style.display="block";
							}
							if(email==""){
								$("show-email").innerHTML="不能为空";
								$("show-email").style.display="block";
							}
							if(user_name==""){
								$("show-user").innerHTML="不能为空";
								$("show-user").style.display="block";
							}
							
						}
					}
				}
			}
			xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
			var msg="uname="+uname+"&upwd="+upwd+"&email="+email+"&phone="+phone+"&gender="+gender+"&user_name="+user_name;
			xhr.send(msg);
		}   
	