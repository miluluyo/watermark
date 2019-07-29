<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>鹿遥在线水印</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="鹿遥在线水印">
	<link rel="icon" type="image/x-icon" href="<%=basePath%>dist/images/i/favicon.ico">
	<link rel="stylesheet" href="<%=basePath%>dist/css/nec.css">
	<link href="<%=basePath%>dist/css/monokai_sublime.min.css" rel="stylesheet">
	<link rel="stylesheet" href="<%=basePath%>dist/css/main-color.css" id="colorcss">
    <link rel="stylesheet" href="<%=basePath%>dist/css/jquery.minicolors.css">
<style type="text/css">
.btn{display: inline-block;padding: 5px 12px;margin-bottom: 0;font-size: 13px;font-weight: 400;line-height: 1.53846154;text-align: center;white-space: nowrap;vertical-align: middle;cursor: pointer;-webkit-user-select: none;-moz-user-select: none;-ms-user-select: none;user-select: none;border: 1px solid transparent;border-radius: 4px;-webkit-transition: .4s cubic-bezier(.175,.885,.32,1);-o-transition: .4s cubic-bezier(.175,.885,.32,1);transition: .4s cubic-bezier(.175,.885,.32,1);-webkit-transition-property: background,border,outline,opacity,-webkit-box-shadow;-o-transition-property: background,border,box-shadow,outline,opacity;transition-property: background,border,outline,opacity,-webkit-box-shadow;transition-property: background,border,box-shadow,outline,opacity;transition-property: background,border,box-shadow,outline,opacity,-webkit-box-shadow;border:none;}
.form-control{display: block;width: 100%;height: 32px;padding: 5px 8px;font-size: 13px;line-height: 1.53846154;color: #222;vertical-align: middle;background-color: #fff;border: 1px solid #ccc;border-radius: 4px;-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);box-shadow: inset 0 1px 1px rgba(0,0,0,.075);-webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;-o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;}
/* #pic{max-height: 400px;min-height:400px;} */
#pic{max-width:100%}
.upload_img{color:#fff;background:#37bc9b;margin:20px;}
.style_table{width: 1000px;margin: 50px auto;text-align: center;}
.style_table td{line-height: 40px;height:40px;}
canvas{display: none;}
.upload_water{color:#fff;background:#37bc9b;}
.save_water{color:#fff;background:#0294a7;margin:20px;}
.wa_text{display: inline-block;}
</style>
</head>
<body>
	<div class="g-hd f-usn">
        <div class="g-in">
            <div class="m-head">
                <h1><a href="https://www.cnblogs.com/miluluyo/" target="_black" class="deer_away_logo">鹿遥水印区</a></h1>
            </div>
        </div>
    </div>
	<div class="g-nv f-usn">
        <div class="g-in">
            <ul class="m-nav">
                <li class="first crt"><a  href="https://www.cnblogs.com/miluluyo/" target="_black">鹿遥在线水印</a><i></i></li>
            </ul>
        </div>
        <div class="g-bd" style="text-align: center;">
            <p style="color:#F9B552">上传图片后点击生成水印即可生效，下载请点击下载水印图片</p>
            <button class="btn upload_img">上传图片</button><br>
            <input type="file" class="upload_file" style="display: none">
            <div style="width:100%;">
	            <img id="pic" src="" >
	            <canvas id="myCanvas" style="border:2px solid #dddddd;"></canvas>
            </div>
            <div class="set_box">
            	<table class="style_table">
            		<tr>
            			<td>水印文字</td>
            			<td>
            				<input class="form-control font_text" value="鹿遥水印">
            			</td>
            			<td>字体</td>
            			<td>
            				<select class="form-control font_family">
            					<option value="Microsoft YaHei">微软雅黑</option>
            					<option value="SimHei">黑体</option>
            					<option value="SimSun">宋体 </option>
            					<option value="KaiTi">楷体</option>
            					<option value="YouYuan">幼圆</option>
            					<option value="KaiTi_GB2312">楷体_GB2312</option>
            					<option value="FangSong_GB2312">仿宋_GB2312</option>
            				</select>
            			</td>
            			<td>字体大小</td>
            			<td>
            				<select class="form-control font_size">
            					<option value="12">12</option>
            					<option value="24">24</option>
            					<option value="35">35</option>
            					<option value="40">40</option>
            					<option value="45">45</option>
            					<option value="50">50</option>
            					<option value="55">55</option>
            					<option value="60">60</option>
            					<option value="65">65</option>
            					<option value="70">70</option>
            					<option value="75">75</option>
            					<option value="80" selected="selected">80</option>
            					<option value="85">85</option>
            					<option value="90">90</option>
            					<option value="95">95</option>
            					<option value="100">100</option>
            					<option value="105">105</option>
            					<option value="110">110</option>
            					<option value="115">115</option>
            					<option value="120">120</option>
            					<option value="125">125</option>
            					<option value="130">130</option>
            					<option value="135">135</option>
            					<option value="140">140</option>
            					<option value="145">145</option>
            					<option value="150">150</option>
            				</select>
            			</td>
            		</tr>
            		<tr>
            			<td>字体颜色</td>
            			<td>
            				<input class="form-control changecolor font_color" value="#000000">
            			</td>
            			<td>水印位置</td>
            			<td>
            				<select class="form-control font_place">
            					<option value="rxleft_top">右斜左上角</option>
            					<option value="rxright_top">右斜右上角</option>
            					<option value="rxcenter" selected="selected">右斜居中</option>
            					<option value="rxleft_bottom">右斜左下角</option>
            					<option value="rxright_bottom">右斜右下角</option>
            					<option value="left_top">正左上角</option>
            					<option value="right_top">正右上角</option>
            					<option value="center">正居中</option>
            					<option value="left_bottom">正左下角</option>
            					<option value="right_bottom">正右下角</option>
            					
            				</select>
            			</td>
            			<td>透明度</td>
            			<td>
            				<select class="form-control font_clarity">
            					<option value="1.0">100%</option>
            					<option value="0.9">90%</option>
            					<option value="0.8">80%</option>
            					<option value="0.7">70%</option>
            					<option value="0.6">60%</option>
            					<option value="0.5">50%</option>
            					<option value="0.4">40%</option>
            					<option value="0.3">30%</option>
            					<option value="0.2" selected="selected">20%</option>
            					<option value="0.1">10%</option>
            					<option value="0.05">5%</option>
            				</select>
            			</td>
            		</tr>
            		<tr>
            			<td colspan="6">
            				<button class="btn upload_water">生成水印</button><br>
            			</td>
            		</tr>
            		<tr>
            			<td colspan="6">
            				<button class="btn save_water">下载水印图片</button><br>
            			</td>
            		</tr>
            	</table>
            </div>
        </div>
    	
	    <div class="g-ft">
	        <div class="g-in">
	            <div class="m-ft">
	                <p><a href="https://www.cnblogs.com/miluluyo/" target="_black">麋鹿鲁哟</a>|<a  href="https://www.cnblogs.com/miluluyo/" target="_black">大道至简，知易行难。</a></p>
	                <p><a href="https://www.cnblogs.com/miluluyo/" target="_black">❤今天我这儿的太阳，正好适合晒钙 你呢❤</a></p>
	                <p><a href="https://www.cnblogs.com/miluluyo/" target="_black">Copyright &copy; 2019-2020 Elk lu yo. All Rights Reserved. </a></p>
	            </div>
	        </div>
	    </div>
    </div>
    <span class="wa_text"></span>
</body>
<script type="text/javascript" src="<%=basePath%>dist/js/jquery.min.js"></script>
<script src="<%=basePath%>dist/js/jquery.minicolors.js"></script>
<script type="text/javascript" src="<%=basePath%>dist/js/welcome.js"></script>
<script type="text/javascript">
$(".upload_img").click(function(){
	$(".upload_file").click();
})
$(".upload_file").change(function(){
	clearCanvas()
	$("canvas").hide()
	$("#pic").attr("style","")
	var r= new FileReader();
	f=$(".upload_file")[0].files[0];
  	r.readAsDataURL(f);
  	r.onload=function (e) {
  	  	$("#pic").attr("src",this.result)
  	};
})
$(".upload_water").click(function(){
	execute()
})
function execute(){
	clearCanvas()
	refresh_watermark()
}
function clearCanvas()  {  
    var c=document.getElementById("myCanvas");  
    var cxt=c.getContext("2d");  
    cxt.clearRect(0,0,c.width,c.height);  
}  
function refresh_watermark(){
	var image = document.getElementById('pic');
	   /*  image.onload = function(){ */
	  	  	var wi = $("#pic").width();
	  	  	var he = $("#pic").height();
  	  		$("#pic").css("width","left:-"+wi+"px")
  	  		$("#pic").css("height","top:-"+he+"px")
  	  		$("#pic").attr("style","left:-"+wi+"px;top:-"+he+"px;position:absolute")
	  	  	$("canvas").attr("width",wi+"px")
	  	  	$("canvas").attr("height",he+"px")
	  	  	
	  	  	var font_text = $(".font_text").val()
	  	  	var font_color = $(".font_color").val()
	  	  	var font_size = $(".font_size option:selected").val()
	  	  	var font_family = $(".font_family").val()
	  	  	var font_place = $(".font_place option:selected").val()
	  	  	var font_clarity = $(".font_clarity option:selected").val()
	  	  	var rgb = colorRgb(font_color)
	  	  	
	  	  	var rgba = rgb.substring(0,rgb.length-1)
	  	  	rgba = rgba+","+font_clarity+")"
	  	  	
	    	var canvas = document.getElementById("myCanvas");
			var ctx = canvas.getContext("2d");
		    var w = image.width,
		        h = image.height;   
		    ctx.drawImage(image,0,0,w,h);
			ctx.stroke();
		    var hanzi = canvas.getContext("2d");
		    hanzi.fillStyle = rgba;   // 文字填充颜色
	        hanzi.font = font_size+'px '+font_family;/* Adobe Ming Std */
	       // hanzi.setTransform(1,0.5,-0.5,1,30,10);
	        var ww = $(".wa_text").width();
	        var hh = $(".wa_text").height();
	        $(".wa_text").text(font_text)
	        $(".wa_text").attr("style","font-size:"+font_size+"px;font_family:"+font_family+";position:absolute;left:-"+ww+"px;top:-"+Number(hh+200)+"px")
	       
	        
	        
	        var ww = $(".wa_text").width();
	        var hh = $(".wa_text").height();
	        if(font_place=="rxleft_top"){
	        	hanzi.setTransform(1,0.5,-0.5,1,ww/4,hh/4);
	        	hanzi.fillText(font_text,10,Number(hh));
	        }else if(font_place=="rxright_top"){
	        	hanzi.setTransform(1,0.5,-0.5,1,-ww/2+ww/4,-h/2-hh*2);
	        	//console.log(-h/2)
	        	hanzi.fillText(font_text,Number(w-10-ww),Number(hh));
	        }else if(font_place=="rxcenter"){
	        	//hanzi.setTransform(1,0.5,-0.5,1,ww+ww/4,hh/4-h/2);
	        	hanzi.setTransform(1,0.5,-0.5,1,0,0);
	        	/* var left = Number(w/2)-Number(ww/2)
	        	var top = Number(h/2)+Number(hh/4)
	        	hanzi.fillText(font_text,left,top); */
	        	var left = Number(w/2)-Number(ww/4)
	        	var top = Number(h/4)-Number(hh-hh/2)
	        	//console.log(font_text,left,top)
	        	hanzi.fillText(font_text,left,top);
	        }else if(font_place=="rxleft_bottom"){
	        	//console.log(ww/4,hh/4-h/2)
	        	hanzi.setTransform(1,0.5,-0.5,1,w,0);
	        	hanzi.fillText(font_text,-w/2-ww/4,Number(h-10+h/4));
	        }else if(font_place=="rxright_bottom"){
	        	//console.log(-ww/2+ww/4,hh/4-h/2)
	        	hanzi.setTransform(1,0.5,-0.5,1,w,0);
	        	hanzi.fillText(font_text,10,Number(h-10-hh*2));
	        }else if(font_place=="left_top"){
	        	hanzi.fillText(font_text,10,Number(hh));
	        }else if(font_place=="right_top"){
	        	hanzi.fillText(font_text,Number(w-10-ww),Number(hh));
	        }else if(font_place=="center"){
	        	var left = Number(w/2)-Number(ww/2)
	        	var top = Number(h/2)+Number(hh/4)
	        	hanzi.fillText(font_text,left,top);
	        }else if(font_place=="left_bottom"){
	        	hanzi.fillText(font_text,10,Number(h-10));
	        }else if(font_place=="right_bottom"){
	        	hanzi.fillText(font_text,Number(w-10-ww),Number(h-10));
	        }
	        
	        
	        
			hanzi.stroke();
			$("canvas").show()
	    /* }   */
}
$(".save_water").click(function(){
	var canvas = document.getElementById("myCanvas");
 	var save_url=canvas.toDataURL("image/png");
    var a=document.createElement('a')
    document.body.appendChild(a)
    a.href=save_url
    a.download="鹿遥水印作品"
    a.click()
})


$('.changecolor').each( function() {
  $(this).minicolors({
    control: $(this).attr('data-control') || 'hue',
    defaultValue: $(this).attr('data-defaultValue') || '',
    format: $(this).attr('data-format') || 'hex',
    keywords: $(this).attr('data-keywords') || '',
    inline: $(this).attr('data-inline') === 'true',
    letterCase: $(this).attr('data-letterCase') || 'lowercase',
    opacity: $(this).attr('data-opacity'),
    position: $(this).attr('data-position') || 'bottom',
    swatches: $(this).attr('data-swatches') ? $(this).attr('data-swatches').split('|') : [],
    change: function(hex, opacity) {
      var log;
      try {
        log = hex ? hex : 'transparent';
        if( opacity ) log += ', ' + opacity;
      } catch(e) {}
    },
    theme: 'default'
  });

});


var colorRgb = function(sColor){
    sColor = sColor.toLowerCase();
    //十六进制颜色值的正则表达式
    var reg = /^#([0-9a-fA-f]{3}|[0-9a-fA-f]{6})$/;
    // 如果是16进制颜色
    if (sColor && reg.test(sColor)) {
        if (sColor.length === 4) {
            var sColorNew = "#";
            for (var i=1; i<4; i+=1) {
                sColorNew += sColor.slice(i, i+1).concat(sColor.slice(i, i+1));    
            }
            sColor = sColorNew;
        }
        //处理六位的颜色值
        var sColorChange = [];
        for (var i=1; i<7; i+=2) {
            sColorChange.push(parseInt("0x"+sColor.slice(i, i+2)));    
        }
        return "RGB(" + sColorChange.join(",") + ")";
    }
    return sColor;
};
</script>
</html>
