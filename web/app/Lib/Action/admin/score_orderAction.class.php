<?php global $phpjiami_decrypt;$phpjiami_decrypt['����֯�����ֈ�å���������įï�ֈ']=base64_decode('X2luaXRpYWxpemU=');$phpjiami_decrypt['���֯֎����������ֈ�Ď����������']=base64_decode('aW50dmFs'); ?>
<?php
 class score_orderAction extends BackendAction {public function _initialize(){parent::$GLOBALS['phpjiami_decrypt']['����֯�����ֈ�å���������įï�ֈ']();$this->_mod =D('score_order');$this->_cate_mod =D('score_item_cate');}protected function _search(){$_var_0 =array();($_var_1 =$this->_request('time_start', 'trim'))&& $_var_0['add_time'][] =array('egt', strtotime($_var_1));($_var_2 =$this->_request('time_end', 'trim'))&& $_var_0['add_time'][] =array('elt', strtotime($_var_2)+ (24 * 60 * 60 - 1));($_var_3 =$this->_request('order_score_min', 'trim'))&& $_var_0['order_score'][] =array('egt', $_var_3);($_var_4 =$this->_request('order_score_max', 'trim'))&& $_var_0['order_score'][] =array('elt', $_var_4);($_var_5 =$this->_request('rates_min', 'trim'))&& $_var_0['rates'][] =array('egt', $_var_5);($_var_6 =$this->_request('rates_max', 'trim'))&& $_var_0['rates'][] =array('elt', $_var_6);($_var_7 =$this->_request('uname', 'trim'))&& $_var_0['uname'] =array('like', '%' . $_var_7 . '%');$_var_8 =$this->_request('cate_id', 'intval')&& $_var_0['cate_id'] =array('IN', $_var_8);if ($_GET['status'] == null){$_var_9 =-1;}else {$_var_9 =$GLOBALS['phpjiami_decrypt']['���֯֎����������ֈ�Ď����������']($_GET['status']);}$_var_9 >= 0 && $_var_0['status'] =array('eq', $_var_9);($_var_10 =$this->_request('keyword', 'trim'))&& $_var_0['order_sn'] =array('like', '%' . $_var_10 . '%');$this->assign('search', array('time_start' => $_var_1, 'time_end' => $_var_2, 'order_score_min' => $_var_3, 'order_score_max' => $_var_4, 'rates_min' => $_var_5, 'rates_max' => $_var_6, 'uname' => $_var_7, 'status' => $_var_9, 'cate_id' => $_var_8, 'keyword' => $_var_10,));return $_var_0;}public function _before_index(){$_var_11 =$this->_cate_mod->field('id,name')->select();$this->assign('cate_lists', $_var_11);}}