package bt.gov.moe.nfe.newedge.modals;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "gender_master")
public class GenderModal {
		@Id
		@Column(name="Id")
		private int id;
		@Column(name="Gender")
		private String gender;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		
}
