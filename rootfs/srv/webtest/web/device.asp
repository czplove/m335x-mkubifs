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

		<div id="mainframe" class="mainNavg">
			<ul>
				<li id="mainframeNavg"><a href="index.asp">稳定性测试</a></li>
				<li id="settingNavg"><a href="device.asp">设备信息</a></li>
				<li id="downloadNavg"><a href="download.asp">下载</a></li>
			</ul>
		</div>
	
	</div>
	
	<div id="mainContent">
	
	<h3 align="left">设备信息</h3>
    <hr>  
    <table width=100%>
	 <tr>
	      <td width=20%><img src="graphics/board.jpg" width="250" height="250"></td>
		  <td width=3%>&nbsp;</td>
		  <td width=60%>
		    <h3>
		      <table width=100%>
			     <tr>
				      <td width=25%>Device:</td>
					  <td width=55% ><% getMachineName(); %></td>
				 </tr>
			  </table>
            </h3>		  
		  </td>
	 </tr>
	</table>
	</div>
	<div id="footer">
	版权所有(C) 广州致远电子有限公司
	</div>
	</center>


</body>

</html>
