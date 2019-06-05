package jsp.member;

public class MemberDTO {
	
	private String name;
	private String email;
	private String pw;
	private String emailHash;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmailHash() {
		return emailHash;
	}
	public void setEmailHash(String emailHash) {
		this.emailHash = emailHash;
	}
	
	public MemberDTO() {}
	
	public MemberDTO(String name, String email, String pw) {
		super();
		this.name = name;
		this.email = email;
		this.pw = pw;
	}
	
}
