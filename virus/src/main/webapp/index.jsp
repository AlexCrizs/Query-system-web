<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>疫情管理系统</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Access-Control-Allow-Origin" content="*">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<link rel="icon" href="favicon.ico">
<link rel="stylesheet" href="layui/css/layui.css" media="all" />
<link rel="stylesheet" href="css/index.css" media="all" />
</head>
<body class="main_body">
	<div class="layui-layout layui-layout-admin">
		<!-- 顶部 -->
		<div class="layui-header header">
			<div class="layui-main mag0">
				<a  class="logo">疫情管理系统</a>
				<!-- 显示/隐藏菜单 -->
				<a href="javascript:;" class="seraph hideMenu icon-caidan"></a>
				<!-- 顶级菜单 -->
				<!-- <ul class="layui-nav mobileTopLevelMenus" mobile>
					<li class="layui-nav-item" data-menu="contentManagement">
						<a href="javascript:;"><i class="seraph icon-caidan"></i><cite>layuiCMS</cite></a>
						<dl class="layui-nav-child">
							<dd class="layui-this" data-menu="contentManagement"><a href="javascript:;"><i class="layui-icon" data-icon="&#xe63c;">&#xe63c;</i><cite>DDDDDD</cite></a></dd>
							<dd data-menu="memberCenter"><a href="javascript:;"><i class="seraph icon-icon10" data-icon="icon-icon10"></i><cite>AAA</cite></a></dd>
							<dd data-menu="systemeSttings"><a href="javascript:;"><i class="layui-icon" data-icon="&#xe620;">&#xe620;</i><cite>BBB</cite></a></dd>
							<dd data-menu="seraphApi"><a href="javascript:;"><i class="layui-icon" data-icon="&#xe705;">&#xe705;</i><cite>CCCC</cite></a></dd>
						</dl>
					</li>
				</ul> -->
				
				
				<c:import url="/left.jsp"></c:import>
				
				<!-- 顶部右侧菜单 -->
				<ul class="layui-nav top_menu">
					<li class="layui-nav-item" pc><a href="javascript:;"
						class="clearCache"><i class="layui-icon" data-icon="&#xe640;">&#xe640;</i><cite>清除缓存</cite><span
							class="layui-badge-dot"></span></a></li>
					<li class="layui-nav-item lockcms" pc><a href="javascript:;"><!--<i
							class="seraph icon-lock"></i><cite>锁屏</cite>--></a></li>
					<li class="layui-nav-item" id="userInfo"><a
						href="javascript:;"><img src="images/face.jpg"
							class="layui-nav-img userAvatar" width="35" height="35"><cite
							class="adminName">${user.username}${admin.username}</cite></a>
						<dl class="layui-nav-child">
							<dd pc>
								<a href="javascript:;" class="functionSetting"><i
									class="layui-icon">&#xe620;</i><cite>功能设定</cite><span
									class="layui-badge-dot"></span></a>
							</dd>
							<dd pc>
								<a href="javascript:;" class="changeSkin"><i
									class="layui-icon">&#xe61b;</i><cite>更换皮肤</cite></a>
							</dd>
							<dd>
								<a href="${pageContext.request.contextPath }/logout" class="signOut"><i
									class="seraph icon-tuichu"></i><cite>退出</cite></a>
							</dd>
						</dl></li>
				</ul>
			</div>
		</div>
		<!-- 左侧导航 -->
		<div class="layui-side layui-bg-black">
			<div class="user-photo">
				<a class="img" title="我的头像"><img src="images/face.jpg"
					class="userAvatar"></a>
				<p>
					你好！<span class="userName">${user.username}${admin.username}</span>, 欢迎登录
				</p>
			</div>
			<!-- 搜索 -->
			<div class="layui-form component">
				<select name="search" id="search" lay-search lay-filter="searchPage">
					<option value="">搜索页面或功能</option>
					<option value="1">首页</option>
					<option value="2">virus列表</option>
				</select>
				<i class="layui-icon">&#xe615;</i>
			</div>
			<div class="navBar layui-side-scroll" id="navBar">
				<ul class="layui-nav layui-nav-tree">
					<li class="layui-nav-item layui-this"><a href="javascript:;"
						data-url="page/main.jsp"><i class="layui-icon" data-icon=""></i><cite>首页</cite></a>
					</li>
				</ul>
			</div>
		</div>
		<!-- 右侧内容 -->
		<div class="layui-body layui-form">
			<div class="layui-tab mag0" lay-filter="bodyTab" id="top_tabs_box">
				<ul class="layui-tab-title top_tab" id="top_tabs">
					<li class="layui-this" lay-id=""><i class="layui-icon">&#xe68e;</i>
						<cite>首页</cite></li>
				</ul>
				<ul class="layui-nav closeBox">
					<li class="layui-nav-item"><a href="javascript:;"><i
							class="layui-icon caozuo">&#xe643;</i> 页面操作</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" class="refresh refreshThis"><i
									class="layui-icon">&#x1002;</i> 刷新当前</a>
							</dd>
							<dd>
								<a href="javascript:;" class="closePageOther"><i
									class="seraph icon-prohibit"></i> 关闭其他</a>
							</dd>
							<dd>
								<a href="javascript:;" class="closePageAll"><i
									class="seraph icon-guanbi"></i> 关闭全部</a>
							</dd>
						</dl></li>
				</ul>
				<div class="layui-tab-content clildFrame">
					<div class="layui-tab-item layui-show">
						<iframe src="page/main.jsp"></iframe>
					</div>
				</div>
			</div>
		</div>
		<!-- 底部 -->
		<div class="layui-footer footer">
			<p>
				<span>大王不高兴Wzt @<%=Calendar.getInstance().get(Calendar.YEAR)%> ${user.username}${admin.username}</span>
			</p>
		</div>
	</div>

	<!-- 移动导航 -->
	<div class="site-tree-mobile">
		<i class="layui-icon">&#xe602;</i>
	</div>
	<div class="site-mobile-shade"></div>

	<script type="text/javascript" src="layui/layui.js"></script>
	<!-- <script type="text/javascript" src="js/index.js"></script> -->
	<script type="text/javascript" src="js/cache.js"></script>
