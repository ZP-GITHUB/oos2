package com.guet.oos.po;

import java.io.Serializable;
import java.util.Date;

/**
 * 购物车
 * 
 * @author Shinelon
 *
 */
public class ShopCart implements Serializable {

	private static final long serialVersionUID = 1557110188502933830L;

	private long scId;// 购物车ID

	private long uId;// 用户ID

	private double totalCost;// 总金额

	private long productAmount;// 商品数量

	private Date creatorTime;// 创建时间

	private Date updateTime;// 更新时间

	public ShopCart() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ShopCart(long scId, long uId, double totalCost, long productAmount, Date creatorTime, Date updateTime) {
		super();
		this.scId = scId;
		this.uId = uId;
		this.totalCost = totalCost;
		this.productAmount = productAmount;
		this.creatorTime = creatorTime;
		this.updateTime = updateTime;
	}

	@Override
	public String toString() {
		return "ShopCart [scId=" + scId + ", uId=" + uId + ", totalCost=" + totalCost + ", productAmount="
				+ productAmount + ", creatorTime=" + creatorTime + ", updateTime=" + updateTime + "]";
	}

	public long getScId() {
		return scId;
	}

	public void setScId(long scId) {
		this.scId = scId;
	}

	public long getuId() {
		return uId;
	}

	public void setuId(long uId) {
		this.uId = uId;
	}

	public double getTotalCost() {
		return totalCost;
	}

	public void setTotalCost(double totalCost) {
		this.totalCost = totalCost;
	}

	public long getProductAmount() {
		return productAmount;
	}

	public void setProductAmount(long productAmount) {
		this.productAmount = productAmount;
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

}
