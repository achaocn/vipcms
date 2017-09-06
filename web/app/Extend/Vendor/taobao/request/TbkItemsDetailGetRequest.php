<?php

//

class TbkItemsDetailGetRequest
{
	private $fields;
	private $numIids;
	private $trackIids;
	private $apiParas = array();

	public function setFields($fields)
	{
		$this->fields = $fields;
		$this->apiParas["fields"] = $fields;
	}

	public function getFields()
	{
		return $this->fields;
	}

	public function setNumIids($numIids)
	{
		$this->numIids = $numIids;
		$this->apiParas["num_iids"] = $numIids;
	}

	public function getNumIids()
	{
		return $this->numIids;
	}

	public function setTrackIids($trackIids)
	{
		$this->trackIids = $trackIids;
		$this->apiParas["track_iids"] = $trackIids;
	}

	public function getTrackIids()
	{
		return $this->trackIids;
	}

	public function getApiMethodName()
	{
		return "taobao.tbk.items.detail.get";
	}

	public function getApiParas()
	{
		return $this->apiParas;
	}

	public function check()
	{
		RequestCheckUtil::checkNotNull($this->fields, "fields");
		RequestCheckUtil::checkMaxListSize($this->numIids, 50, "numIids");
		RequestCheckUtil::checkMaxListSize($this->trackIids, 50, "trackIids");
	}

	public function putOtherTextParam($key, $value)
	{
		$this->apiParas[$key] = $value;
		$this->$key = $value;
	}
}