<meta charset="utf-8">
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<volist name="css_arr" id="item">
<link rel="stylesheet" type="text/css" href="__STATIC__{$item}" />
</volist>
<volist name="js_arr" id="item">
<script src="__STATIC__{$item}"></script>
</volist>

<script type="text/javascript">
    
    document.addEventListener('plusready', function(){
        //console.log("所有plus api都应该在此事件发生后调用，否则会出现plus is undefined。"
        
    });
    
</script>
<title>{$page_seo.title}</title>
<meta content="{$page_seo.keywords}" name="keywords">
<meta content="{$page_seo.description}" name="description">

<script type="text/javascript">
SITEURL="{:C('ftx_header_html')}";
CURURL="{:C('ftx_header_html')}";
WEBNICK="{:C('ftx_site_name')}";
URL_COOKIE=0;
</script>		