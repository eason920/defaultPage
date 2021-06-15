<!-- #include virtual="include/package.asp"--> 
<%
MBN=mobile_chk()
if session("indx")="" then
  response.Cookies("Login_target")=143
  response.Cookies("Join_target")=138
else
  response.Cookies("Login_target").expires=now
  response.Cookies("Join_target").expires=now
end if
%>
<style>
.emStr{
	position:absolute;
	float:left;
	margin-left:0.5%;
	margin-top:1px;
	z-index:3;
	color:#999;
}
</style>
<script  src="../../../jquery.cookie.js"></script>
<script type="text/javascript" src="../../../join2020/fblogin.js"></script>
<script>
RightNow = new Date();
var dd = "" + (RightNow.getMonth()+1)+ "" + RightNow.getDate() + "" + RightNow.getFullYear() + "" + RightNow.getHours() + "" + RightNow.getMinutes() + "" + RightNow.getSeconds() + "";


function fbLogin(links) {
  FB.login(function(response) {
    if (response.authResponse) {
      var uid = response.authResponse.userID;
      var accessToken = response.authResponse.accessToken;
      var Femail=''
      FB.api('/me', {fields: 'name,email'}, function(response) {
        Femail=response.email;

        var form = document.createElement("form");
        form.setAttribute("method", 'post');
        form.setAttribute("action", '../../join2020/intro_fbck.asp?link=../../');
        var field = document.createElement("input");
        field.setAttribute("type", "hidden");
        field.setAttribute("name", 'accessToken');
        field.setAttribute("value", accessToken);
        form.appendChild(field);

        var fieldemail = document.createElement("input");
        fieldemail.setAttribute("type", "hidden");
        fieldemail.setAttribute("name", 'uid');
        fieldemail.setAttribute("value", uid);
        form.appendChild(fieldemail);

        var fieldemail2 = document.createElement("input");
        fieldemail2.setAttribute("type", "hidden");
        fieldemail2.setAttribute("name", 'Femail');
        fieldemail2.setAttribute("value", Femail);
        form.appendChild(fieldemail2);

        document.body.appendChild(form);
        form.submit();

      });

    }
  },{scope:'email'});
}

function fun_channel_ci(key){
  if(key=="join"){
	   
    <%if session("indx")<>"" then%>
      alert('您已經是會員了');
    <%else%>
		 
      <%if request.Cookies("FBUID")<>"" then%>
        Fa(137);
        DIYLightBox('ajax','920px','546px','../../join2020/FBjoin.asp?dd=<%=now%>&link=../../','b')     
      <%else%>
        Fa(136);
        DIYLightBox('ajax','920px','546px','../../join2020/select.asp?dd=<%=now%>&link=../../','b')
      <%end if%>	 
	     
	 <%end if%>
	 
	}else if(key=="login"){
	  DIYLightBox('ajax','400px','490px','../../join2020/login.asp?relink=../../')	 
	}else if(key=="PwdSend"){
	  DIYLightBox('ajax','400px','490px','../../join2020/PwdSend.asp?relink=../../')
	}else if(key=="Verify"){
    DIYLightBox('ajax','920px','546px','../../join2020/vercheck.asp?relink=../../','b')
	}else if(key=="Verify2"){
		DIYLightBox('ajax','400px','490px','../../join2020/vercheckOP.asp?relink=../../')    
	}else if(key=="Interview"){
    DIYLightBox('iframe','920px','546px','../../Interview/index2019.asp?relink=../../')
  }
}

function fun_channel_MB(key){
  if(key=="join"){
	   
    <%if session("indx")<>"" then%>
      alert('您已經是會員了');
    <%else%>
      
      <%if request.Cookies("FBUID")<>"" then%>
        Fa(137);
        location.href='../../join2020MB/FBjoin.asp?dd=<%=now%>&link=../../join2020MB/vercheck.asp'     
      <%else%>
        Fa(136);
        location.href='../../join2020MB/sign.asp?dd=<%=now%>&link=../../join2020MB/vercheck.asp'
      <%end if%>	 
        
    <%end if%>
	 
	}else if(key=="login"){
	  location.href='../../join2020MB/login.asp?relink=../../NewMylessonMobile/join-select.htm'	 
	}else if(key=="PwdSend"){
	  location.href='../../join2020MB/PwdSend.asp?relink=../../NewMylessonMobile/join-select.htm'
	}else if(key=="Verify"){
		location.href='../../join2020MB/vercheck.asp?relink=../../NewMylessonMobile/join-select.htm'
	}else if(key=="Interview"){
    location.href='../../Interview/index2019-MB.asp?relink=../../NewMylessonMobile/join-select.htm'
  }
}

function joinVerify(s){
  if(s==0){
    <%if MBN="PC" then%>
      fun_channel_ci('Verify');
    <%else%>
      fun_channel_MB('Verify');
    <%end if%>
	  //$.cookie('vercheckTel','' , {expires: -1, path: '/'}); 	
	  clearTimeout(timerID);
  }else{
	  timerID = setTimeout("joinVerify("+(s-1)+")",1000);	
  }
}

function jointimeout(s){
  if(s==0){
    <%if MBN="PC" then%>
      fun_channel_ci('join');
    <%else%>
      fun_channel_MB('join');
    <%end if%>
	  clearTimeout(timerID);
  }else{
	  timerID = setTimeout("jointimeout("+(s-1)+")",1000);	
  }
}

function joinselect(linkid){
  <%if session("indx")<>"" then%>
    location.href='../../'		   
  <%else%>
    fun_channel_ci('login')
  <%end if%>
}	

function joinselectMB(linkid){
  <%if session("indx")<>"" then%>
    location.href='../../NewMylessonMobile/join-select.htm'	   
  <%else%>
    location.href='../../join2020MB/login.asp?link=../../NewMylessonMobile/join-select.htm'
  <%end if%>
}	

function joinview(){
  if($.cookie('email')!=null && $.cookie('nickname')!='' ){		      
    DIYLightBox('ajax','600px','280px','../../../interview/index2.asp?dd=<%=now%>')	 
  }else{
    fun_channel_ci('login')
  }
}

 function chk(){
   Fa(140);
  //alert($("#Cmembersave").attr("checked"))
  document.getElementById("email").value=$('#Cemail').val();
  document.getElementById("password").value=$('#Cpassword').val();
  if($("#Cmembersave").attr("checked")==undefined){
    document.getElementById("membersave").value=0;
  }else{
    document.getElementById("membersave").value=1;	   
  }
  document.getElementById("login").submit();

 }

  <%if request.Cookies("FBUID")<>"" then%>
    jointimeout(1)
  <%end if%>

  if($.cookie("vercheckTel")!=null && $.cookie('vercheckTel')!='' )
    joinVerify(1)	
	 
</script>
<form name='login' id='login' action='../../../../member/idchk.asp' method='post'>
<input name='email' type='hidden'  id='email' >
<input name='password' type='hidden'  id='password'  >
<input name='cid' type='hidden' id='cid' value='funday' >
<input name='viplink' type='hidden' id='viplink' value='0' > 
<input name='membersave' type='hidden' id='membersave' value='0' > 
<input name='relink' type='hidden' id='relink' value='../../../../' > 
</form>
