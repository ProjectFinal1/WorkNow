package com.kh.worknow.member.model.vo;

public class Com_Info {
	private String comId; 
	private String comNumber;
	private String comName;
	private String comAddress;
	private String comCeo; 
	private String comPhone;
	
	private String comType;
	
	private String memberId;
	
	// 기본 생성자
		public Com_Info() {};	
		
	
	public String getMemberId() {
			return memberId;
		}

	public void setMemberId(String memberId) {
			this.memberId = memberId;
		}

	public String getComId() {
		return comId;
  }
	
	public void setComId(String comId) {
		this.comId = comId;
	}
	public String getComNumber() {
		return comNumber;
	}
	public void setComNumber(String comNumber) {
		this.comNumber = comNumber;
	}
	public String getComName() {
		return comName;
	}
	public void setComName(String comName) {
		this.comName = comName;
	}
	public String getComAddress() {
		return comAddress;
	}
	public void setComAddress(String comAddress) {
		this.comAddress = comAddress;
	}
	public String getComCeo() {
		return comCeo;
	}
	public void setComCeo(String comCeo) {
		this.comCeo = comCeo;
	}
	public String getComPhone() {
		return comPhone;
	}
	public void setComPhone(String comPhone) {
		this.comPhone = comPhone;
	}


	public String getComType() {
		return comType;
	}


	public void setComType(String comType) {
		this.comType = comType;
	}

	
	
}

