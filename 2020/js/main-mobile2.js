  var mouseEventTypes = {
    touchstart : "mousedown",
    touchmove : "mousemove",
    touchend : "mouseup"
  };
  
  for (originalType in mouseEventTypes) {
    document.addEventListener(originalType, function(originalEvent) {
    event = document.createEvent("MouseEvents");
    touch = originalEvent.changedTouches[0];
    event.initMouseEvent(mouseEventTypes[originalEvent.type], true, true,
    window, 0, touch.screenX, touch.screenY, touch.clientX,
    touch.clientY, touch.ctrlKey, touch.altKey, touch.shiftKey,
    touch.metaKey, 0, null);
    originalEvent.target.dispatchEvent(event);
    });
  }



    $(function(){
      var scrollChk=0;
      console.log("offsetTop:",a);
      $(window).on("touchmove",function(){
        
        var scrollTmp = 0;


          var a = document.getElementById("area8").offsetTop;
          console.log("offsetTop:",a);
  
          var b = $(window).scrollTop();
          var c = $(window).scrollTop()+$(window).height();
          //console.log("window.scrollTop:",b);
          if (c >= a) {
              //console.log("----",a,c);
              $('.Jhide').attr('class','JButton Jshow');
          }

     
    
      });  
      
    });  
    


    $('.marquee').marquee({
        duration: 30000,
        direction: 'left'
    });

    $('.marquee2').marquee({
      duration: 30000,
      direction: 'left'
  });   

    $('.menuIcon').on('click',function(event){
      if($('header nav').is(":hidden")){
        $('header nav').slideDown(500,function(){
          $('.menu').attr('class','menuIcon close');
        });
      }else{
        $('header nav').slideUp(500,function(){
          $('.close').attr('class','menuIcon menu');
        });        
      }
    })

    $('.Slogn').on('click',function(event,index){
      if($(this).parent('.Block').data('value')!=2){
        if($(this).next('.slide').is(":hidden")){
          $(this).next('.slide').slideDown(500);
          $(this).children('.arrow').attr('class','arrow up');
        }else{
          $(this).next('.slide').slideUp(500);        
          $(this).children('.arrow').attr('class','arrow down');
        }
      }else{
        window.open('../../customer/funday/Policy.htm');
      }
    })

 
    $('.LoginDiv').on('click',function(){fun_channel_MB('login');})



    $.getJSON("../../MemberExperience/getJSON.asp?simple=Y&cnt=8", function(json){
      let StrP='';

      $.each(json, function(i,item){
        document.documentElement.style.setProperty('--Mex-image'+(i+1), 'url('+item.PhotoUrl+')');
          StrP = StrP + '<div class="PicDv "  onclick=ShowDetailOfMemberExp(' + item.id + ',"Mobile");><div class="Mbg Mpic' + (i + 1) + '"></div><div class="PicDvh">' + item.profession+'</div></div>'     
      }) 

      $('.area5 .ItemList .BlockDv').append(StrP);
    })


    $('.area1 .SButton').on('click',function(){gtag('event', 'conversion', {'send_to': 'AW-748725678/9ay0CIDP2poBEK7LguUC'});fun_channel_MB('join');}) 
    $('.area8 .JButton').on('click',function(){gtag('event', 'conversion', {'send_to': 'AW-748725678/bmWJCOre45oBEK7LguUC'});fun_channel_MB('Interview');}) 

    $('.iconFB').on('click',function(){window.open('https://zh-tw.facebook.com/funday.asia');})
    $('.iconIG').on('click',function(){window.open('https://www.instagram.com/funday.asia');})
    $('.iconYT').on('click',function(){window.open('https://www.youtube.com/channel/UCug7jmjK4hPey4R9n7zTwEQ/featured');})
    $('.iconLine').on('click',function(){window.open('https://line.me/R/ti/p/@wix6409v');})
    $('.Blog').on('click',function(){location.href='../../NewMylessonmobile/blog/';})                