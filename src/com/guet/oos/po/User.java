package com.guet.oos.po;

import java.io.Serializable;

/**
 * 用户实体
 * 
 * @author Shinelon
 *
 */
public class User implements Serializable {

	private static final long serialVersionUID = -7576417437606766047L;

	private long uId;// 用户ID

	private String mobile;// 手机号码

	private String password;// 密码

	private String username;// 用户真实姓名

	private String sex;// 性别

	private String creatorTime;// 创建时间

	private String updateTime;// 修改时间

	@Override
	public String toString() {
		return "User [uId=" + uId + ", mobile=" + mobile + ", password=" + password + ", username=" + username
				+ ", sex=" + sex + ", creatorTime=" + creatorTime + ", updateTime=" + updateTime + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	public User(long uId, String mobile, String password, String username, String sex, String creatorTime,
			String updateTime) {
		super();
		this.uId = uId;
		this.mobile = mobile;
		this.password = password;
		this.username = username;
		this.sex = sex;
		this.creatorTime = creatorTime;
		this.updateTime = updateTime;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public long getuId() {
		return uId;
	}

	public void setuId(long uId) {
		this.uId = uId;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getCreatorTime() {
		return creatorTime;
	}

	public void setCreatorTime(String creatorTime) {
		this.creatorTime = creatorTime;
	}

	public String getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}

}
