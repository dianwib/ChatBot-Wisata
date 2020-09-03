<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=yes">
    <title>TrunojoyoBot</title>
  <!--   <meta name="description" content="Chat Bot UI/UX & html for web" />
    <meta name="keywords" content="Chat Bot UI/UX & html for web, UI/UX for chat bot, chat bot html, best chatbot, chatbot app, online chat bot plugin" /> -->
    <meta name="author" content="css3transition" />
    <link rel="shortcut icon" href="img/robotchatbot.ico">
    <!-- <link rel="icon" href="img/favicon.png"/> -->
   
    <!-- <meta name="author" content="Rahul Yaduvanshi"> -->
   
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700" rel="stylesheet">
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
  <h1 class="title">TrunojoyoBot<img src="img/robotchatbot.png" alt="SakeraBot" style="max-height: 2.8em; "></h1>
  <p class="paragraph">Selamat datang di TrunojoyoBot.</p>  
</div>
<!-- Chat bot UI start -->
<div class="chat-screen">
    <div class="chat-header">
    	
    	<div class="chat-header-title">
        
    		<img src="img/robotchatbot.png" alt="SakeraBot" style="max-height: 70px;">    TrunojoyoBot
        </div>
        <div class="chat-header-option hide">
            <span class="dropdown custom-dropdown">
               
                  <a class="dropdown-toggle end-chat" href="javascript:void(0);">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><path d="M18.36 6.64a9 9 0 1 1-12.73 0"></path><line x1="12" y1="2" x2="12" y2="12"></line></svg>
                       
                    </a>
     
            </span>
        </div>
    </div>
    <!-- <div class="chat-mail">
        <div class="row">
            <div class="col-md-12 text-center mb-2">
                <p>Hi 👋! Please fill out the form below to start chatting with the next available agent.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Name">
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <input type="email" class="form-control" placeholder="Email">
                </div>
            </div>
            <div class="col-md-12">
                    <select class="form-control  select2_el">
                        <option selected="selected">Select Option</option>
                        <option>Report Abuse</option>
                        <option>Other</option>
                    </select>
            </div>
            <div class="col-md-12">
                <button class="btn btn-primary btn-rounded btn-block">Start Chat</button>
            </div>
           <div class="col-md-12">
               <div class="powered-by">Powered by css3transition</div>
           </div>
        </div>
    </div> -->
    <div class="chat-body hide start_chat messages-list">
        <!-- <div class="chat-start">Monday, 1:27 PM</div> -->
        <div class="chat-bubble you " style="    margin-bottom: 12px;"> Welcome on board @TrunojoyoBot. I'm here to help you with all Sumenep halal tourism information. feel free to ask me questions. :)</div>
        <!-- <div class="chat-start"  style="text-align: left;">hhjhj</div> -->
     
        <!-- <div class="chat-bubble you">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="margin: auto;display: block;shape-rendering: auto;width: 43px;height: 20px;" viewBox="0 0 100 100" preserveAspectRatio="xMidYMid">
                <circle cx="0" cy="44.1678" r="15" fill="#ffffff">
                    <animate attributeName="cy" calcMode="spline" keySplines="0 0.5 0.5 1;0.5 0 1 0.5;0.5 0.5 0.5 0.5" repeatCount="indefinite" values="57.5;42.5;57.5;57.5" keyTimes="0;0.3;0.6;1" dur="1s" begin="-0.6s"></animate>
                </circle> <circle cx="45" cy="43.0965" r="15" fill="#ffffff">
                <animate attributeName="cy" calcMode="spline" keySplines="0 0.5 0.5 1;0.5 0 1 0.5;0.5 0.5 0.5 0.5" repeatCount="indefinite" values="57.5;42.5;57.5;57.5" keyTimes="0;0.3;0.6;1" dur="1s" begin="-0.39999999999999997s"></animate>
            </circle> <circle cx="90" cy="52.0442" r="15" fill="#ffffff">
                <animate attributeName="cy" calcMode="spline" keySplines="0 0.5 0.5 1;0.5 0 1 0.5;0.5 0.5 0.5 0.5" repeatCount="indefinite" values="57.5;42.5;57.5;57.5" keyTimes="0;0.3;0.6;1" dur="1s" begin="-0.19999999999999998s"></animate>
            </circle></svg>
        </div> -->

    </div>

 <div id="chat" class="conv-form-wrapper">
 <div class="options dragscroll" style="text-align: center;">
 	<div class="option"  onclick="send_msg_dari_sugesstion('Lokasi Masjid Jamik')">Lokasi Masjid Jamik</div>
    <div class="option"  onclick="send_msg_dari_sugesstion('wisata sejarah Sumenep')">Wisata Sejarah Sumenep</div>
    <div class="option"  onclick="send_msg_dari_sugesstion('wisata religi Sumenep')">Wisata Religi Sumenep</div>
 	<div class="option"  onclick="send_msg_dari_sugesstion('wisata alam Sumenep')">Wisata Alam Sumenep</div>
