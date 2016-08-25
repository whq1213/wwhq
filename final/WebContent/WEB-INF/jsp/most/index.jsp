<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
      <!-- Bootstrap -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <meta charset="utf-8">
        <link href="./css/public.css" type="text/css" rel="stylesheet">
        <link href="./css/houtai.css" type="text/css" rel="stylesheet">
        <link href="./css/smartMenu.css" type="text/css" rel="stylesheet">
        
        <title>烽火网</title>
    </head>
    <body>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    	<div id="admin">
    		<div class="ad-menu" id="ad-menu">
                <div class="ad-logo"><img src="image/m-logo.png" height="103" width="130"></div>
                <div class="ad-list">
                    <ul>
                        <li>
                            <div class="li-item">
                            	<a href="分栏主页.jsp" target="iframe0"><em class="scm li-ico ic1"></em>首页</a>
                            </div>
                        </li>
                        <li>
                            <div class="li-item"><em class="scm li-ico ic3"></em>我的文件<span class="scm arrow"></span></div>
                            <dl>
                                <dd>
				     				<a href="分类上传.jsp" class="dd-item" target="iframe0">文件上传<span class="scm dd-ar"></span></a>
				     			</dd>
				     			<dd>
				     				<a href="上传记录.jsp" class="dd-item" target="iframe0">上传记录<span class="scm dd-ar"></span></a>
				     			</dd>                                                                   
                            </dl>
                        </li>
                        <li>
                            <div class="li-item"><em class="scm li-ico ic4"></em>下载专区<span class="scm arrow"></span></div>
                            <dl>
                                <dd>
				     				<a href="内容栏.jsp" class="dd-item" target="iframe0">类别一<span class="scm dd-ar"></span></a>
				     			</dd>
				     			<dd>f
				     				<a href="内容栏.jsp" class="dd-item" target="iframe0">类别二<span class="scm dd-ar"></span></a>
				     			</dd>                                                                   
                            </dl>
                        </li>
                        <li>
                            <div class="li-item"><em class="scm li-ico ic5"></em>用户管理<span class="scm arrow"></span></div>
                            <dl>
                                <dd>
                                  <a href="用户信息.jsp" class="dd-item" target="iframe0">个人信息<span class="scm dd-ar"></span></a>
                                </dd>
                                <dd>
                                  <a href="用户文件.jsp" class="dd-item" target="iframe0">用户文件<span class="scm dd-ar"></span></a>
                                </dd>
                                <dd>
                                  <a href="下载记录.jsp" class="dd-item" target="iframe0">下载记录<span class="scm dd-ar"></span></a>
                                </dd>
                            </dl>
                        </li>
                        <li>
                            <div class="li-item"><em class="scm li-ico ic7"></em>管理员控制<span class="scm arrow"></span></div>
                            <dl>
                                <dd>
                                    <a href="用户管理.jsp" class="dd-item" target="iframe0">用户管理<span class="scm dd-ar"></span></a>
                                </dd>
                                <dd>
                                    <a href="文件管理.jsp" class="dd-item" target="iframe0">文件管理<span class="scm dd-ar"></span></a>
                                </dd>
                                <dd>
                                    <a href="文件审核.jsp" class="dd-item" target="iframe0">文件审核<span class="scm dd-ar"></span></a>
                                </dd>
                                <dd>
                                    <a href="复选框权限.jsp" class="dd-item" target="iframe0">权限管理<span class="scm dd-ar"></span></a>
                                </dd>
                            </dl>
                        </li>
                        <li>
                            <div class="li-item"><em class="scm li-ico ic7"></em>退出登录</div>
                        </li>
                    </ul>
                </div>
            </div>
    		<div class="ad-comment-box" id="ad-comment">
    		
    		     <div class="ad-top-comment">
                    <div class="ad-message">
                        <div class="ad-top-left">
                            <div class="ad-change-btn"><a id="ad-list" href="javascript:;" class="scm ad-list-btn"></a></div>
                            <div class="ad-search-box clear">
                                <div class="ad-search-sel">
                                    <select>
										<option>全部</option>
                                        <option>技术类</option>
                                        <option>管理类</option>
                                        <option>热门消息</option>
                                    </select>
                                </div>
                                <div class="ad-search-cha">
                                    <input type="text" class="ad-search-input" placeholder="请输入你要查找的知识内容">
                                    <input type="submit" class="scm ad-search-btn" value=""> 
                                </div>
                            </div>
                        </div>
                        <div class="ad-top-right">
                            <div class="ad-notice">
                                <ul>
                                    <li>
                                        <a href="javascript:;" class="scm nt1"><span class="scm nt-count dot">12</span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:;" class="scm nt2"><span class="scm nt-count dot">12</span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:;" class="scm nt3"><span class="scm nt-count dot">12</span></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="ad-welcom">
                                <div class="ad-wel-img"><img src="image/min_logo.png" height="36" width="36"></div>
                                <div class="ad-wel-text">
                                    <div class="font-wel">欢迎您！<strong>王汉琦</strong></div>
                                    <div class="font-wel"><a href="javascript:;"><strong>【退出】</strong></a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ad-main-nav-box">
                        <ul id="breadcrumbs-three">
                            <li title="首页"><a href="javascript:;" class="dot">首页</a></li>
                        </ul>
                        <div class="ad-main-wraper .J_menuItems">
                            <ul class="ad-main-list" id="ad-main">
                            </ul>
                        </div>
                        <a href="javascript:;" class="scm jian-a J_mainRight next"></a>
                    </div>
                </div>
                <div class="ad-main-comment J_mainContent" id="ad-iframe">
                    <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="index.jsp" frameborder="0"></iframe>
                    <!-- <iframe class="J_iframe" name="iframe1" width="100%" height="50%" src="index.jsp" frameborder="0"></iframe> -->
                </div>
    		</div>
    	</div>
        <script type="text/javascript" src="./js/jquery.min.js"></script>
        <script type="text/javascript" src="./js/contabs.js"></script>
        <script type="text/javascript" src="./js/maintabs.js"></script>
        <script type="text/javascript" src="./js/jquery-smartMenu-min.js"></script>
        <script type="text/javascript" src="./js/jquery.nicescroll.min.js"></script>
        <script type="text/javascript">
            $(function(){
                $(".ad-menu").niceScroll({cursorborder:"0 none",cursorcolor:"#1a1a19",cursoropacitymin:"0",boxzoom:false});
            })
        </script>
    </body>
</html>
