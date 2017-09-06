<?php
 class tbapiModel extends Model {protected $_auto =array(array('last_time', 'time', 1, 'function'),);public function todb($item){$this->create($item);$this->add();}}