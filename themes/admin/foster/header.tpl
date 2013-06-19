<!-- BEGIN: HEADER -->
<!DOCTYPE html>
<html>
<head>
<title>{HEADER_TITLE}</title>
<!-- IF {HEADER_META_DESCRIPTION} --><meta name="description" content="{HEADER_META_DESCRIPTION}" /><!-- ENDIF -->
<!-- IF {HEADER_META_KEYWORDS} --><meta name="keywords" content="{HEADER_META_KEYWORDS}" /><!-- ENDIF -->
<meta http-equiv="content-type" content="{HEADER_META_CONTENTTYPE}; charset=UTF-8" />
<meta name="generator" content="{PHP.cfg.maintitle} {PHP.cfg.mainurl}" />
<meta name="viewport" content = "width = device-width, initial-scale = 1.0, minimum-scale = 1.0, maximum-scale = 1.0, user-scalable = no" />
<link rel="canonical" href="{HEADER_CANONICAL_URL}" />
{HEADER_BASEHREF}
{HEADER_HEAD}
<link rel="shortcut icon" href="favicon.ico" />
<link rel="apple-touch-icon" href="apple-touch-icon.png" />
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<link href="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/css/animated.css" type="text/css" rel="stylesheet" />
<link href="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/css/footable.css" type="text/css" rel="stylesheet" />
<link href="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/css/uniform.default.css" type="text/css" rel="stylesheet" />
<link href="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/css/bootstrap.css" type="text/css" rel="stylesheet" />
<link href="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/css/font-awesome.css" type="text/css" rel="stylesheet" />
<link href="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/css/font-awesome-ie7.css" type="text/css" rel="stylesheet" />
<link href="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/css/overrides.css" type="text/css" rel="stylesheet" />
<link href="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/css/style.css" type="text/css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,500,600,300,700,200' rel='stylesheet' type='text/css'>
</head>
<body>
<div id="wrap">
  <header class="row-fluid">
    <h1<!-- IF {PHP.m} == '' --> class="animated fadeIn"<!-- ENDIF -->><a href="{PHP|cot_url('admin')}">{PHP.cfg.maintitle}</a></h1>
    <div class="viewweb<!-- IF {PHP.m} == '' --> animated fadeInRight"<!-- ENDIF -->">
      <a class="btn btn-small" href="{PHP|cot_url('admin')}"> <i class="icon-home"></i></a>
      <a class="btn btn-small" href="{PHP.cfg.mainurl}">View website <i class="icon-signout iconspacedleft"></i></a>
    </div>
  </header>
  <div class="navbar navbar-inverse">
    <div class="navbar-inner">
      <div class="container-fluid">
        <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
          Menu
        </button>
        <ul class="nav pull-left visible-phone">
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-circle-arrow-down icon-white"></i>&nbsp;&nbsp;&nbsp;{HEADER_USER_NAME}</a>
            <ul class="dropdown-menu">
              <!-- IF {HEADER_NOTICES} --><li id="notices">{HEADER_NOTICES}</li><!-- ENDIF -->
              <li><a href="{PHP|cot_url('users', 'm=profile')}" id="profile" title="{PHP.L.Profile}">{PHP.L.Profile}</a></li>
              <li><a href="{PHP|cot_url('pm')}" id="messages" title="{PHP.L.Messages}">{PHP.L.Messages}</a></li>
              <li><a href="{PHP|cot_url('pfs')}" id="files" title="{PHP.L.Files}">{PHP.L.Files}</a></li>
              <li class="divider"></li>
              <li><a href="{PHP.sys.xk|cot_url('login', 'out=1&x=$this', '', 0, 1)}" id="logout" title="{PHP.L.Logout}">{PHP.L.Logout}</a></li>
            </ul>
          </li>
        </ul>
        <div class="nav-collapse collapse">
          <ul class="nav pull-right hidden-phone">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">{HEADER_USER_NAME}&nbsp;&nbsp;&nbsp;<i class="icon-circle-arrow-down icon-white"></i></a>
              <ul class="dropdown-menu">
                <!-- IF {HEADER_NOTICES} --><li id="notices">{HEADER_NOTICES}</li><!-- ENDIF -->
                <li><a href="{PHP|cot_url('users', 'm=profile')}" id="profile" title="{PHP.L.Profile}">{PHP.L.Profile}</a></li>
                <li><a href="{PHP|cot_url('pm')}" id="messages" title="{PHP.L.Messages}">{PHP.L.Messages}</a></li>
                <li><a href="{PHP|cot_url('pfs')}" id="files" title="{PHP.L.Files}">{PHP.L.Files}</a></li>
                <li class="divider"></li>
                <li><a href="{PHP.sys.xk|cot_url('login', 'out=1&x=$this', '', 0, 1)}" id="logout" title="{PHP.L.Logout}">{PHP.L.Logout}</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav">
            <li<!-- IF !{PHP.m} --> class="active"<!-- ENDIF -->>
              <a href="{PHP|cot_url('admin')}" title="{PHP.L.Administration}"><i class="icon-home iconspaced"></i>{PHP.L.Home}</a>
            </li>
            <li<!-- IF {PHP.m} == 'config' --> class="active"<!-- ENDIF -->>
              <a href="{PHP|cot_url('admin', 'm=config')}" title="{PHP.L.Configuration}"><i class="icon-wrench iconspaced"></i>{PHP.L.Configuration}</a>
            </li>
            <li<!-- IF {PHP.m} == 'structure' --> class="active"<!-- ENDIF -->>
              <a href="{PHP|cot_url('admin', 'm=structure')}" title="{PHP.L.Structure}"><i class="icon-sitemap iconspaced"></i>{PHP.L.Structure}</a>
            </li>
            <li<!-- IF {PHP.m} == 'extensions' --> class="active"<!-- ENDIF -->>
              <a href="{PHP|cot_url('admin', 'm=extensions')}" title="{PHP.L.Extensions}"><i class="icon-expand iconspaced"></i>{PHP.L.Extensions}</a>
            </li>
            <li<!-- IF {PHP.m} == 'users' OR {PHP.env.ext} == 'users' --> class="active"<!-- ENDIF -->>
              <a href="{PHP|cot_url('admin', 'm=users')}" title="{PHP.L.Users}"><i class="icon-user iconspaced"></i>{PHP.L.Users}</a>
            </li>
            <li<!-- IF {PHP.m} == 'other' --> class="active"<!-- ENDIF -->>
              <a href="{PHP|cot_url('admin', 'm=other')}" title="{PHP.L.Other}"><i class="icon-asterisk iconspaced"></i>{PHP.L.Other}</a>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div><!-- /.container-fluid -->
    </div><!-- /.navbar-inner -->
  </div><!-- /.navbar navbar-inverse -->
<!-- END: HEADER -->