<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%> 
<!-- #include virtual="include/DBConnection.asp"--> 
<%   
response.Buffer = true   
session.CodePage = 65001   
response.Charset = "utf-8"
response.cookies("Welcome")="1"  



if session("indx")<>"" or session("BuyLink")<>"" then
	response.Redirect "../../"
end if

Bw=""
Bh=""
Slogn=""
SRight=""
 
function BgTime()

	Dn=date()
	nw=now
	'nw=TimeValue("2018/9/28 17:20 ")

	'A 24:00~05:00
	'B 05:00~08:00
	'C 08:00~11:00
	'D 11:00~14:00
	'E 14:00~17:00
	'F1 17:00~20:00
	'F2 17:00~20:00
	'G 20:00~24:00

	if FormatDateTime(nw,vbShortTime)>FormatDateTime(Dn &" 00:00 ",vbShortTime) and FormatDateTime(nw,vbShortTime)<=FormatDateTime(Dn &" 05:00 ",vbShortTime)  then
		BgTime="FUNDAY_mobile_landing_page_image_a.png"
		Slogn="學習，從現在開始<br>永不嫌晚!"
		SRight=""
		' Bw="483"
		' Bh="26"
	elseif FormatDateTime(nw,vbShortTime)>FormatDateTime(Dn &" 05:00 ",vbShortTime) and FormatDateTime(nw,vbShortTime)<=FormatDateTime(Dn &" 08:00 ",vbShortTime)  then
		BgTime="FUNDAY_mobile_landing_page_image_b.png"
		Slogn="早安 迎接美好的一天"
		SRight=" SRight"
		' Bw="189"
		' Bh="20"
	elseif FormatDateTime(nw,vbShortTime)>FormatDateTime(Dn &" 08:00 ",vbShortTime) and FormatDateTime(nw,vbShortTime)<=FormatDateTime(Dn &" 11:00 ",vbShortTime)  then
		BgTime="FUNDAY_mobile_landing_page_image_c.png"
		Slogn="努力 讓自己更好"
		SRight=""
		' Bw="264"
		' Bh="36"
	elseif FormatDateTime(nw,vbShortTime)>FormatDateTime(Dn &" 11:00 ",vbShortTime) and FormatDateTime(nw,vbShortTime)<=FormatDateTime(Dn &" 14:00 ",vbShortTime)  then
		BgTime="FUNDAY_mobile_landing_page_image_d.png"
		Slogn="靜心 成就更好的自己"
		SRight=""
		' Bw="341"
		' Bh="28"
	elseif FormatDateTime(nw,vbShortTime)>FormatDateTime(Dn &" 14:00 ",vbShortTime) and FormatDateTime(nw,vbShortTime)<=FormatDateTime(Dn &" 17:00 ",vbShortTime)  then
		BgTime="FUNDAY_mobile_landing_page_image_e.png"
		Slogn="學習 讓世界更精彩"
		SRight=" SRight"
		' Bw="403"
		' Bh="27"
	elseif FormatDateTime(nw,vbShortTime)>FormatDateTime(Dn &" 17:00 ",vbShortTime) and FormatDateTime(nw,vbShortTime)<=FormatDateTime(Dn &" 20:00 ",vbShortTime)  then
		if Weekday(Dn)=1 or Weekday(Dn)=7 then
			BgTime="FUNDAY_mobile_landing_page_image_f2.png"
			Slogn="挑戰 充實的未來"
			SRight=""
		else
			BgTime="FUNDAY_mobile_landing_page_image_f1.png"
			Slogn="下班了 今天辛苦囉^.^"
			SRight=""
		end if

		' Bw="367"
		' Bh="27" 
	else
		BgTime="FUNDAY_mobile_landing_page_image_g.png"
		Slogn="享受 一個人的自在"
		SRight=" SRight"
		' Bw="423"
		' Bh="27"     
	end if

end function



%>

<meta name="tag" where="defaultPage2019" content="intro-mobile" />
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href="../../defaultpage2019/css/jquery.easy_slides.css" rel="stylesheet">
<link href="../../defaultpage2019/css/main-mobile.css?<%=now()%>" rel="stylesheet">
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script type="text/javascript" language="javascript" src="../../defaultpage2019/js/modernizr-custom.js"></script>
<script src="https://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script  src="../../../../jquery.cookie.js"></script>
<script src="../../defaultpage2019/js/jquery.marquee.min.js"></script> 
<script src="../../library/js/lightBoxDIY-V2.js"></script>
<link href="../../MemberExperience/css/MemberExpMobile.css" rel="stylesheet" />
<script src="../../MemberExperience/MemberExp.js"></script>
<script src='../../../../Funfa/Fa.js'></script>
<script>
/*
    var ScheduleDateS = "2019-06-01 02:00:00", ScheduleDateE = "2019-06-01 06:00:00";

    if (((Date.parse(ScheduleDateS)).valueOf() < new Date()) && ((Date.parse(ScheduleDateE)).valueOf() > new Date())) {
        location.href="/maintain.html";
    }*/
