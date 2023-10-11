package dto;

public class Review {
	private String pidnum;
	private String comnum;
	private String content;
	private String star;
	
	public Review() {}
	public Review(String pidnum, String comnum,String content,String star) {
		this.pidnum=pidnum;
		this.comnum=comnum;
		this.content=content;
		this.star=star;
	}
	public String getPidnum() {
		return pidnum;
	}
	public void setPidnum(String pidnum) {
		this.pidnum = pidnum;
	}
	public String getComnum() {
		return comnum;
	}
	public void setComnum(String comnum) {
		this.comnum = comnum;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getStar() {
		return star;
	}
	public void setStar(String star) {
		this.star = star;
	}
	
	
}