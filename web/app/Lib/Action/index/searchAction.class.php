<?php global $phpjiami_decrypt;$phpjiami_decrypt['֮���þ�Ô���î���Î������������']=base64_decode('dXJsZGVjb2Rl');$phpjiami_decrypt['���֯֎����������ֈ�Ď����������']=base64_decode('aW50dmFs');$phpjiami_decrypt['�֯������֎��֮��ľ��֋�î������']=base64_decode('Y291bnQ='); ?>
<?php
class searchAction extends FrontAction {public function _initialize(){parent::_initialize();}public function _empty(){$this->index();}public function index(){$q='';$k =I('k');$k =$GLOBALS['phpjiami_decrypt']['֮���þ�Ô���î���Î������������']($k);$k=safe_replace($k);$k=filterWords($k);$q='?k='.$k;$this->assign(q,$q);$order ='ordid desc';$sort =$GLOBALS['phpjiami_decrypt']['���֯֎����������ֈ�Ď����������'](I('get.sort'));$activity_type=$GLOBALS['phpjiami_decrypt']['���֯֎����������ֈ�Ď����������'](I('get.activity_type'));if($activity_type==1){$type1=1;}elseif($activity_type==2){$type2=1;}$tm_gold=$GLOBALS['phpjiami_decrypt']['���֯֎����������ֈ�Ď����������'](I('get.tm_gold'));if($tm_gold==3){$tmall=1;}elseif($tm_gold==4){$gold=1;}$is_freight=$GLOBALS['phpjiami_decrypt']['���֯֎����������ֈ�Ď����������'](I('get.is_freight'));if($is_freight==1){$yun=1;}$abroad=$GLOBALS['phpjiami_decrypt']['���֯֎����������ֈ�Ď����������'](I('get.abroad'));if($abroad==1){$abroad=1;}$this->assign('sort',$sort);if($k==""||$k=="请输入相关信息"){$this->error('请输入关键字');}if ($k){$qry='&k='.$k;$this->assign('qry',$qry);$this->assign('k', $k);}if($this->ismobile){$page_size =C('wapper')?C('wapper'):20;}else {$page_size =40;}$p =I('p', 1, 'intval');$filecount='count_'.$k.'_'.$activity_type.'_'.$tm_gold.'_'.$is_freight.'_'.$abroad.'_'.$page_size;if(!S($filecount)){$pro_countj=get_contents($this->apiurl.'api/spronum?k='.base64_encode($k).'&type1='.$type1.'&type2='.$type2.'&yun='.$is_freight.'&tmall='.$tmall.'&gold='.$gold.'&abroad='.$abroad);$pro_countj=json_decode($pro_countj,true);$pro_count=$pro_countj['message'];S($filecount,$pro_count);}$count=S($filecount);$file='search_'.$k.'_'.$sort.'_'.$p.'_'.$activity_type.'_'.$tm_gold.'_'.$is_freight.'_'.$abroad.'_'.$page_size;if(!S($file)){$data=get_contents($this->apiurl.'api/vipprolist?k='.base64_encode($k).'&per='.$page_size.'&p='.$p.'&sort='.$sort.'&type1='.$type1.'&type2='.$type2.'&yun='.$is_freight.'&tmall='.$tmall.'&gold='.$gold.'&abroad='.$abroad);$datalist=json_decode($data,true);$items_list=$datalist['data'];if($items_list){foreach($items_list as $key=>$item){$items_list[$key]['id']=$this->_idtohash($item['id']);$items_list[$key]['price_youhuiquan']=$GLOBALS['phpjiami_decrypt']['���֯֎����������ֈ�Ď����������']($item['price_youhuiquan']);}}S($file,$items_list,2*60);}$items_list=S($file);$this->assign('items_list',$items_list);$pager =$this->_pager($count, $page_size);$this->assign('page', $pager->jshow());$this->assign('pageup',$pager->eshow());$this->assign('total_item',$count);$this->assign('zpage',ceil($count/$page_size));$this->assign('pager','index');$this->assign('nav_curr', 'quan');$page_seo=array('title' => '搜索"'.$k.'"的宝贝结果页 - 第'.$p.'页 - '.C('ftx_site_name'), );$this->assign('page_seo', $page_seo);$this->assign('pager','so');if($this->ismobile){$this->js_arr =array('/tkjidicms/wap/js/jquery-3.2.1.min.js', '/tkjidicms/wap/js/loaddata.js', );$this->css_arr =array('/tkjidicms/wap/css/fengding.css', );$this->assign('js_arr',$this->js_arr);$this->assign('css_arr',$this->css_arr);$this->assign('page_title','搜 索');}else {$banner=$this->getbanner(11);$this->assign('banner',$banner);}$act=$GLOBALS['phpjiami_decrypt']['���֯֎����������ֈ�Ď����������'](I('act'));if($act==1){if($items_list){$str2="";foreach($items_list as $k=>$item){$item['thumb'] =changepic($item['thumb']);if($this->ismobile){$str2.='<a href="'.U('pro/show?id='.$item['id']).'" target="_blank"><li class="second">
							<div class="liImg"><img src="'.$item['thumb'].'"></div>
						<div class="liRight">
							<p class="liName">'.$item['buss_name'].'</p>
							<p class="liPrice"><span class="sp1">原价:</span><span class="sp2">￥'.$item['price_order'].'</span></p>
							<p class="liAfter"><span class="sp1">￥'.$item['price_youhui'].'</span><span class="sp2">(券后价)</span></p>
							<p class="xiaoliang">销量：<span>'.$item['sales'].'</span></p>
							<div class="now">立即领券</div>
							
