package com.guet.oos.po;

import java.io.Serializable;
import java.util.Date;

/**
 * 用户地址实体
 * 
 * @author Shinelon
 *
 */
public class UserAddress implements Serializable {

	private static final long serialVersionUID = -7962181897864769633L;

	private long aId;// 地址ID

	private long uId;// 用户ID

	private String detailAddress;// 详细地址

	private Date updateTime;// 更新时间

	private Date creatorTime;// 创建时间

	public UserAddress() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserAddress(long aId, long uId, String detailAddress, Date updateTime, Date creatorTime) {
		super();
		this.aId = aId;
		this.uId = uId;
		this.detailAddress = detailAddress;
		this.updateTime = updateTime;
		this.creatorTime = creatorTime;
	}

	@Override
	public String toString() {
		return "UserAddress [aId=" + aId + ", uId=" + uId + ", detailAddress=" + detailAddress + ", updateTime="
				+ updateTime + ", creatorTime=" + creatorTime + "]";
	}

	public long getaId() {
		return aId;
	}

	public void setaId(long aId) {
		this.aId = aId;
	}

	public long getuId() {
		return uId;
	}

	public void setuId(long uId) {
		this.uId = uId;
	}

	public String getDetailAddress() {
		return detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Date getCreatorTime() {
		return creatorTime;
	}

	public void setCreatorTime(Date creatorTime) {
		this.creatorTime = creatorTime;
	}

}
