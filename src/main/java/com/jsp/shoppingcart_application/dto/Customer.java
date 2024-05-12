	package com.jsp.shoppingcart_application.dto;
	
	import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
	import javax.persistence.GeneratedValue;
	import javax.persistence.GenerationType;
	import javax.persistence.Id;
	import javax.persistence.OneToMany;
	import javax.persistence.OneToOne;
	
	@Entity
	public class Customer {
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private int id;
		private String name;
		@Column(unique=true)
		private long mobileNum;
		@Column(unique=true)
		private String email;
		private String pass;
		@OneToMany
		private List<Orders> orders;
		@OneToOne(cascade = CascadeType.ALL)
		private Cart cart;
	
		public int getId() {
			return id;
		}
	
		public void setId(int id) {
			this.id = id;
		}
	
		public String getName() {
			return name;
		}
	
		public void setName(String name) {
			this.name = name;
		}
	
		public long getMobileNum() {
			return mobileNum;
		}
	
		public void setMobileNum(long mobileNum) {
			this.mobileNum = mobileNum;
		}
	
		public String getEmail() {
			return email;
		}
	
		public void setEmail(String email) {
			this.email = email;
		}
	
		public String getPass() {
			return pass;
		}
	
		public void setPass(String pass) {
			this.pass = pass;
		}
	
		public List<Orders> getOrders() {
			return orders;
		}
	
		public void setOrders(List<Orders> orders) {
			this.orders = orders;
		}
	
		public Cart getCart() {
			return cart;
		}
	
		public void setCart(Cart cart) {
			this.cart = cart;
		}
	
	}
