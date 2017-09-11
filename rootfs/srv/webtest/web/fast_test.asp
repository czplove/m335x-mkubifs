<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<meta http-equiv="Content-Language" content="zh-CN" />

<link type="text/css" rel="StyleSheet" href="style/css.css" />
<link type="text/css" rel="StyleSheet" href="style/navg.css" />

</head>

<body>
	<center>
   <!--	<div id="header"> --> 
	<table width=75%>
	<tr>
	<td width=5%>&nbsp;</td>
	<td ><img width="80" height="80" src="graphics/zlg.jpg"></td>
	<td width=10%>&nbsp;</td>
	<td ><img width="750" height="80" src="graphics/epc.jpg"></td>
	</tr>
	</table>
	<!-- </div> --> 
  <br>

	<div class="navg">

		<div id="fasttest" class="mainNavg">
			<ul>
				<li id="mainframeNavg"><a href="home.asp">主页</a></li>
				<li id="settingNavg"><a href="setting.asp?setid=0">设置</a></li>
				<li id="detailtestNavg"><a href="detail_test.asp?testid=0">详细测试</a></li>
				<li id="fasttestNavg"><a href="fast_test.asp">工厂测试</a></li>
				<li id="downloadNavg"><a href="download.asp">下载</a></li>
			</ul>
		</div>
		
		<div id="mainframeCollect" class="secondaryNavg">
			<ul>
				<% getDetailTestList(); %>
			</ul>
		</div>
	
	</div>
   	<% factoryTest();%>
   <!--	<div id="mainContent"> -->
	<table width=75%>
		<tr>
            <td><h3 align="left">测试结果列表</h3></td>
	    </tr>
		<tr>
			<td>
		        <hr>
			</td>
		</tr>
	    <tr>
		    <td>
			    <table width=100%>
				 <tr>
				     <td width=30%>&nbsp;</td>
					 <td width=20%><h2>测试项目</h2></td>
					 <td width=20%><h2>测试结果</h2></td>
					 <td width=30%>&nbsp;</td>
				 </tr>
				 <% getTestContent();%>
				</table>
			</td>
		</tr>
	</table>
<!--	</div> -->
	<div id="footer">
	版权所有(C) 广州致远电子有限公司
	</div>
	</center>


</body>

</html>