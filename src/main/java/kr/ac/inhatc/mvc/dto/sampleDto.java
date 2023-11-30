package kr.ac.inhatc.mvc.dto;

/**
 * @author joseo
 *
 */
public class sampleDto {
	
	private Integer id;
	private String subject;
	private Integer grade;
	private String useYn;
	private String description;
	private String regUser;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public Integer getGrade() {
		return grade;
	}
	public void setGrade(Integer grade) {
		this.grade = grade;
	}
	public String getUseYn() {
		return useYn;
	}
	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getRegUser() {
		return regUser;
	}
	public void setRegUser(String regUser) {
		this.regUser = regUser;
	}
	
	@Override
	public String toString() {
		return "sampleDto [id=" + id + ", subject=" + subject + ", grade=" + grade + ", useYn=" + useYn
				+ ", description=" + description + ", regUser=" + regUser + "]";
	}
	
}
