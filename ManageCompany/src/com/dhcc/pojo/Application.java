package com.dhcc.pojo;

import java.sql.Date;

public class Application {
		private int id;
		private String name;
		private String webName;
		private int status;
		private String adName;
		private Date applyDate;
		private String	detail;
		
		public Application(){
			
		}
		
		public Application(int id, String name, String webName, int status,
				String adName, Date applyDate, String detail) {
			super();
			this.id = id;
			this.name = name;
			this.webName = webName;
			this.status = status;
			this.adName = adName;
			this.applyDate = applyDate;
			this.detail = detail;
		}

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
		public String getWebName() {
			return webName;
		}
		public void setWebName(String webName) {
			this.webName = webName;
		}
		public int getStatus() {
			return status;
		}
		public void setStatus(int status) {
			this.status = status;
		}
		public String getAdName() {
			return adName;
		}
		public void setAdName(String adName) {
			this.adName = adName;
		}
		public Date getApplyDate() {
			return applyDate;
		}
		public void setApplyDate(Date applyDate) {
			this.applyDate = applyDate;
		}
		public String getDetail() {
			return detail;
		}
		public void setDetail(String detail) {
			this.detail = detail;
		}
		
		
}
