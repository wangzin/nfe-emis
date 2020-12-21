package bt.gov.moe.nfe.newedge.modals;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name = "t_user_master")
public class UserModal {
	@Id
	@Column(name="Id")
	private int id;
	@Column(name="Cid")
	private int cid;
	@Column(name="Name")
	private String name;
	@Column(name="Phone_No")
	private String phoneNo;
	@Column(name="Email")
	private String email;
	@Column(name="Status")
	private String status;
	
	@OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "Gender", referencedColumnName = "Id")
    private GenderModal gender;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public GenderModal getGender() {
		return gender;
	}
	public void setGender(GenderModal gender) {
		this.gender = gender;
	}
	
	
	
}
