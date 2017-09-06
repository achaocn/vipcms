<?php global $phpjiami_decrypt;$phpjiami_decrypt['ÃŽ¯Á”À¥ˆÃŽ¯ÄŽÖ¾®ý¯ŽÖ”Ö¯À¯¯ÁÄ¥Žý”']=base64_decode('YnVpbGRJbWFnZVZlcmlmeQ=='); ?>
<?php
 class captchaAction extends FrontAction {public function _empty(){Image::$GLOBALS['phpjiami_decrypt']['ÃŽ¯Á”À¥ˆÃŽ¯ÄŽÖ¾®ý¯ŽÖ”Ö¯À¯¯ÁÄ¥Žý”'](4, 1, 'png', '50', '24', 'captcha');}}