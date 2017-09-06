<?php
return array(
    'APP_GROUP_LIST'		=> 'index,admin,m,api',				// 分组
    'DEFAULT_GROUP'			=> 'index',						// 默认分组
    'DEFAULT_MODULE'		=> 'index',						// 默认控制器
	'TMPL_TEMPLATE_SUFFIX' => '.tpl',
    'TAGLIB_PRE_LOAD'		=> 'ftx',						// 自动加载标签
    'APP_AUTOLOAD_PATH'		=> '@.Ftxtag,@.Ftxlib,@.ORG',	// 自动加载项目类库
    'TMPL_ACTION_SUCCESS'	=> '/public:success',
    'TMPL_ACTION_ERROR'		=> '/public:error',
    'DATA_CACHE_SUBDIR'		=> true,						// 缓存文件夹
    'DATA_PATH_LEVEL'		=> 3,							// 缓存文件夹层级
    'LOAD_EXT_CONFIG'		=> 'url,db',					// 扩展配置
 
	'DATA_CACHE_TYPE'		=>'file',
	'DATA_CACHE_TIME'		=>'3600', 
	'DATA_CACHE_LEVEL'		=>3,							// 设置子目录的层次

    'SHOW_PAGE_TRACE'		=> false,
	'APP_SUB_DOMAIN_DEPLOY' => false,						// 开启子域名配置
    'APP_SUB_DOMAIN_RULES'  => array(
		'www' => array("index/"),
		'admin' => array("admin/"),
		'm' => array("m/"),
		't' => array("api/"),
	),
	'classlist' => array(array('id'=>1,'min_price'=>'0','max_price'=>'8.8'),array('id'=>2,'min_price'=>'10','max_price'=>'20')),
	'wapper'		=> 20,
);