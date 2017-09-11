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

		<div id="download" class="mainNavg">
			<ul>
				<li id="mainframeNavg"><a href="index.asp">稳定性测试</a></li>
				<li id="settingNavg"><a href="device.asp">设备信息</a></li>
				<li id="downloadNavg"><a href="download.asp">下载</a></li>
			</ul>
		</div>
	</div>

	<div id="mainContent">
	
	<h3 align="center">错误日志文件列表</h3>
    <hr>  
	<%getStableLogFile();%>
   <br>
	<form action=/goform/finishStableForm method=POST>
	        <input type=submit name="ok" value="完成高低温测试，下次启动不再进行任何测试">
	</form>
	<form action=/goform/gotoFunctionForm method=POST>
	        <input type=submit name="ok" value="完成高低温测试，下次启动进入功能性测试">
	</form>
	</div>
	<div id="footer">
	版权所有(C) 广州致远电子有限公司
	</div>
	</center>


</body>

</html>
