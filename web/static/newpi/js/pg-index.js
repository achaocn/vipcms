/**
 * Created with JetBrains WebStorm.
 * User: jimi
 * Date: 12-17
 * Time: 下午15:11
 *
 */
(function(a) {
   

   
    // 顶部 ctr+d 收藏end

    //新版2014-12-17 改版提示换装banner start
    var alertBar = function(){
        var timestamp = Date.parse(new Date());
        var banDiv ='<div class="alert-activity">'+
                        '<p class="activity-ceng"></p>'+
                        '<div class="links" href="/">'+
                        '<a class="go-new"  target=""></a>'+
                        '<a class="back-old" href=""></a>'+
                        '<p>5s自动关闭</p>'+
                        '</div>'+
                    '</div>';
        //老用户并且没点过并且一个星期有效
        if($(".main").data("isnew") == 0 && !XDTOOL.getCookie("newbar") && timestamp < 1419955200000){
            $('.side_right').after(banDiv);
            $(".alert-activity .go-new ,.activity-ceng").click(function(){
                $(".alert-activity").hide();
            });
            XDTOOL.setCookie("newbar", '1', {
                expires: 86400*7,
                path: "/"
            });
            var int=self.setInterval(function(){
                $(".alert-activity").hide();
            },5000)

        }
    }
    alertBar();
    //新版2014-12-17 改版banner end
})(jQuery);