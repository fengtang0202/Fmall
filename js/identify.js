	

    var yzm=$("#yzm");
    var yzmInput=$(".yzm input");
    var ctx=yzm[0].getContext("2d");
    //验证码canvas
    //定义画布样式
    function valiCode(str){
        //参数：
        let w = yzm.width();
        let h = yzm.height();
        ctx.width=w;
        ctx.height=h;
        //生成随机数
        function rn(min,max){
            return Math.floor(Math.random()*(max-min)+min);
        }
        //生成随机颜色
        function rc(min,max){
            let r=rn(min,max);
            let g=rn(min,max);
            let b=rn(min,max);
            return `rgb(${r},${g},${b})`;
        }
        //背景绘制
        ctx.fillStyle=rc(200,250);
        ctx.fillRect(0,0,w,h);
        //文字绘制
        ctx.font = "30px SimHei";
        ctx.fillStyle = rc(80,180);
        ctx.textBaseline = "top";
        ctx.fillText(str,0,0);
        //干扰线绘制
        for(let i=0;i<4;i++){
            ctx.beginPath();
            ctx.strokeStyle=rc(0,255);
            ctx.moveTo(rn(0,w),rn(0,h));
            ctx.lineTo(rn(0,w),rn(0,h));
            ctx.stroke();
        }
        //干扰点绘制
        for(let i=0;i<4;i++){
            ctx.beginPath();
            ctx.fillStyle=rc(0,255);
            ctx.arc(rn(0,w),rn(0,h),1,0,2*Math.PI);
            ctx.fill();
        }
    }
    valiCode();
	var random_y=[];
    //ajax请求随机字符
    function makeText(){
        $.ajax({
            type:"GET",
            url:"../data/identify.php",
            data:"",
            success:data=>{
                str=data;
                valiCode(str);
				random_y[0]=str;
            }
        })
    }
    $(()=>{
        makeText()
    })
    yzm.click(()=>{
        makeText();
    });
	function y_yzm(){
		var input=$("#input-yzm").val();
			if(input.toUpperCase() ==random_y[0].toUpperCase() ){
				$("#change").html("正确");
			}else{
				$("#change").html("验证码不一样");
			}
	}
	