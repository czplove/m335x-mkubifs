<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<meta http-equiv="Content-Language" content="zh-CN" />
<meta http-equiv="refresh" content="2">

<link type="text/css" rel="StyleSheet" href="style/css.css" />
<link type="text/css" rel="StyleSheet" href="style/navg.css" />

</head>

<body>
	<center>
	<div id="mainContent"> 
	<h3 align="center">稳定性测试列表(运行时间：<%getRunningTime();%>)</h3>
    <hr width=100%>
	<h4>
	    <table width=100%>
		   <tr>
		       <td width=30%>测试项目</td>  
			   <td width=30%>成功次数</td>
			   <td width=30%>失败次数</td>
		   </tr>
	       <%getStableTestUpdate();%>
		</table>
	</h4>
	</div>
	</center>
</body>

</html>