</div>
    
</div>


    <div class="chat-input hide">
        <input type="text"  id="input-me" placeholder="Type a message...">
        <div class="input-action-icon" onclick="send_msg()">
           
            <a><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-send"><line x1="22" y1="2" x2="11" y2="13"></line><polygon points="22 2 15 22 11 13 2 9 22 2"></polygon></svg></a>
        </div>
    </div>
   <!--  <div class="chat-session-end hide">
        <h5>This chat session has ended</h5>
        <p>Thank you for chatting with us, If you can take a minute and rate this chat:</p>
        <div class="rate-me">
            <div class="rate-bubble great">
                <span><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-thumbs-up"><path d="M14 9V5a3 3 0 0 0-3-3l-4 9v11h11.28a2 2 0 0 0 2-1.7l1.38-9a2 2 0 0 0-2-2.3zM7 22H4a2 2 0 0 1-2-2v-7a2 2 0 0 1 2-2h3"></path></svg></span>
                Great
            </div>
            <div class="rate-bubble bad">
                <span><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-thumbs-down"><path d="M10 15v4a3 3 0 0 0 3 3l4-9V2H5.72a2 2 0 0 0-2 1.7l-1.38 9a2 2 0 0 0 2 2.3zm7-13h2.67A2.31 2.31 0 0 1 22 4v7a2.31 2.31 0 0 1-2.33 2H17"></path></svg></span>
                Bad
            </div>
        </div>
        <a class="transcript-chat">Need a Transcript?</a>
        <div class="powered-by">Powered by css3transition</div>
    </div> -->
</div>
<div class="chat-bot-icon">
    <!-- <img src="img/we-are-here.svg"/> -->
    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-square animate"><path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path></svg>
</div>
<!-- Chat Bot UI Ends -->
<!-- Time line Html Start -->
<!-- <h1 class="hide">Responsive Timeline using Flexbox</h1>
<div class="timeline hide">
    <div class="timeline-item">
        <div class="timeline-date">
            <img src="stylesheet/images/cities/delhi.svg"/>
            <div>
                January 2019
            </div>
        </div>
        <div class="timeline-content">
            <h2>Journey Start <span>(Delhi)</span></h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad saepe nulla quibusdam ut. Beatae, facere sequi blanditiis porro suscipit tempore ipsam iste ipsa, culpa quam vero, dolorem cupiditate. Magni, numquam?<button type="button" class="visit">Visit ›</button><img src="stylesheet/images/cities/delhi.svg"/></p>
            <br>
            <i class="fas fa-rocket fa-icon"></i>
        </div>
    </div>

    <div class="timeline-item">
        <div class="timeline-date">
            <img src="stylesheet/images/cities/lucknow.svg"/>
            <div>
                February 2019
            </div>
        </div>
        <div class="timeline-content">
            <h2>Nawabo ka Sehar<span>(Lucknow)</span></h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad saepe nulla quibusdam ut. Beatae, facere sequi blanditiis porro suscipit tempore ipsam iste ipsa, culpa quam vero, dolorem cupiditate. Magni, numquam?<button type="button" class="visit">Visit ›</button><img src="stylesheet/images/cities/lucknow.svg"/></p>

            <br>
            <i class="fas fa-graduation-cap fa-icon"></i>
        </div>
    </div>

    <div class="timeline-item">
        <div class="timeline-date">
            <img src="stylesheet/images/cities/prayagraj.svg"/>
            <div>
                March 2019
            </div>
        </div>
        <div class="timeline-content">
            <h2>Devotional Place<span>(Prayagraj)</span></h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad saepe nulla quibusdam ut. Beatae, facere sequi blanditiis porro suscipit tempore ipsam iste ipsa, culpa quam vero, dolorem cupiditate. Magni, numquam?<button type="button" class="visit">Visit ›</button><img src="stylesheet/images/cities/prayagraj.svg"/></p>

            <br>
            <i class="fas fa-power-off fa-icon"></i>
        </div>
    </div>
