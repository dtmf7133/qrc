<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.0"> 

<xsl:output method="html" version="4"/>

<!-- File name: index.xsl, part of qrc -->

<xsl:template match="CONTENT">

<HTML>
<HEAD>

      <TITLE>NuMode qrc</TITLE>
	  
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
    
      <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
      <meta name="description" content="NuMode qrc"/>
      <meta name="keywords" content="NuMode,qrc"/>
      <meta name="robots" content="index,follow"/>
      <meta name="author" content="NuMode"/> 
     
      <link rel="shortcut icon" href="./favicon.ico"/>
	  	
      <script src="/js/jquery-3.6.0.min.js" type="text/javascript"></script>
      
      <style>
        a {
          color:#d2524c;
        }
        a:focus {
          color:#d2524c;
        }
        a:hover {
         color:#d2524c;
        }
      </style>
    
</HEAD>

<BODY style="background: rgb(233, 238, 248);">

<div id="mynoscriptmsg" style="height:5000px;margin:30px;font-weight:900;">
QRC was developed using javascript technology too. Please enable javascript to get the website running properly.  
</div>
<script>
  document.getElementById("mynoscriptmsg").style.display = "none";
</script>  
<noscript>
  <div style="color:black;">
    Javascript not detected.
  </div>
</noscript>
   
   <div id="header" class="header" style="background: rgb(233, 238, 248);margin-left:18px;margin-top:18px;margin-bottom:18px;">
      <a href="https://github.com/dtmf7133/qrc" title="Oh, going to GitHub?">GitHub</a>&#8201;&#8201;&#8201;<a href="mailto:info@numode.eu" style="color:#d2524c;">Mail</a> 
   </div>
       
   <div id="content" style="width:100%;"> 

      <xsl:for-each select="ITEM[TYPE='qrc']">

      <xsl:sort select="ID" data-type="number" order="ascending"/>

           <div class="qrcode" style="float:left; width:350px; margin-top:60px; margin-left:40px; border:0px solid blue;text-align:center;">
		
             <img>
               <xsl:attribute name="src"><xsl:value-of select="QRCODEURL"/></xsl:attribute>
               <xsl:attribute name="style">width:348px;</xsl:attribute>
             </img>		
             
             <br/>

             <xsl:value-of select="URL"/>

           </div>

      </xsl:for-each>

      <div style="clear:all; margin:auto;">
        <br/><br/><br/>
      </div>
 
   </div>

<div style="clear:both;margin:auto;">
<br/><br/><br/>
</div>

<div style="clear:both;width:100%;height:300px;text-align:center;font-weight:900;background:#d2524c;color:#FFFFFF;">
<br/><br/><br/><br/><br/><br/>
To be included in web2qrc let us know by writing to <a href="mailto:info@web2qrc.com" style="color:#000000;">info@web2qrc.com</a>
</div>
         
  <div id="footerCont" style="clear:both;margin:auto;width:100%;">&#8201;</div>
  <div id="footer" style="clear:both;margin:auto;width:100%;text-align:right;">
    <span style="background:#FFFFFF; opacity:0.7;">&#8201;&#8201;get <a href="http://github.com/dtmf7133/qrc" style="color:#d2524c;font-weight:900;">qrc</a>. A <a href="https://numode.eu" style="color:#d2524c;font-weight:900;">NuMode</a> project.</span>&#8201;&#8201;
  </div>
           
  <script src="/js/common.js" type="text/javascript"></script>

<script>
<![CDATA[

function setFooterPos() {
 if (document.getElementById("footerCont")) {
   tollerance = 16;
   $("#footerCont").css("top", parseInt( window.innerHeight - $("#footerCont").height() - tollerance ) + "px");
   $("#footer").css("top", parseInt( window.innerHeight - $("#footer").height() - tollerance ) + "px");
 }
}

window.addEventListener("load", function() {
  setTimeout("setFooterPos()", 1000);
});

window.addEventListener("resize", function() {
  setTimeout("setFooterPos()", 1000);
});

]]>
</script>

</BODY>
</HTML>

</xsl:template>

</xsl:stylesheet>
