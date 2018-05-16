package com.guet.oos.po;

import java.io.Serializable;
import java.util.Date;

/**
 * 订单项
 * 
 * @author Shinelon
 *
 */
public class OrderItem implements Serializable {

	private static final long serialVersionUID = 8701727993108725468L;

	private long oiId;// 订单项ID

	private long scId;// 购物车ID

	private long oId;// 订单ID

	private long gId;// 菜品

	private long quantity;// 商品数量

	private double productCost;// 商品开销

	private Date creatorTime;// 创建时间

	private Date updateTime;// 更新时间

	public long getOiId() {
		return oiId;
	}

	public void setOiId(long oiId) {
		this.oiId = oiId;
	}

	public long getScId() {
		return scId;
	}

	public void setScId(long scId) {
		this.scId = scId;
	}

	public long getoId() {
		return oId;
	}

	public void setoId(long oId) {
		this.oId = oId;
	}

	public long getgId() {
		return gId;
	}

	public void setgId(long gId) {
		this.gId = gId;
	}

	public long getQuantity() {
		return quantity;
	}

	public void setQuantity(long quantity) {
		this.quantity = quantity;
	}

	public double getProductCost() {
		return productCost;
	}

	public void setProductCost(double productCost) {
		this.productCost = productCost;
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

	public OrderItem(long oiId, long scId, long oId, long gId, long quantity, double productCost, Date creatorTime,
			Date updateTime) {
		super();
		this.oiId = oiId;
		this.scId = scId;
		this.oId = oId;
		this.gId = gId;
		this.quantity = quantity;
		this.productCost = productCost;
		this.creatorTime = creatorTime;
		this.updateTime = updateTime;
	}

	public OrderItem() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "OrderItem [oiId=" + oiId + ", scId=" + scId + ", oId=" + oId + ", gId=" + gId + ", quantity=" + quantity
				+ ", productCost=" + productCost + ", creatorTime=" + creatorTime + ", updateTime=" + updateTime + "]";
	}

}