</body>
<script type="text/javascript">

var $,tab,dataStr,layer;
layui.config({
	base : "js/"
}).extend({
	"bodyTab" : "bodyTab"
})
layui.use(['bodyTab','form','element','layer','jquery'],function(){
	var form = layui.form,
		element = layui.element;
		$ = layui.$;
    	layer = parent.layer === undefined ? layui.layer : top.layer;
 //   	var user="${user.username}";
    	var type="${user.type}";
    	if (type=='1' || type=='11') {
    		tab = layui.bodyTab({
			//最大可打开窗口数量
    			openTabNum : "50",  
			//获取菜单json地址
    			url : "json/user2.json" 
    		});
		}else {
			tab = layui.bodyTab({
				//最大可打开窗口数量
				openTabNum : "50",  
				//获取菜单json地址
				url : "json/user1.json" 
			});
		}
	//通过顶部菜单获取左侧二三级菜单   注：此处只做演示之用，实际开发中通过接口传参的方式获取导航数据
	function getData(json){
		$.getJSON(tab.tabConfig.url,function(data){
			if(json == "A"){
				dataStr = data.A;
				//重新渲染左侧菜单
				tab.render();
			}else if(json == "B"){
				dataStr = data.B;
				tab.render();
			}else if(json == "C"){
				dataStr = data.C;
				tab.render();
			}else if(json == "D"){
                dataStr = data.D;
                tab.render();
            }else if(json == "E"){
                dataStr = data.E;
                tab.render();
            }else if(json == "F"){
                dataStr = data.F;
                tab.render();
            }else if(json == "G"){
                dataStr = data.G;
                tab.render();
            }else if(json == "H"){
                dataStr = data.H;
                tab.render();
            }else if(json == "I"){
                dataStr = data.I;
                tab.render();
            }else if(json == "J"){
                dataStr = data.J;
                tab.render();
            }else if(json == "K"){
                dataStr = data.K;
                tab.render();
            }else if(json == "L"){
                dataStr = data.L;
                tab.render();
            }else if(json == "M"){
                dataStr = data.M;
                tab.render();
            }else if(json == "N"){
                dataStr = data.N;
                tab.render();
            }else if(json == "O"){
                dataStr = data.O;
                tab.render();
            }else if(json == "P"){
                dataStr = data.P;
                tab.render();
            }else if(json == "Q"){
                dataStr = data.Q;
                tab.render();
            }else if(json == "R"){
                dataStr = data.R;
                tab.render();
            }else if(json == "S"){
                dataStr = data.S;
                tab.render();
            }else if(json == "T"){
                dataStr = data.T;
                tab.render();
            }else if(json == "U"){
                dataStr = data.U;
                tab.render();
            }else if(json == "V"){
                dataStr = data.V;
                tab.render();
            }else if(json == "W"){
                dataStr = data.W;
                tab.render();
            }else if(json == "X"){
                dataStr = data.X;
                tab.render();
            }else if(json == "Y"){
                dataStr = data.Y;
                tab.render();
            }else if(json == "Z"){
                dataStr = data.Z;
                tab.render();
            }
			
//			alert(dataStr[0].title);
		})
	}
	//页面加载时判断左侧菜单是否显示
	//通过顶部菜单获取左侧菜单
	$(".topLevelMenus li,.mobileTopLevelMenus dd").click(function(){
		if($(this).parents(".mobileTopLevelMenus").length != "0"){
			$(".topLevelMenus li").eq($(this).index()).addClass("layui-this").siblings().removeClass("layui-this");
		}else{
			$(".mobileTopLevelMenus dd").eq($(this).index()).addClass("layui-this").siblings().removeClass("layui-this");
		}
		$(".layui-layout-admin").removeClass("showMenu");
		$("body").addClass("site-mobile");
		getData($(this).data("menu"));
		//渲染顶部窗口
		tab.tabMove();
	})

	//隐藏左侧导航
	$(".hideMenu").click(function(){
		if($(".topLevelMenus li.layui-this a").data("url")){
			//主要为了避免左侧显示的内容与顶部菜单不匹配
			layer.msg("此栏目状态下左侧菜单不可展开");  
			return false;
		}
		$(".layui-layout-admin").toggleClass("showMenu");
		//渲染顶部窗口
		tab.tabMove();
	})

	//通过顶部菜单获取左侧二三级菜单   注：此处只做演示之用，实际开发中通过接口传参的方式获取导航数据
	getData("A");

	//手机设备的简单适配
    $('.site-tree-mobile').on('click', function(){
		$('body').addClass('site-mobile');
	});
    $('.site-mobile-shade').on('click', function(){
		$('body').removeClass('site-mobile');
	});

	// 添加新窗口
	$("body").on("click",".layui-nav .layui-nav-item a:not('.mobileTopLevelMenus .layui-nav-item a')",function(){
		//如果不存在子级
		if($(this).siblings().length == 0){
			addTab($(this));
			//移动端点击菜单关闭菜单层
			$('body').removeClass('site-mobile');  
		}
		$(this).parent("li").siblings().removeClass("layui-nav-itemed");
	})

	//清除缓存
	$(".clearCache").click(function(){
		window.sessionStorage.clear();
        window.localStorage.clear();
        var index = layer.msg('清除缓存中，请稍候',{icon: 16,time:false,shade:0.8});
        setTimeout(function(){
            layer.close(index);
            layer.msg("缓存清除成功！");
        },1000);
    })

	//刷新后还原打开的窗口
    if(cacheStr == "true") {
        if (window.sessionStorage.getItem("menu") != null) {
            menu = JSON.parse(window.sessionStorage.getItem("menu"));
            curmenu = window.sessionStorage.getItem("curmenu");
            var openTitle = '';
            for (var i = 0; i < menu.length; i++) {
                openTitle = '';
                if (menu[i].icon) {
                    if (menu[i].icon.split("-")[0] == 'icon') {
                        openTitle += '<i class="seraph ' + menu[i].icon + '"></i>';
                    } else {
                        openTitle += '<i class="layui-icon">' + menu[i].icon + '</i>';
                    }
                }
                openTitle += '<cite>' + menu[i].title + '</cite>';
                openTitle += '<i class="layui-icon layui-unselect layui-tab-close" data-id="' + menu[i].layId + '">&#x1006;</i>';
                element.tabAdd("bodyTab", {
                    title: openTitle,
                    content: "<iframe src='" + menu[i].href + "' data-id='" + menu[i].layId + "'></frame>",
                    id: menu[i].layId
                })
                //定位到刷新前的窗口
                if (curmenu != "undefined") {
                    if (curmenu == '' || curmenu == "null") {  
			    //定位到后台首页
                        element.tabChange("bodyTab", '');
                    } else if (JSON.parse(curmenu).title == menu[i].title) {  
			    //定位到刷新前的页面
                        element.tabChange("bodyTab", menu[i].layId);
                    }
                } else {
                    element.tabChange("bodyTab", menu[menu.length - 1].layId);
                }
            }
            //渲染顶部窗口
            tab.tabMove();
        }
    }else{
		window.sessionStorage.removeItem("menu");
		window.sessionStorage.removeItem("curmenu");
	}
})

//打开新窗口
function addTab(_this){
	tab.tabAdd(_this);
}


//图片管理弹窗
function showImg(){
    $.getJSON('json/images.json', function(json){
        var res = json;
        layer.photos({
            photos: res,
            anim: 5
        });
    });
}


</script>
</html>
