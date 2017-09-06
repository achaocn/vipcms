<?php

//

class TopAuthTokenCreateRequest
{
	private $code;
	private $uuid;
	private $apiParas = array();

	public function setCode($code)
	{
		$this->code = $code;
		$this->apiParas["code"] = $code;
	}

	public function getCode()
	{
		return $this->code;
	}

	public function setUuid($uuid)
	{
		$this->uuid = $uuid;
		$this->apiParas["uuid"] = $uuid;
	}

	public function getUuid()
	{
		return $this->uuid;
	}

	public function getApiMethodName()
	{
		return "taobao.top.auth.token.create";
	}

	public function getApiParas()
	{
		return $this->apiParas;
	}

	public function check()
	{
		RequestCheckUtil::checkNotNull($this->code, "code");
	}

	public function putOtherTextParam($key, $value)
	{
		$this->apiParas[$key] = $value;
		$this->$key = $value;
	}
}