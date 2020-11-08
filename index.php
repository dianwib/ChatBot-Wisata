	<!DOCTYPE html>
	<html lang="en">
	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=yes">
	    <title>SampangTourismBot</title>
	    <meta name="author" content="css3transition" />
	    <link rel="shortcut icon" href="img/sampangLogo4.ico">
	
	    <!-- BEGIN GLOBAL MANDATORY STYLES -->
	   <link href='https://fonts.googleapis.com/css?family=Amaranth' rel='stylesheet'>
<style>
body {
    font-family: 'Amaranth';font-size: 22px;
}
</style>
	    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	    <link href="css/main.css" rel="stylesheet" type="text/css" />
	    <!-- END GLOBAL MANDATORY STYLES -->
	    <link href="css/select2.min.css" rel="stylesheet" type="text/css"/>
	    <link href="css/chatBot.css" rel="stylesheet" type="text/css"/>

	    <link href="css/timeline.css" rel="stylesheet" type="text/css"/>
		<link rel="stylesheet" type="text/css" href="dist/jquery.convform.css">

	</head>
	<body>
		<div class="wrapper">
	  <h1 class="title"><img src="img/bg.png" alt="SakeraBot" style="max-height: 6.3em; ">
	  	<!-- <br>SampangTourismBot</h1> -->
	  <!-- <p class="paragraph">Selamat datang di TrunojoyoBot.</p>   -->
	</div>
	
	<!-- Chat bot UI start -->
	<div class="chat-screen">
	    <div class="chat-header">
	    	<div class="chat-header-option hide">
	            <span class="dropdown custom-dropdown">
	               <a class="dropdown-toggle"  href="javascript:void(0);">
	               <img  class="imgTypeIndo" src="img/indonesia.png" id="indo"  alt="logoIndo" width="22" height="22" viewBox="0 0 22 22" fill="none" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><path d="M18.36 6.64a9 9 0 1 1-12.73 0"></path><line x1="12" y1="2" x2="12" y2="12"></line>
	                    </a>
	               <a class="dropdown-toggle"  href="javascript:void(0);">
	               <img  class="imgTypeEng" src="img/united-kingdom.png" id="eng"  alt="logoEng" width="16" height="16" viewBox="0 0 16 16" fill="none" stroke="#fff"  stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><path d="M18.36 6.64a9 9 0 1 1-12.73 0"></path><line x1="12" y1="2" x2="12" y2="12"></line>
	                    </a>
	            </span>
	        </div>
	    	<div class="chat-header-title" style="text-align: center; transform: translateX(8%);">
	        
	    		... <img src="img/logonew/logoSampang.gif" alt="SakeraBot" style="max-height: 100px;"> ...
	        </div>
	        <div class="chat-header-option hide">
	            <span class="dropdown custom-dropdown">
	               
	                  <a class="dropdown-toggle end-chat" href="javascript:void(0);">
	                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><path d="M18.36 6.64a9 9 0 1 1-12.73 0"></path><line x1="12" y1="2" x2="12" y2="12"></line></svg>
	                       
	                    </a>
	     
	            </span>
	        </div>
	    </div>
	    
	    <div class="chat-body hide start_chat messages-list" style=" background-image: url('img/patern.png');">
	        <div class="chat-bubble you " id="text_judul" style="    margin-bottom: 12px;"> Welcome on board @SampangTourismoBot. I'm here to help you with all Sampang halal tourism information. feel free to ask me questions. :)</div>
	    
	    </div>


		 <div id="chat" class="conv-form-wrapper" style="text-align: center;">
	 	<!-- <p style="margin: 0%;">Suggestion :</p> -->

	 <div class="options dragscroll" style="text-align: center; white-space: normal;overflow: scroll;">
	   <!--  <div class="option"  onclick="send_msg_dari_sugesstion('Wisata Halal Sampang')">Wisata Halal Sampang</div>
	 	<div class="option"  onclick="send_msg_dari_sugesstion('Masjid Agung Sampang')">Masjid Agung Sampang</div>
	    <div class="option"  onclick="send_msg_dari_sugesstion('Gili Mandangin')">Gili Mandangin</div>
	 	<div class="option"  onclick="send_msg_dari_sugesstion('Makam Ratu Ibu')">Makam Ratu Ibu</div> -->
	</div>
	    
	</div>

	    <div class="chat-input hide">
	        <input type="text"  id="input-me" placeholder="Type a message...">
	        <div class="input-action-icon" onclick="send_msg()">
	           
	            <a><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-send"><line x1="22" y1="2" x2="11" y2="13"></line><polygon points="22 2 15 22 11 13 2 9 22 2"></polygon></svg></a>
	        </div>
	    </div>
	   
	</div>



