<?php

//

class TbkUatmFavoritesItemGetRequest
{
	private $adzoneId;
	private $favoritesId;
	private $fields;
	private $pageNo;
	private $pageSize;
	private $platform;
	private $unid;
	private $apiParas = array();

	public function setAdzoneId($adzoneId)
	{
		$this->adzoneId = $adzoneId;
		$this->apiParas["adzone_id"] = $adzoneId;
	}

	public function getAdzoneId()
	{
		return $this->adzoneId;
	}

	public function setFavoritesId($favoritesId)
	{
		$this->favoritesId = $favoritesId;
		$this->apiParas["favorites_id"] = $favoritesId;
	}

	public function getFavoritesId()
	{
		return $this->favoritesId;
	}

	public function setFields($fields)
	{
		$this->fields = $fields;
		$this->apiParas["fields"] = $fields;
	}

	public function getFields()
	{
		return $this->fields;
	}

	public function setPageNo($pageNo)
	{
		$this->pageNo = $pageNo;
		$this->apiParas["page_no"] = $pageNo;
	}

	public function getPageNo()
	{
		return $this->pageNo;
	}

	public function setPageSize($pageSize)
	{
		$this->pageSize = $pageSize;
		$this->apiParas["page_size"] = $pageSize;
	}

	public function getPageSize()
	{
		return $this->pageSize;
	}

	public function setPlatform($platform)
	{
		$this->platform = $platform;
		$this->apiParas["platform"] = $platform;
	}

	public function getPlatform()
	{
		return $this->platform;
	}

	public function setUnid($unid)
	{
		$this->unid = $unid;
		$this->apiParas["unid"] = $unid;
	}

	public function getUnid()
	{
		return $this->unid;
	}

	public function getApiMethodName()
	{
		return "taobao.tbk.uatm.favorites.item.get";
	}

	public function getApiParas()
	{
		return $this->apiParas;
	}

	public function check()
	{
		RequestCheckUtil::checkNotNull($this->adzoneId, "adzoneId");
		RequestCheckUtil::checkNotNull($this->favoritesId, "favoritesId");
		RequestCheckUtil::checkNotNull($this->fields, "fields");
	}

	public function putOtherTextParam($key, $value)
	{
		$this->apiParas[$key] = $value;
		$this->$key = $value;
	}
}