							<img class="quanIMG" src="/static/tkjidicms/wap/img/fengding/pricebg.png">
							<span class="quanText">￥'.$GLOBALS['phpjiami_decrypt']['���֯֎����������ֈ�Ď����������']($item['price_youhuiquan']).'</span>
						</div></li></a>';}else {$str2.= '<tr style="height: 135px;">
	                    <td class="mt10">
	                        <a href="'.U('pro/show?id='.$item['id']).'" target="_blank"><img src="'.$item['thumb'].'" alt="" class="left" width="100" height="100"></a>
	                        <div class="right result-title">
	                            <a href="'.U('pro/show?id='.$item['id']).'" target="_blank"><img src="/static/tkjidicms/images/v_tm'.(($item['tmall']==0)?0:1).'.png" alt=""> '.$item['buss_name'].'</a>
	                            <p>
	                                '.$item['guid_content'].'
	                            </p>
	                        </div>
	                    </td>
	                    <td width="200" class="text-center" style="color: #555">
	                        <span class="yuanjia">￥'.$item['price_order'].'</span>
	                        月销'.$item['sales'].'
	                    </td>
	                    <td class="ff4e36 text-center">
	                        <span class="quanhoujia">￥'.$item['price_youhui'].'</span>
	                    </td>
	                    <td class="text-center">
	                        <div class="youhuiquan">
	                            ￥'.$GLOBALS['phpjiami_decrypt']['���֯֎����������ֈ�Ď����������']($item['price_youhuiquan']).'
	                        </div>
	                    </td>
	                    <td class="caozuo ">
	                        <a href="'.U('pro/show?id='.$item['id']).'" target="_blank">
	                            立即领取
	                        </a>
	                    </td>
	                </tr>';}}}echo $str2;exit;}$this->display();}function ajax(){$k =I('k');$k =$GLOBALS['phpjiami_decrypt']['֮���þ�Ô���î���Î������������']($k);$page_size =C('wapper')?C('wapper'):20;$page=$GLOBALS['phpjiami_decrypt']['���֯֎����������ֈ�Ď����������'](I('page'));$order ='ordid desc';$sort =$GLOBALS['phpjiami_decrypt']['���֯֎����������ֈ�Ď����������'](I('get.sort'));if($k==""||$k=="请输入相关信息"){$this->ajaxReturn('201','0');}$p=$page;$data=get_contents($this->apiurl.'api/vipprolist?k='.base64_encode($k).'&per='.$page_size.'&p='.$p.'&sort='.$sort);$datalist=json_decode($data,true);$items_list=$datalist['data'];if($items_list){foreach($items_list as $k=>$item){$items_list[$k]['id']=$this->_idtohash($item['id']);$items_list[$k]['price_youhuiquan']=$GLOBALS['phpjiami_decrypt']['���֯֎����������ֈ�Ď����������']($item['price_youhuiquan']);$items_list[$k]['thumb']=changepic($item['thumb'],'item');$items_list[$k]['tmall']=($item[tmall]==1)?1:0;}if($GLOBALS['phpjiami_decrypt']['�֯������֎��֮��ľ��֋�î������']($datalist<C('wapper')))$this->ajaxReturn('200','0',$items_list);else $this->ajaxReturn('200','1',$items_list);}else {$this->ajaxReturn('201','0');}}}