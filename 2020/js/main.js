		$(document).ready(function() {

      $(window).scroll(function () {
        var a2 = document.getElementById("area2").offsetTop;
        var a8 = document.getElementById("area8").offsetTop;
        //console.log("offsetTop:",a);

        var b = $(window).scrollTop();
        var c = $(window).scrollTop()+$(window).height();
        //console.log("window.scrollTop:",b);
        if (c >= a2) {
          //console.log("----",a,c);
          $('.Joinhide').attr('class','joinDiv Joinshow');
      }
        if (c >= a8) {
            //console.log("----",a,c);
            $('.Jhide').attr('class','JButton Jshow');
        }


      });

            //�ɶq���ǭ����Ҹm��###########
            var tmpw = (Math.floor(jQuery(window).width() / 200) -1) * 200 + 50;
            $(".area5 .ItemList").css("width", String(tmpw) + "px");
            $(window).resize(function () {
                var tmpw = (Math.floor(jQuery(window).width() / 200) - 1) * 200 + 50;
                $(".area5 .ItemList").css("width", String(tmpw) + "px");
            });
            //#############################
    });

    $('.marquee').marquee({
        duration: 30000,
        direction: 'left'
    });

    $('.marquee2').marquee({
      duration: 30000,
      direction: 'left'
  });

    $("header li").each(function( index ) {
      
      if(index==5){       
        $(this).on('click',function(){fun_channel_ci('login');})
      }
    });


    /*$.getJSON("../../MemberExperience/ListJSON.asp", function(json){
      let StrP='';

      $.each(json, function(i,item){
        document.documentElement.style.setProperty('--Mex-image'+(i+1), 'url('+item.PhotoUrl+')');
        StrP=StrP+'<div class="PicDv "  onclick=ShowDetailOfMemberExp('+item.Id+',"PC");><div class="Mbg Mpic'+(i+1)+'"></div><div class="PicDvh">'+item.Category+'</div></div>'     
      }) 

      $('.area5 .ItemList .BlockDv').append(StrP);
    })*/

var jsonlist = [];

function LoadMEdata() {
    $.getJSON("/memberExperience/getJSON.asp?simple=Y&cnt=50", function (data) {
        jsonlist = data;
    });
}

    $.getJSON("/memberExperience/getJSON.asp?simple=Y&cnt=50", function (data) {
        jsonlist = data;
        var FlipCur = 0;
        var lineCount = 6;

        function GenFlipALL() {
            var htm = "";
            for (var i = 0; i < 50; i++) {
                if (FlipCur == jsonlist.length)
                    FlipCur = 0;
                htm += '<li><div class="flip-3d"><div class="flip-front" onclick=ShowDetailOfMemberExp(' + jsonlist[FlipCur].id + ',"PC")><div class="PicDv"><div class="Mbg Mpic" style="background:url(' + jsonlist[FlipCur].PhotoUrl + ')"></div><div class="PicDvh">' + jsonlist[FlipCur].profession + '</div></div></div></li>';//<img src=\"' + jsonlist[FlipCur].PhotoUrl + '\">
                FlipCur++;
            }
            return htm;
        }

        function ChgItem() {
            var img3DList = document.querySelectorAll(".flip-3d");
            var len = img3DList.length;

            for (var i = 0; i < len; i++) {
                var colNum = parseInt(i / lineCount);
                var rowNum = i % lineCount;
                var delayTime = (colNum + rowNum) * 100;

                img3DList[i].style.transition = "0.4s " + delayTime + "ms linear";
                img3DList[i].style.transform = "rotateY(" + 180 + "deg)";
                img3DList[i].style.opacity = 0;
            }
            LoadMEdata();
            setTimeout(function () { document.getElementById("FlipWall").innerHTML = GenFlipALL(); }, 1300);
        }

        $('.area5 .ItemList .BlockDv').append("<ul id=\"FlipWall\">" + GenFlipALL() + "</ul>");
        setInterval(ChgItem, 20000);
    });

    $("footer li").each(function( index ) {
      if(index==0){
        $(this).on('click',function(){location.href='https://funday.asia/B2B/?Pg=1';})
      }else if(index==1){
        $(this).on('click',function(){location.href='https://funday.asia/B2B/?Pg=2';})
      }else if(index==2){
        $(this).on('click',function(){window.open('../../customer/funday/Policy.htm');})        
      }
    });

    $('.area1 .SButton').on('click',function(){fun_channel_ci('join');}) 
    $('.area8 .JButton').on('click',function(){fun_channel_ci('Interview');}) 

    $('.iconFB').on('click',function(){window.open('https://zh-tw.facebook.com/funday.asia');})
    $('.iconIG').on('click',function(){window.open('https://www.instagram.com/funday.asia');})
    $('.iconYT').on('click',function(){window.open('https://www.youtube.com/channel/UCug7jmjK4hPey4R9n7zTwEQ/featured');})
    $('.iconLine').on('click',function(){window.open('https://line.me/R/ti/p/@wix6409v');})
    $('.Blog').on('click',function(){window.open('../../blogDesktop')})                