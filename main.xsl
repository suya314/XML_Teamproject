<?xml version="1.0" encoding="UTF-8"?>
  <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
  <xsl:template match="/">
  <html>
  <head>
  <title>쇼핑몰</title>
  <style>
  <!-- 기본 설정 -->
  .main-frame {
  text-align: center;
  height: 500px;
  }
  * {
   box-sizing:border-box;
   }
   body{
  background: #E6E6E6;
  }
  
  p {
 font-family: 돋움;
 color: maroon;
  font-weight:bold;
  font-size : 110%;
 }
  
 table  {
  border-spacing: 8px;
  font-size: 12px;
  }
  <!-- 메뉴바 설정 -->
 .topnav {
  overflow: hidden;
  background-color: maroon; 
  margin: auto;
  width: 50%;
}

.topnav a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  width:25%
}

.topnav a:hover {
  background-color: white;
  color: maroon;
}
<!-- 광고 이미지 크기-->
.slidershow{
  width: 100%;
  height: 350px;
  overflow: hidden;
}
<!-- 광고 이미지 위치-->
.middle{
  position: absolute;
  margin-left:20%;
  width:60%;
}
<!-- 광고 선택 위치-->
.navigation{
  position: absolute;
  bottom: 20px;
  left: 50%;
  transform: translateX(-50%);
  display: flex;
}
<!-- 광고 선택 설정-->
.bar{
  width: 50px;
  height: 10px;
  border: 2px solid #fff;
  margin: 6px;
  cursor: pointer;
  transition: 0.4s;
}
.bar:hover{
  background: #fff;
}

input[name="r"]{
    position: absolute;
    visibility: hidden;
}

.slides{
  width: 500%;
  height: 100%;
  display: flex;
}

.slide{
  width: 20%;
  transition: 0.6s;
}
.slide img{
  width: 100%;
  height: 100%;
}

#r1:checked ~ .s1{
  margin-left: 0;
}
#r2:checked ~ .s1{
  margin-left: -20%;
}
#r3:checked ~ .s1{
  margin-left: -40%;
}
#r4:checked ~ .s1{
  margin-left: -60%;
}
#r5:checked ~ .s1{
  margin-left: -80%;
}
.center {
height: 500px;
margin: 30px;
}

.footer {
padding: 2px;
background-color: #777;
text-align: center;
color: white;
width: 100%
}

img {
background:maroon;
padding:4px;
display:inline-block;
border-radius:5px;
}
  </style>
  </head>
  
  <body>
  <div class="main-frame">
  <h1><a href="main.xml" style="color:maroon; font-size: 50px;font-family: courier; text-decoration: none;">Shopping Mall</a></h1> <hr color="maroon"/>  
  <div class="topnav">
  <a href="outer.xml">OUTER</a>
<a href="top.xml">TOP</a>
<a href="bottoms.xml">BOTTOMS</a>
<a href="accessory.xml">ACCESSORY</a>
  </div>
  <br/>
 
 <div class="slidershow middle">
      <div class="slides">
        <input type="radio" name="r" id="r1"/>
        <input type="radio" name="r" id="r2"/>
        <input type="radio" name="r" id="r3"/>
        <input type="radio" name="r" id="r4"/>
        <input type="radio" name="r" id="r5"/>
        <div class="slide s1">
          <xsl:apply-templates select="메인/광고1"/>
        </div>
        <div class="slide">
          <xsl:apply-templates select="메인/광고2"/>
        </div>
        <div class="slide">
          <xsl:apply-templates select="메인/광고3"/>
        </div>
        <div class="slide">
          <xsl:apply-templates select="메인/광고4"/>
        </div>
        <div class="slide">
          <xsl:apply-templates select="메인/광고5"/>
        </div>
      </div>
      <div class="navigation">
        <label for="r1" class="bar"></label>
        <label for="r2" class="bar"></label>
        <label for="r3" class="bar"></label>
        <label for="r4" class="bar"></label>
        <label for="r5" class="bar"></label>
      </div>
    </div>
 </div>
  <h1 align="center" style="color: maroon; margin-top: 50px;">Popular Item</h1>
  <div class="center">
  <div style="position:absolute; left:30%;transform:translate(-50%,0);"><a href="outer.xml"><xsl:apply-templates select="메인/인기상품[@카테고리='아우터']/이미지"/></a>
  <p align="center"><b><xsl:value-of select="메인/인기상품[@카테고리='아우터']/이름"/><br/>
  <xsl:value-of select="메인/인기상품[@카테고리='아우터']/가격"/></b></p></div>
  
  <div style="position:absolute; left:50%; transform:translate(-50%,0);"><a href="accessory.xml"><xsl:apply-templates select="메인/인기상품[@카테고리='반지']/이미지"/></a>
  <p align="center"><b><xsl:value-of select="메인/인기상품[@카테고리='반지']/이름"/><br/>
  <xsl:value-of select="메인/인기상품[@카테고리='반지']/가격"/></b></p></div>
  
  <div style="position:absolute; left:70%;transform:translate(-50%,0);"><a href="bottoms.xml"><xsl:apply-templates select="메인/인기상품[@카테고리='하의']/이미지"/></a>
  <p align="center"><b><xsl:value-of select="메인/인기상품[@카테고리='하의']/이름"/><br/>
  <xsl:value-of select="메인/인기상품[@카테고리='하의']/가격"/></b></p></div>
  </div>
  
 
 
 <div class="footer">
