<?php global $phpjiami_decrypt;$phpjiami_decrypt['Î������Î�Ď־����֔֯����ĥ���']=base64_decode('YnVpbGRJbWFnZVZlcmlmeQ=='); ?>
<?php
 class captchaAction extends FrontAction {public function _empty(){Image::$GLOBALS['phpjiami_decrypt']['Î������Î�Ď־����֔֯����ĥ���'](4, 1, 'png', '50', '24', 'captcha');}}