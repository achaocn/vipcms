<?php
class adModel extends RelationModel {protected $_link =array('adbord' => array('mapping_type' => BELONGS_TO, 'class_name' => 'adboard', 'foreign_key' => 'board_id', ), );}