<p style="text-align: left; font-family: 돋움;">
<xsl:apply-templates select="메인/표시"/>
</p> 
 </div>
  </body>
  </html>
  </xsl:template>
    
<xsl:template match="광고1">
<a href="https://shop.adidas.co.kr/adiMain.action?NFN_ST=Y" target="_blank">
  <img>
  <xsl:attribute name="src">
  <xsl:value-of select="./@file"/></xsl:attribute>
  </img>
  </a>
  </xsl:template>
  
  <xsl:template match="광고2">
  <a href="https://www.nike.com/kr/ko_kr/" target="_blank">
  <img>
  <xsl:attribute name="src">
  <xsl:value-of select="./@file"/></xsl:attribute>
  </img>
  </a>
  </xsl:template>
  
  <xsl:template match="광고3">
  <a href="https://kr.puma.com/" target="_blank">
  <img>
  <xsl:attribute name="src">
  <xsl:value-of select="./@file"/></xsl:attribute>
  </img>
  </a>
  </xsl:template>
  
  <xsl:template match="광고4">
  <a href="https://www.fila.co.kr/main/main.asp" target="_blank">
  <img>
  <xsl:attribute name="src">
  <xsl:value-of select="./@file"/></xsl:attribute>
  </img>
  </a>
  </xsl:template>
  
  <xsl:template match="광고5">
  <a href="https://shop.vans.co.kr/" target="_blank">
  <img>
  <xsl:attribute name="src">
  <xsl:value-of select="./@file"/></xsl:attribute>
  </img>
  </a>
  </xsl:template>
  
  <xsl:template match="표시">
<table style="color: white;">
            <tr><td colspan="6"><b><xsl:value-of select="translate(제작, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/></b></td></tr>
            <tr><th align="left">상호</th><td><xsl:value-of select="상호"/><td> </td></td>
                   <th align="left">사업장소재지</th><td><xsl:value-of select="사업장소재지"/><td></td></td>
                   <th align="left">안내전화</th><td><xsl:value-of select="안내전화/@지역번호"/>-<xsl:value-of select="안내전화"/><td></td></td></tr>
            <tr><th align="left">조장</th><td><xsl:value-of select="조장"/><td></td></td>
                   <th align="left">책임자</th><td><xsl:value-of select="책임자"/><td></td></td>
                   <th align="left">제휴광고문의</th><td><xsl:value-of select="제휴광고문의"/><td></td></td></tr>
            <tr><td colspan="6"><b><xsl:value-of select="저작권"/></b><td></td></td></tr>
    </table>
  </xsl:template>
  
  <xsl:template match="이미지">
  <img>
  <xsl:attribute name="src">
  <xsl:value-of select="./@file"/></xsl:attribute>
  <xsl:attribute name="width">
  <xsl:value-of select="ceiling(./@w div 2)"/></xsl:attribute>
  <xsl:attribute name="height">
  <xsl:value-of select="ceiling(./@h div 2)"/></xsl:attribute>
  </img>
  </xsl:template>
  
</xsl:stylesheet>