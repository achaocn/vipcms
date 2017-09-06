<?php
class helpModel extends RelationModel{protected $_auto =array(array('last_time', 'time', 1, 'function'), );protected $_validate =array(array('title', 'require', '{%article_title_empty}'), );}