$.get("../../../defaultpage2019/join.asp",function(data){ //初始將tool.htm" include
$("body").append(data);
}); 
Fa(126);
// for footer app btn display
const nua = navigator.userAgent;
/android/i.test(nua)? $('.is-app .is-ios').hide() : $('.is-app .is-android').hide();


var BgTime='<%=BgTime()%>'

document.documentElement.style.setProperty('--b-imageno', 'url(../../../defaultpage2019/images/'+BgTime+')');
BgTime=BgTime.replace('png','webp');
document.documentElement.style.setProperty('--b-image', 'url(../../../defaultpage2019/images/'+BgTime+')');
</script>

<div class="all">
    <header>
		<div class="menuIcon menu"></div><a href="https://funday.asia"><div class="Logo" ></div></a><div class="LoginDiv" onclick="Fa(133);">登入</div>
		 <nav>
        <ul>
		<!-- Modify by Tom at 2019/6/5 -->
	          <div><li onclick="Fa(129);location.href='../../subscription/planB'"><a href="../../subscription/planB">訂閱方案</a></li></div>  
            <div><li onclick="Fa(131);fun_channel_MB('join')"> 免費註冊體驗</li></div>
            <div style="border-bottom: 0px;"><li onclick="location.href='/TeachingCenter/index.html'"><a href="/TeachingCenter/index.html">教學中心</a></li></div>
        </ul>
     </nav>     
		</header>
    <div class="area1">
     <div class="ItemList">
      <div class="Slogn " ><%=Slogn%></div>
      <div class="SButton " onclick="Fa(127);">免費加入</div>
     </div>
    </div>
    <h1 class="area2">FUNDAY線上數位英文教學</h1>  
    <div class="area3">
      <div class="ItemList">
        <div class="BlockDv">
         <div class="iconClass"></div>
         <div class="Slogn">數位學堂</div>
          <ul >
	          <li >17000+篇英語教學庫</li>
		        <li >專業教師發音導讀解說</li>
		        <li >雙語音樂MV聽看學</li>    
          </ul>
        </div>
        <div class="BlockDv">
         <div class="iconFormal"></div>
         <div class="Slogn">實力衝刺</div>
          <ul>
	          <li >嚴選英語師資視訊教學</li>
		        <li >學習免預約、隨選隨上</li>
		        <li >商務/文法/寫作/檢定班</li>    
          </ul>        
        </div>
        <div class="BlockDv">
         <div class="iconLife"></div>
         <div class="Slogn">會話練習</div>
          <ul>
	          <li >全職外籍老師(無菲師)</li>
		        <li >語感發音朗讀會話</li>
		        <li >高階職場密集訓練營</li>    
          </ul>        
        </div>

        <div class="BlockDv">
         <div class="iconTrack"></div>
         <div class="Slogn">成效追蹤</div>
          <ul>
	          <li >個人化能力指標</li>
		        <li >學習歷程記錄</li>
		        <li >制定專屬學習計劃表</li>    
          </ul>        
        </div>
        <div class="BlockDv">
         <div class="iconCoach"></div>
         <div class="Slogn">教練</div>
          <ul>
	          <li >專屬學習諮詢</li>
		        <li >語言技能晉升檢測</li>
		        <li >筆/口試升級個別指導</li>    
          </ul> 
        </div>
        <div class="BlockDv">
         <div class="iconCefr"></div>
         <div class="Slogn">CEFR診斷</div>
          <ul>
	          <li >英語導師一對一指導</li>
		        <li >國際認定的語文參考架構</li>
		        <li >分成A1到C2六個等級</li>    
          </ul>         
        </div>        
      </div>
    </div> 

      <div class="area4-1">
       <div class="ItemList">
       <table width="90%" align="center" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td  valign="center">
            <div class="Slogn">經過12年的努力，<br />FUNDAY與國際同步接軌。</div>
              <ul>
	             <li >歐洲共通語言參考架構CEFR</li>
		           <li >LTTC語言測驗中心(全民英檢)官方授權數位課程</li>
		           <li >中華民國多媒體英語文教學學會合作認可</li>  
               <li >50所以上大專院校培訓實績</li>     
              </ul>  
            </td>
          </tr>
          <tr>  
            <td  align="center" ><img src="../../defaultpage2019/images/FUNDAY_landing_page_illu_international.png"  width="90%" /></td>
          </tr>

       </table>
       </div>
      </div>

      <div class="area4-2">
       <div class="ItemList">
       <table width="90%" align="center" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="center">
              <div class="Slogn">文字力與口語力均衡發展</div>
              <div class="content">
	             想學好英文，單靠口語是不夠的，聽說讀寫皆須均衡發展，才是學習最有效的方式! 透過聽力、閱讀、口說與文法等密集訓練，大幅提高記憶量，建立思考與運作方法讓學習不再有壓力，隨時隨地學好英文！    
              </div>              
            </td>
          </tr>
          <tr>  
            <td  align="center" ><img src="../../defaultpage2019/images/FUNDAY_landing_page_illu_ balance.png"   width="90%" /></td>
          </tr>

       </table>
       </div>      
      </div>

    <div class="area5">
      <div class="ItemList">
        <div class="Slogn">超過5000名學員實證分享<br/>聽聽他們怎麼說</div>
        <div class="BlockDv "></div>
      </div>
    </div>

    <div class="area6">
      <div class="ItemList">
        <div class="BlockDv">全台超過50間大專院校、百大/國營企業政府機關肯定的專業英語學習平台</div>

        <div class="BlockDv2 ">
            <div class="marquee" data-duplicated='true' data-direction='left'>
         			<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_cpc.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_tpc.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_chtel.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_metro.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_tyair.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_nacs.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_doetcg.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_tpl.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_weifubu.png" />
              <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_trservice.png" />
         			<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_khpl.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_tipc.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_tyafgh.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_imakcg.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_geo.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_wfh.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_tcafgh.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_shh.png" /> 
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_typb.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_cwb.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_ntpl.png" />
         			<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_chinaair.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_evaair.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_egat.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_dimerco.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_inventec.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_iccnet.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_ni.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_panasonic.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_opotma.png" />
              <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_sogo.png" />
         			<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_dell.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_pepsico.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_crcs.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_ad.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_chipmos.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_csbc.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_tpca.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_issi.png" /> 
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_veeco.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_ec.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_pofc.png" />    
         			<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_jyic.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_tf.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_qista.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_uniair.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_p_g.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_sw.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_axiomtek.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_tdk.png" />
			        <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_hie.png" />
              <img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_ilitek.png" />       		                             
            </div>
        </div>
        <div class="BlockDv2 ">
            <div class="marquee2" data-duplicated='true' data-direction='left'>
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_ntu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_ntnu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_wuuol.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_nayu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_shu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_mcu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_tmu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_cnu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_ndmc.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_ndu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_ncuoe.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_rocair.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_niu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_nkuosat.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_mu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_ntjcon.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_ntuosat.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_gjhs.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_isu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_cuot.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_ncyu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_tcuot.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_nyuost.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_hwu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_nou.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_afiot.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_ntsu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_ccu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_niot.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_ntuob.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_wh.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_chu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_cjh.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_fjshshs.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_aaroc.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_ncyuot.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_kmu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_stu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_hdut.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_scu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_mhjcohcm.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_yzu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_tuosat.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_kmeu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_ctbcbs.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_uot.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_pu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_toko.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_nfu.png" />
<img src="../../defaultpage2019/images2/FUNDAY_landing_page_logo_npuosat.png" />     
            </div>
        </div>  


      </div>
    </div>

    <div class="area8" >
      <div class="ItemList">
        <div class="Slogn">CEFR英語能力診斷</div>
        <div class="ContentB"><div class="rightIcon"></div>最具公信力</div>
        <div class="ContentB"><div class="rightIcon"></div>學習最全面</div>
        <div class="ContentB"><div class="rightIcon"></div>採用最廣泛</div>
        <div class="ContentS">了解自己的語言能力只是第一步<br>讓國際認定的語言能力標準<br>解析您的現在及如何到達璀璨的未來</div>
        <div class="Content">專業的英語老師，就在一鍵之間。</div>
        <div class="JButton Jhide" onclick="Fa(134);">免費預約</div>
      </div>  
    </div>
    <a id="area8"></a>

    <div class="area7">
     <div class="ItemList">
       <div class="LogoB"></div>
       <div class="Slogn">學習，隨手可得</div>      
     </div>
    </div>

    <footer>
      <nav>
        <ul>
	        <div class="Block" data-value="0">
            <div class="Slogn">與我們聯絡 <div class="arrow down"></div></div>
              <div class="slide">
	              <li >+886-2-2523-9777</li>
		            <li >0800-023-777 (限市話)</li>
		            <li >service@funday.asia<br/>服務時間：週一～週五 14:00~22:00</li>
              </div>             
          </div>  
	        <div class="Block" data-value="1">
            <div class="Slogn">社群<div class="arrow down"></div></div>
              <div class="slide">
                <div class="iconList">
                  <div class="iconFB link"></div>
                  <div class="iconIG link"></div>
                  <div class="iconYT link"></div>
                  <div class="iconLine link"></div>    
                </div>
                <div class="Blog linkli">FUNDAY 部落格</div> 
              </div>     
          </div>
          <div class="Block" data-value="2">
            <div class="Slogn">隱私權條款</div>
          </div>           
          <div class="Block is-app">
            <a class="is-android" href="https://play.google.com/store/apps/details?id=com.fundayapp" target="_blank">
              <img src="../../defaultpage2019/images/app_android.png"/></a>
            <a class="is-ios" href="https://apps.apple.com/tw/app/funday%E8%8B%B1%E8%AA%9E%E9%80%9A/id1476363900" target="_blank">
              <img src="../../defaultpage2019/images/app_ios.png"/></a>
            </div>
        </ul>
      </nav>    

       <div class="crop"> © 2019 Brainstorm Digital Communications Corp.<br> All rights reserved.Privacy Policy </div>

    </footer>
</div>


<script src="../../defaultpage2019/js/main-mobile.js" ></script>   