<!-- INDO -->
	<!-- Chat bot UI start -->
<!-- 	<div class="chat-screen-eng">
	    <div class="chat-header">
	    	<div class="chat-header-option hide">
	            <span class="dropdown custom-dropdown">
	               <a class="dropdown-toggle"  href="javascript:void(0);">
	               <img src="img/indonesia.png" id="indo"  alt="logoIndo" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><path d="M18.36 6.64a9 9 0 1 1-12.73 0"></path><line x1="12" y1="2" x2="12" y2="12"></line>
	                    </a>
	            </span>
	        </div>
	    	<div class="chat-header-title" style="text-align: center; transform: translateX(8%);">
	        
	    		... <img src="img/robotchatbot.png" alt="SakeraBot" style="max-height: 70px;"> ...
	        </div>
	        <div class="chat-header-option hide">
	            <span class="dropdown custom-dropdown">
	               
	                  <a class="dropdown-toggle end-chat" href="javascript:void(0);">
	                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><path d="M18.36 6.64a9 9 0 1 1-12.73 0"></path><line x1="12" y1="2" x2="12" y2="12"></line></svg>
	                       
	                    </a>
	     
	            </span>
	        </div>
	    </div>
	    
	    <div class="chat-body hide start_chat messages-list" style=" background-image: url('img/patern.png');">
	        <div class="chat-bubble you " id="text_judul" style="    margin-bottom: 12px;"> Welcome on board @SampangTourismoBot. I'm here to help you with all Sampang halal tourism information. feel free to ask me questions. :)</div>
	    
	    </div>


	    <div class="chat-input hide">
	    		 <div id="chat" class="conv-form-wrapper">
	 <div class="options dragscroll" style="text-align: center;">

	    <div class="option"  onclick="send_msg_dari_sugesstion('Wisata Halal Sampang')">Wisata Halal Sampang</div>
	 	<div class="option"  onclick="send_msg_dari_sugesstion('Masjid Agung Sampang')">Masjid Agung Sampang</div>
	    <div class="option"  onclick="send_msg_dari_sugesstion('Gili Mandangin')">Gili Mandangin</div>
	 	<div class="option"  onclick="send_msg_dari_sugesstion('Makam Ratu Ibu')">Makam Ratu Ibu</div>
	</div>
	    
	</div>


	        <input type="text"  id="input-me" placeholder="Type a message...">
	        <div class="input-action-icon" onclick="send_msg()">
	           
	            <a><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-send"><line x1="22" y1="2" x2="11" y2="13"></line><polygon points="22 2 15 22 11 13 2 9 22 2"></polygon></svg></a>
	        </div>
	    </div>
	   
	</div>

 -->





	<div class="chat-bot-icon">
	    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-square animate"><path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path></svg>
	</div>

	<script type="257be86a981729866f2fa61c-text/javascript">
	    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

	    ga('create', 'UA-83834093-1', 'auto');
	    ga('send', 'pageview');

	  </script>
	<script src="https://ajax.cloudflare.com/cdn-cgi/scripts/7089c43e/cloudflare-static/rocket-loader.min.js" data-cf-settings="257be86a981729866f2fa61c-|49" defer=""></script>
	<!-- Time line Html Ends -->
	<!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/select2.min.js"></script>
	 <script>
	        $(document).ready(function(){
	            $(".select2_el").select2({
	            });
	        });
	        </script>
	<script>
		var tipe="indo";
	    $(document).ready(function () {
	        //Toggle fullscreen

	         $(".chat-bot-icon").click(function (e) {
	            // $(this).children('img').toggleClass('hide');
	            // $(this).children('svg').toggleClass('animate');
			   $('.chat-screen').toggleClass('show-chat');
	            $('.chat-mail').addClass('hide');
	            // $('#text_judul').text('Selamat datang di @SampangTourismoBot. Saya disini akan membantu anda mengenai informasi wisata halal di Sampang. Jangan sungkan untuk bertanya. :)');
	            $('.chat-body').removeClass('hide');
	            $('.chat-input').removeClass('hide');
	            $('.chat-header-option').removeClass('hide');
	            $('.chat-bot-icon').hide();
	 		// console.log("TIPE",tipe ,'idImg', $('.imgType').attr('id'));
				if (tipe=="indo"){
	        	getAwalSuggestion('indo');
	        	}
	        	else{
	        	getAwalSuggestion('eng');
	        	}
	        });

	        $("#indo").click(function (e) {
	        	getAwalSuggestion('indo');
		       $('.imgTypeEng').attr('width','16');
	           $('.imgTypeEng').attr('height','16');
	           $('.imgTypeEng').attr('viewBox','0 0 16 16');
	           $('.imgTypeIndo').attr('width','22');
	           $('.imgTypeIndo').attr('height','22');
	           $('.imgTypeInd').attr('viewBox','0  22 22');
		        // $('#text_judul').text('Selamat datang di @SampangTourismoBot. Saya disini akan membantu anda mengenai informasi wisata halal di Sampang. Jangan sungkan untuk bertanya. :)');
				tipe="indo";


	        });

	         $("#eng").click(function (e) {
	        	getAwalSuggestion('eng');
	           $('.imgTypeEng').attr('width','22');
	           $('.imgTypeEng').attr('height','22');
	           $('.imgTypeEng').attr('viewBox','0 0 22 22');
	           $('.imgTypeIndo').attr('width','16');
	           $('.imgTypeIndo').attr('height','16');
	           $('.imgTypeInd').attr('viewBox','0 0 16 16');
	           // $('#text_judul').text('Welcome on board @SampangTourismoBot. Im here to help you with all Sampang halal tourism information. feel free to ask me questions. :)');
	         	tipe = "eng";

	 // console.log("TIPE",tipe ,'idImg', $('.imgType').attr('id'));

	        });
	      
	        $('.end-chat').click(function () {
	            $('.chat-screen').toggleClass('show-chat');
	            $('.chat-bot-icon').show();
	  });

	    });

	    function getAwalSuggestion(tipe){
	    		var tipe=tipe;
	    		console.log(tipe,"TIPE");
	    		if(tipe){
	    		$.ajax({
						url:'cek_awal_suggestion.php',
						type:'post',
						data:'txt='+tipe,
						success:function(result1){
						var result = JSON.parse(result1);
						// alert(result);
						// console.log(result,"res");
						var result1="'"+result[1]+"'";
						var result2="'"+result[2]+"'";
						var result3="'"+result[3]+"'";
						var result4="'"+result[4]+"'";
						
						$('#text_judul').remove();
						var html='<div class="chat-bubble you" style="margin-top:2%;"> '+result[0]+'</div><div class="chat-start"  style="text-align: left;">'+getCurrentTime()+'</div>';	
						jQuery('.messages-list').append(html);	

						var html_sugesstion='<div class="option" onclick="send_msg_dari_sugesstion('+result1+')">'+result[1]+'</div><div class="option" onclick="send_msg_dari_sugesstion('+result2+')">'+result[2]+'</div><div class="option" onclick="send_msg_dari_sugesstion('+result3+')">'+result[3]+'</div><div class="option" onclick="send_msg_dari_sugesstion('+result4+')">'+result[4]+'</div>';
								jQuery('.dragscroll').empty();
								jQuery('.dragscroll').append(html_sugesstion);			
								jQuery('.chat-screen .chat-body').scrollTop(jQuery('.chat-screen .chat-body')[0].scrollHeight);
								// console.log("scroll",jQuery('.chat-screen ')[0].scrollHeight);
						}
					});
	    	}
	    	}


	    function getCurrentTime(){
				var now = new Date();
				var hh = now.getHours();
				var min = now.getMinutes();
				var ampm = (hh>=12)?'PM':'AM';
				hh = hh%12;
				hh = hh?hh:12;
				hh = hh<10?'0'+hh:hh;
				min = min<10?'0'+min:min;
				var time = hh+":"+min+" "+ampm;
				return time;
			 }
			 
			 function send_msg(){

				var txt=jQuery('#input-me').val();
				var html='<div class="chat-bubble me"> '+txt+'</div>';
				jQuery('.messages-list').append(html);
				jQuery('#input-me').val('');
				
				if (tipe=="indo"){
				if(txt){
					jQuery.ajax({
						url:'cek_similarity.php',
						type:'post',
						data:'txt='+txt,
						success:function(result){
						var result = JSON.parse(result);
						var result1="'"+result[1]+"'";
						var result2="'"+result[2]+"'";
						var result3="'"+result[3]+"'";
						var result4="'"+result[4]+"'";
						// alert(result);

						var html='<div class="chat-bubble you"> '+result[0]+'</div><div class="chat-start"  style="text-align: left;">'+getCurrentTime()+'</div>';	
						jQuery('.messages-list').append(html);		
						
						if (result[5]!='' && result[5]!=null){
							// CEK MAPS
							var map_objek=cek_map(result[5]);
							var map='<div class="chat-bubble you">  <iframe id="map-canvas" src="'+map_objek+'" allowfullscreen></iframe> </div><div class="chat-start"  style="text-align: left;">'+getCurrentTime()+'</div>';
							jQuery('.messages-list').append(map);		

						}

						if (result[6]!='' && result[6]!=null){
							// CEK Video
							var video_objek=cek_video(result[6]);
							var video='<div class="chat-bubble you">  <iframe id="video-canvas" src="'+video_objek+'" allowfullscreen></iframe> </div><div class="chat-start"  style="text-align: left;">'+getCurrentTime()+'</div>';
							jQuery('.messages-list').append(video);		

						}

								
							var html_sugesstion='<div class="option" onclick="send_msg_dari_sugesstion('+result1+')">'+result[1]+'</div><div class="option" onclick="send_msg_dari_sugesstion('+result2+')">'+result[2]+'</div><div class="option" onclick="send_msg_dari_sugesstion('+result3+')">'+result[3]+'</div><div class="option" onclick="send_msg_dari_sugesstion('+result4+')">'+result[4]+'</div>';
								jQuery('.dragscroll').empty();
								jQuery('.dragscroll').append(html_sugesstion);			
								jQuery('.chat-screen .chat-body').scrollTop(jQuery('.chat-screen .chat-body')[0].scrollHeight);
						}
					});}
					
				}

				else{
					// TIPE ENGLISH
				if(txt){
					jQuery.ajax({
						url:'cek_similarity_eng.php',
						type:'post',
						data:'txt='+txt,
						success:function(result){
						var result = JSON.parse(result);
						var result1="'"+result[1]+"'";
						var result2="'"+result[2]+"'";
						var result3="'"+result[3]+"'";
						var result4="'"+result[4]+"'";
						// alert(result);

						var html='<div class="chat-bubble you"> '+result[0]+'</div><div class="chat-start"  style="text-align: left;">'+getCurrentTime()+'</div>';					
						jQuery('.messages-list').append(html);

						if (result[5]!='' && result[5]!=null){
							// CEK MAPS
							var map_objek=cek_map(result[5]);
							var map='<div class="chat-bubble you">  <iframe id="map-canvas" src="'+map_objek+'" allowfullscreen></iframe> </div><div class="chat-start"  style="text-align: left;">'+getCurrentTime()+'</div>';
							jQuery('.messages-list').append(map);		

						}

						if (result[6]!='' && result[6]!=null){	
							// CEK Video
							var video_objek=cek_video(result[6]);
							var video='<div class="chat-bubble you">  <iframe id="video-canvas" src="'+video_objek+'" allowfullscreen></iframe> </div><div class="chat-start"  style="text-align: left;">'+getCurrentTime()+'</div>';
							jQuery('.messages-list').append(video);		

						}

							var html_sugesstion='<div class="option" onclick="send_msg_dari_sugesstion('+result1+')">'+result[1]+'</div><div class="option" onclick="send_msg_dari_sugesstion('+result2+')">'+result[2]+'</div><div class="option" onclick="send_msg_dari_sugesstion('+result3+')">'+result[3]+'</div><div class="option" onclick="send_msg_dari_sugesstion('+result4+')">'+result[4]+'</div>';
								jQuery('.dragscroll').empty();
								jQuery('.dragscroll').append(html_sugesstion);			
								jQuery('.chat-screen .chat-body').scrollTop(jQuery('.chat-screen .chat-body')[0].scrollHeight);
						}
					});}
			 }
			}
			// INPUT DARI SUGESTION
			 function send_msg_dari_sugesstion(txt){
				var html='<div class="chat-bubble me"> '+txt+'</div>';
				jQuery('.messages-list').append(html);
				jQuery('#input-me').val('');
				if (tipe=="indo"){
				if(txt){
					jQuery.ajax({
						url:'cek_similarity.php',
						type:'post',
						data:'txt='+txt,
						success:function(result){
						var result = JSON.parse(result);
						var result1="'"+result[1]+"'";
						var result2="'"+result[2]+"'";
						var result3="'"+result[3]+"'";
						var result4="'"+result[4]+"'";

											// alert(result);

							var html='<div class="chat-bubble you"> '+result[0]+'</div><div class="chat-start"  style="text-align: left;">'+getCurrentTime()+'</div>';			
								jQuery('.messages-list').append(html);
								
						if (result[5]!='' && result[5]!=null){
							// CEK MAPS
							var map_objek=cek_map(result[5]);
							var map='<div class="chat-bubble you">  <iframe id="map-canvas" src="'+map_objek+'" allowfullscreen></iframe> </div><div class="chat-start"  style="text-align: left;">'+getCurrentTime()+'</div>';
							jQuery('.messages-list').append(map);		

						}
						if (result[6]!='' && result[6]!=null){
							// CEK Video
							var video_objek=cek_video(result[6]);
							var video='<div class="chat-bubble you"> <iframe id="video-canvas" src="'+video_objek+'" allowfullscreen></iframe> </div><div class="chat-start"  style="text-align: left;">'+getCurrentTime()+'</div>';
							jQuery('.messages-list').append(video);		

						}

								var html_sugesstion='<div class="option" onclick="send_msg_dari_sugesstion('+result1+')">'+result[1]+'</div><div class="option" onclick="send_msg_dari_sugesstion('+result2+')">'+result[2]+'</div><div class="option" onclick="send_msg_dari_sugesstion('+result3+')">'+result[3]+'</div><div class="option" onclick="send_msg_dari_sugesstion('+result4+')">'+result[4]+'</div>';
								jQuery('.dragscroll').empty();
								jQuery('.dragscroll').append(html_sugesstion);			
								jQuery('.chat-screen .chat-body').scrollTop(jQuery('.chat-screen .chat-body')[0].scrollHeight);
						}
					});}
			 }
			 else{
				if(txt){
					jQuery.ajax({
						url:'cek_similarity_eng.php',
						type:'post',
						data:'txt='+txt,
						success:function(result){
						var result = JSON.parse(result);
						var result1="'"+result[1]+"'";
						var result2="'"+result[2]+"'";
						var result3="'"+result[3]+"'";
						var result4="'"+result[4]+"'";

											// alert(result);

						var html='<div class="chat-bubble you"> '+result[0]+'</div><div class="chat-start"  style="text-align: left;">'+getCurrentTime()+'</div>';			
						jQuery('.messages-list').append(html);

						if (result[5]!='' && result[5]!=null){
							// CEK MAPS
							var map_objek=cek_map(result[5]);
							var map='<div class="chat-bubble you">  <iframe id="map-canvas" src="'+map_objek+'" allowfullscreen></iframe> </div><div class="chat-start"  style="text-align: left;">'+getCurrentTime()+'</div>';
							jQuery('.messages-list').append(map);		

						}

						if (result[6]!='' && result[6]!=null){
							// CEK Video
							var video_objek=cek_video(result[6]);
							var video='<div class="chat-bubble you">  <iframe id="video-canvas" src="'+video_objek+'" allowfullscreen></iframe> </div><div class="chat-start"  style="text-align: left;">'+getCurrentTime()+'</div>';
							jQuery('.messages-list').append(video);		

						}
									var html_sugesstion='<div class="option" onclick="send_msg_dari_sugesstion('+result1+')">'+result[1]+'</div><div class="option" onclick="send_msg_dari_sugesstion('+result2+')">'+result[2]+'</div><div class="option" onclick="send_msg_dari_sugesstion('+result3+')">'+result[3]+'</div><div class="option" onclick="send_msg_dari_sugesstion('+result4+')">'+result[4]+'</div>';
								jQuery('.dragscroll').empty();
								jQuery('.dragscroll').append(html_sugesstion);			
								jQuery('.chat-screen .chat-body').scrollTop(jQuery('.chat-screen .chat-body')[0].scrollHeight);
						}
					});}
			 }
			}


function cek_map(data){
		var linkKey = "https://www.google.com/maps/embed/v1/search?key=AIzaSyBK73HewkhHBVVs9nI98-HY_N7cZM_kdjE";
		var zoom = 14;
		srcContent = linkKey + "&q=" + data + "&zoom=" + zoom;
		return srcContent;
}

function cek_video(data){
		var srcContent = data.replace('watch?v=','embed/');
		return srcContent;
}

	</script>
	</body>

	</html>
