<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
  <head><title>쇼핑몰</title>
  <style>
  .main-frame {
  text-align: center;
  }
 * { box-sizing:border-box;}
  
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
  body{
  background: #E6E6E6
  }
  
  .label_content {
  position:absolute;
  transform:translate(-50%,-50%);
  color:white;
  }
  .label_content .name {
  font-size:20px;
  font-weight:900;
  color:maroon;
  }
  .label_content .price {
  font-size:18px;
  display:inline-block;
  font-weight:900;
  color:maroon;
  }
  
 <!-- 체크박스 보이기 설정 -->
 .label_content input {display:none;}
 
  <!-- 이미지 뒷 배경 -->
.label_content input + label {
cursor:pointer;
background:maroon;
padding:4px;
display:inline-block;
border-radius:5px;
}

<!--팝업 설정-->
.label_content input + label + div {
background:maroon;
border:1px solid brown;
position:absolute;
top:30%;
padding:30px;
width:300px;
transform:translate(-50%,-50%);
transition:all .5s cubic-bezier(0.86, 0, 0.07, 1);
opacity:0;
visibility:hidden;
}

<!-- 팝업 이미지 어느정도 부분에 뜰지..?-->
.label_content input:checked + label + div {
opacity:1;
visibility:visible;
top:50%;
}

.label_content input + label + div label {
position:absolute;
top:50%;
left:50%;
transform:translate(-50%,-50%);
background:maroon;
color:#fff;
padding:15px;
border-radius:100%;
cursor:pointer;
}

  </style>
  </head>
  
  <body>
  <div class="main-frame">
  <h1><a href="main.xml" style="color:maroon; font-size: 50px;font-family: courier;text-decoration: none;">Shopping Mall</a></h1> <hr color="maroon"/> 
  <div class="topnav">
  <a href="outer.xml">OUTER</a>
<a href="top.xml">TOP</a>
<a href="bottoms.xml">BOTTOMS</a>
<a href="accessory.xml">ACCESSORY</a>
  </div>
<br/>
  <h2 align="center" style="font-size: 35px; font-family: courier; color:maroon;"><xsl:value-of select="쇼핑몰/상품카테고리"/> </h2>
  <br/><br/><br/>
  <div style="font-family: 돋움;"><xsl:apply-templates select="//상품/이름[@넘버='1']"/></div>
  <div style="font-family: 돋움;"><xsl:apply-templates select="//상품/이름[@넘버='2']"/></div>
  <div  style="font-family: 돋움; "><xsl:apply-templates select="//상품/이름[@넘버='3']"/></div>
    <br/><br/><br/><br/><br/>    <br/><br/><br/><br/><br/>    <br/><br/><br/><br/><br/>     <br/><br/><br/><br/><br/>
     <br/><br/><br/><br/><br/>
     <br/><br/><br/><br/>
    <br/><br/><br/><br/><br/>

  <div style="font-family: 돋움;"><xsl:apply-templates select="//상품/이름[@넘버='4']"/></div>
  <div style="font-family: 돋움;"><xsl:apply-templates select="//상품/이름[@넘버='5']"/></div>
  <div style="font-family: 돋움;"><xsl:apply-templates select="//상품/이름[@넘버='6']"/></div>
  </div>
  </body>
  </html>
  </xsl:template>
  
  <xsl:template match="이름[@넘버='1']">
    <div class="label_content" style="position:absolute; left:30%;transform:translate(-50%,0);">
    <input type="checkbox" id="info1"/>
    <label for="info1"> <xsl:apply-templates select="../이미지"/></label>
<div class="content">
  <p>
  이름 : <xsl:value-of select="../이름"/><br/><br/>
  색상 : <xsl:value-of select="../색상"/><br/><br/>
  사이즈 : <xsl:value-of select="../사이즈"/><br/><br/>
  재질 : <xsl:value-of select="../재질"/><br/><br/>
  설명 : <xsl:value-of select="../설명"/><br/><br/><br/>
  </p>
  <p style="font-size: 24px;"><strong>가격 : <xsl:value-of select="../가격"/><xsl:value-of select="../가격/@단위"/></strong>, <xsl:value-of select="format-number(../가격 div 1165.73,'###00.00')"/> dollar</p>
  </div>
   <h3 class="name" > <strong><xsl:value-of select="../이름"/> </strong></h3>
   <div class="price"><xsl:value-of select="../가격"/></div>
    </div>
  </xsl:template>
  
   <xsl:template match="이름[@넘버='2']">
<div class="label_content" style="position:absolute; left:50%;transform:translate(-50%,0);">
    <input type="checkbox" id="info2"/>
    <label for="info2"> <xsl:apply-templates select="../이미지"/></label>
<div class="content">
  <p>
  이름 : <xsl:value-of select="../이름"/><br/><br/>
  색상 : <xsl:value-of select="../색상"/><br/><br/>
  사이즈 : <xsl:value-of select="../사이즈"/><br/><br/>
  재질 : <xsl:value-of select="../재질"/><br/><br/>
  설명 : <xsl:value-of select="../설명"/><br/><br/><br/>
  </p>
  <p style="font-size: 24px;"><strong>가격 : <xsl:value-of select="../가격"/><xsl:value-of select="../가격/@단위"/></strong>, <xsl:value-of select="format-number(../가격 div 1165.73,'###00.00')"/> dollar</p>
  </div>
   <h3 class="name" > <strong><xsl:value-of select="../이름"/> </strong></h3>
   <div class="price"><xsl:value-of select="../가격"/></div>
    </div>  
  </xsl:template>

 <xsl:template match="이름[@넘버='3']">
 <div class="label_content" style="position:absolute; left:70%;transform:translate(-50%,0);">
    <input type="checkbox" id="info3"/>
    <label for="info3"> <xsl:apply-templates select="../이미지"/></label>
