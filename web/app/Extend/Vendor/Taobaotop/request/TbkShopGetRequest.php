<?php

//

class TbkShopGetRequest
{
	private $endAuctionCount;
	private $endCommissionRate;
	private $endCredit;
	private $endTotalAction;
	private $fields;
	private $isTmall;
	private $pageNo;
	private $pageSize;
	private $platform;
	private $q;
	private $sort;
	private $startAuctionCount;
	private $startCommissionRate;
	private $startCredit;
	private $startTotalAction;
	private $apiParas = array();

	public function setEndAuctionCount($endAuctionCount)
	{
		$this->endAuctionCount = $endAuctionCount;
		$this->apiParas["end_auction_count"] = $endAuctionCount;
	}

	public function getEndAuctionCount()
	{
		return $this->endAuctionCount;
	}

	public function setEndCommissionRate($endCommissionRate)
	{
		$this->endCommissionRate = $endCommissionRate;
		$this->apiParas["end_commission_rate"] = $endCommissionRate;
	}

	public function getEndCommissionRate()
	{
		return $this->endCommissionRate;
	}

	public function setEndCredit($endCredit)
	{
		$this->endCredit = $endCredit;
		$this->apiParas["end_credit"] = $endCredit;
	}

	public function getEndCredit()
	{
		return $this->endCredit;
	}

	public function setEndTotalAction($endTotalAction)
	{
		$this->endTotalAction = $endTotalAction;
		$this->apiParas["end_total_action"] = $endTotalAction;
	}

	public function getEndTotalAction()
	{
		return $this->endTotalAction;
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

	public function setIsTmall($isTmall)
	{
		$this->isTmall = $isTmall;
		$this->apiParas["is_tmall"] = $isTmall;
	}

	public function getIsTmall()
	{
		return $this->isTmall;
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

	public function setStartAuctionCount($startAuctionCount)
	{
		$this->startAuctionCount = $startAuctionCount;
		$this->apiParas["start_auction_count"] = $startAuctionCount;
	}

	public function getStartAuctionCount()
	{
		return $this->startAuctionCount;
	}

	public function setStartCommissionRate($startCommissionRate)
	{
		$this->startCommissionRate = $startCommissionRate;
		$this->apiParas["start_commission_rate"] = $startCommissionRate;
	}

	public function getStartCommissionRate()
	{
		return $this->startCommissionRate;
	}

	public function setStartCredit($startCredit)
	{
		$this->startCredit = $startCredit;
		$this->apiParas["start_credit"] = $startCredit;
	}

	public function getStartCredit()
	{
		return $this->startCredit;
	}

	public function setStartTotalAction($startTotalAction)
	{
		$this->startTotalAction = $startTotalAction;
		$this->apiParas["start_total_action"] = $startTotalAction;
	}

	public function getStartTotalAction()
	{
		return $this->startTotalAction;
	}

	public function getApiMethodName()
	{
		return "taobao.tbk.shop.get";
	}

	public function getApiParas()
	{
		return $this->apiParas;
	}

	public function check()
	{
		RequestCheckUtil::checkNotNull($this->fields, "fields");
		RequestCheckUtil::checkNotNull($this->q, "q");
	}

	public function putOtherTextParam($key, $value)
	{
		$this->apiParas[$key] = $value;
		$this->$key = $value;
	}
}