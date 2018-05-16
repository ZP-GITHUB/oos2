package com.guet.oos.po;

import java.io.Serializable;
import java.util.Date;

/**
 * 订单
 * 
 * @author Shinelon
 *
 */
public class Order implements Serializable {

	private static final long serialVersionUID = -1354904956050380915L;

	private long uId;// 用户ID

	private long oId;// 订单ID

	private long mId;// 管理员ID

	private String status;// 状态

	private Date creatorTime;// 创建时间

	private Date updateTime;// 更新时间

	public Order(long uId, long oId, long mId, String status, Date creatorTime, Date updateTime) {
		super();
		this.uId = uId;
		this.oId = oId;
		this.mId = mId;
		this.status = status;
		this.creatorTime = creatorTime;
		this.updateTime = updateTime;
	}

	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}

	public long getuId() {
		return uId;
	}

	public void setuId(long uId) {
		this.uId = uId;
	}

	public long getoId() {
		return oId;
	}

	public void setoId(long oId) {
		this.oId = oId;
	}

	public long getmId() {
		return mId;
	}

	public void setmId(long mId) {
		this.mId = mId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getCreatorTime() {
		return creatorTime;
	}

	public void setCreatorTime(Date creatorTime) {
		this.creatorTime = creatorTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	@Override
	public String toString() {
		return "Order [uId=" + uId + ", oId=" + oId + ", mId=" + mId + ", status=" + status + ", creatorTime="
				+ creatorTime + ", updateTime=" + updateTime + "]";
	}

}