</div> -->
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
    $(document).ready(function () {
        //Toggle fullscreen
        $(".chat-bot-icon").click(function (e) {
            // $(this).children('img').toggleClass('hide');
            // $(this).children('svg').toggleClass('animate');
            $('.chat-screen').toggleClass('show-chat');
             $('.chat-mail').addClass('hide');
            $('.chat-body').removeClass('hide');
            $('.chat-input').removeClass('hide');
            $('.chat-header-option').removeClass('hide');
            $('.chat-bot-icon').hide();

        });
        // $('.chat-mail button').click(function () {
        //     $('.chat-mail').addClass('hide');
        //     $('.chat-body').removeClass('hide');
        //     $('.chat-input').removeClass('hide');
        //     $('.chat-header-option').removeClass('hide');
        // });
        $('.end-chat').click(function () {
            $('.chat-screen').toggleClass('show-chat');
            $('.chat-bot-icon').show();

            // $('.chat-body').addClass('hide');
            // $('.chat-input').addClass('hide');
            // $('.chat-session-end').removeClass('hide');
            // $('.chat-header-option').addClass('hide');

        });
    });

</script>
</body>

</html>

 <script type="text/javascript">
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
						var html_sugesstion='<div class="option" onclick="send_msg_dari_sugesstion('+result1+')">'+result[1]+'</div><div class="option" onclick="send_msg_dari_sugesstion('+result2+')">'+result[2]+'</div><div class="option" onclick="send_msg_dari_sugesstion('+result3+')">'+result[3]+'</div><div class="option" onclick="send_msg_dari_sugesstion('+result4+')">'+result[4]+'</div>';
							jQuery('.dragscroll').empty();
							jQuery('.dragscroll').append(html_sugesstion);			
							jQuery('.chat-screen .chat-body').scrollTop(jQuery('.chat-screen .chat-body')[0].scrollHeight);
					}
				});}
		 }

		 function send_msg_dari_sugesstion(txt){
			var html='<div class="chat-bubble me"> '+txt+'</div>';
			jQuery('.messages-list').append(html);
			jQuery('#input-me').val('');
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
								var html_sugesstion='<div class="option" onclick="send_msg_dari_sugesstion('+result1+')">'+result[1]+'</div><div class="option" onclick="send_msg_dari_sugesstion('+result2+')">'+result[2]+'</div><div class="option" onclick="send_msg_dari_sugesstion('+result3+')">'+result[3]+'</div><div class="option" onclick="send_msg_dari_sugesstion('+result4+')">'+result[4]+'</div>';
							jQuery('.dragscroll').empty();
							jQuery('.dragscroll').append(html_sugesstion);			
							jQuery('.chat-screen .chat-body').scrollTop(jQuery('.chat-screen .chat-body')[0].scrollHeight);
					}
				});}
		 }


      </script>