<div class="content">
  <p>
  이름 : <xsl:value-of select="../이름"/><br/><br/>
  색상 : <xsl:value-of select="../색상"/><br/><br/>
  사이즈 : <xsl:value-of select="../사이즈"/><br/><br/>
  재질 : <xsl:value-of select="../재질"/><br/><br/>
  설명 : <xsl:value-of select="../설명"/><br/><br/><br/>
  </p>
  <p style="font-size: 24px;"><strong>가격 : <xsl:value-of select="../가격"/><xsl:value-of select="../가격/@단위"/></strong>, <xsl:value-of select="format-number(../가격 div 1165.73,'###00.00')"/> dollar</p>
  </div>
   <h3 class="name" > <strong><xsl:value-of select="../이름"/> </strong></h3>
   <div class="price"><xsl:value-of select="../가격"/></div>
    </div>
  </xsl:template>
 
  <xsl:template match="이름[@넘버='4']">
  <div class="label_content"  style="position:absolute; left:30%;transform:translate(-50%,0);">
    <input type="checkbox" id="info4"/>
    <label for="info4"> <xsl:apply-templates select="../이미지"/></label>
<div class="content">
  <p>
  이름 : <xsl:value-of select="../이름"/><br/><br/>
  색상 : <xsl:value-of select="../색상"/><br/><br/>
  사이즈 : <xsl:value-of select="../사이즈"/><br/><br/>
  재질 : <xsl:value-of select="../재질"/><br/><br/>
  설명 : <xsl:value-of select="../설명"/><br/><br/><br/>
  </p>
  <p style="font-size: 24px;"><strong>가격 : <xsl:value-of select="../가격"/><xsl:value-of select="../가격/@단위"/></strong>, <xsl:value-of select="format-number(../가격 div 1165.73,'###00.00')"/> dollar</p>
  </div>
   <h3 class="name" > <strong><xsl:value-of select="../이름"/> </strong></h3>
   <div class="price"><xsl:value-of select="../가격"/></div>
    </div>
  </xsl:template>
  
   <xsl:template match="이름[@넘버='5']">
  <div class="label_content"  style="position:absolute; left:50%;transform:translate(-50%,0);">
    <input type="checkbox" id="info5"/>
    <label for="info5"> <xsl:apply-templates select="../이미지"/></label>
<div class="content">
  <p>
  이름 : <xsl:value-of select="../이름"/><br/><br/>
  색상 : <xsl:value-of select="../색상"/><br/><br/>
  사이즈 : <xsl:value-of select="../사이즈"/><br/><br/>
  재질 : <xsl:value-of select="../재질"/><br/><br/>
  설명 : <xsl:value-of select="../설명"/><br/><br/><br/>
  </p>
  <p style="font-size: 24px;"><strong>가격 : <xsl:value-of select="../가격"/><xsl:value-of select="../가격/@단위"/></strong>, <xsl:value-of select="format-number(../가격 div 1165.73,'###00.00')"/> dollar</p>
  </div>
   <h3 class="name" > <strong><xsl:value-of select="../이름"/> </strong></h3>
   <div class="price"><xsl:value-of select="../가격"/></div>
    </div>
  </xsl:template>
  
   <xsl:template match="이름[@넘버='6']">
  <div class="label_content"  style="position:absolute; left:70%;transform:translate(-50%,0);">
    <input type="checkbox" id="info6"/>
    <label for="info6"> <xsl:apply-templates select="../이미지"/></label>
<div class="content">
  <p>
  이름 : <xsl:value-of select="../이름"/><br/><br/>
  색상 : <xsl:value-of select="../색상"/><br/><br/>
  사이즈 : <xsl:value-of select="../사이즈"/><br/><br/>
  재질 : <xsl:value-of select="../재질"/><br/><br/>
  설명 : <xsl:value-of select="../설명"/><br/><br/><br/>
  </p>
  <p style="font-size: 24px;"><strong>가격 : <xsl:value-of select="../가격"/><xsl:value-of select="../가격/@단위"/></strong>, <xsl:value-of select="format-number(../가격 div 1165.73,'###00.00')"/> dollar</p>
  </div>
   <h3 class="name" > <strong><xsl:value-of select="../이름"/> </strong></h3>
   <div class="price"><xsl:value-of select="../가격"/></div>
    </div>
  </xsl:template>
  
<xsl:template match="이미지">
  <img align="left">
  <xsl:attribute name="src">
  <xsl:value-of select="./@file"/></xsl:attribute>
  <xsl:attribute name="width">
  <xsl:value-of select="ceiling(./@w div 2)"/></xsl:attribute>
  <xsl:attribute name="height">
  <xsl:value-of select="ceiling(./@h div 2)"/></xsl:attribute>
  </img>
  </xsl:template>
  
</xsl:stylesheet>
