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

		<div id="detailtest" class="mainNavg">
			<ul>
				<li id="mainframeNavg"><a href="home.asp">主页</a></li>
				<li id="settingNavg"><a href="stable.asp?setid=0">稳定性测试设置</a></li>
				<li id="detailtestNavg"><a href="detail_test.asp?testid=0">详细测试</a></li>
			<!--	<li id="fasttestNavg"><a href="fast_test.asp">工厂测试</a></li> -->
				<li id="downloadNavg"><a href="download_f.asp">测试结果</a></li>
			</ul>
		</div>
		
		<div id="detailtestCollect" class="secondaryNavg">
			<ul>
				<% getDetailTestList();%>
			</ul>
		</div>
	
	</div>
	<% getDetailTestId(testid); %>
<!--	<div id="mainContent">   -->
	<table width=75%>
	    <tr>
            <td><h3 align="left"><% getTestName(); %>测试页面</h3></td>
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
			         <td width=100%>
						 <iframe id="iFrame1" name="iFrame1" width=100% 
						         onload="this.height=iFrame1.document.body.scrollHeight" 
						         frameborder="0" src="<%getInfoPage();%>" >
						 </iframe>
					 </td>
				  </tr>
				</table>
			</td>
		</tr>
		<tr>
	        <td>		
				<table width=100%>
					   <tr>
					        <td>
				                <form action=/goform/executeFormTest method=POST>
						            <input type=submit name="ok" value="运行测试程序">
					            </form>
						    </td>
						</tr>
				</table>
	        </td> 
		</tr>
	</table>
<!--	</div>  -->
	<div id="footer">
	版权所有(C) 广州致远电子有限公司
	</div>
	</center>


</body>

</html>
