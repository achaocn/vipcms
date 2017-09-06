<?php

//

class TbkItemGetRequest
{
	private $cat;
	private $endPrice;
	private $endTkRate;
	private $fields;
	private $isOverseas;
	private $isTmall;
	private $itemloc;
	private $pageNo;
	private $pageSize;
	private $platform;
	private $q;
	private $sort;
	private $startPrice;
	private $startTkRate;
	private $apiParas = array();

	public function setCat($cat)
	{
		$this->cat = $cat;
		$this->apiParas["cat"] = $cat;
	}

	public function getCat()
	{
		return $this->cat;
	}

	public function setEndPrice($endPrice)
	{
		$this->endPrice = $endPrice;
		$this->apiParas["end_price"] = $endPrice;
	}

	public function getEndPrice()
	{
		return $this->endPrice;
	}

	public function setEndTkRate($endTkRate)
	{
		$this->endTkRate = $endTkRate;
		$this->apiParas["end_tk_rate"] = $endTkRate;
	}

	public function getEndTkRate()
	{
		return $this->endTkRate;
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

	public function setIsOverseas($isOverseas)
	{
		$this->isOverseas = $isOverseas;
		$this->apiParas["is_overseas"] = $isOverseas;
	}

	public function getIsOverseas()
	{
		return $this->isOverseas;
	}

	public function setIsTmall($isTmall)
	{
		$this->isTmall = $isTmall;
		$this->apiParas["is_tmall"] = $isTmall;
	}

	public function getIsTmall()
	{
		return $this->isTmall;
	}

	public function setItemloc($itemloc)
	{
		$this->itemloc = $itemloc;
		$this->apiParas["itemloc"] = $itemloc;
	}

	public function getItemloc()
	{
		return $this->itemloc;
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

	public function setQ($q)
	{
		$this->q = $q;
		$this->apiParas["q"] = $q;
	}

	public function getQ()
	{
		return $this->q;
	}

	public function setSort($sort)
	{
		$this->sort = $sort;
		$this->apiParas["sort"] = $sort;
	}

	public function getSort()
	{
		return $this->sort;
	}

	public function setStartPrice($startPrice)
	{
		$this->startPrice = $startPrice;
		$this->apiParas["start_price"] = $startPrice;
	}

	public function getStartPrice()
	{
		return $this->startPrice;
	}

	public function setStartTkRate($startTkRate)
	{
		$this->startTkRate = $startTkRate;
		$this->apiParas["start_tk_rate"] = $startTkRate;
	}

	public function getStartTkRate()
	{
		return $this->startTkRate;
	}

	public function getApiMethodName()
	{
		return "taobao.tbk.item.get";
	}

	public function getApiParas()
	{
		return $this->apiParas;
	}

	public function check()
	{
		RequestCheckUtil::checkNotNull($this->fields, "fields");
	}

	public function putOtherTextParam($key, $value)
	{
		$this->apiParas[$key] = $value;
		$this->$key = $value;
	}
}