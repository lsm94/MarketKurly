package xyz.itwill.bean;

//JavaBean 클래스 : 웹프로그램 실행을 위해 WAS에 의해 자동 생성되어 관리되는 객체를 표현한 클래스 
// - 웹프로그램 요청시 전달된 값을 저장할 목적의 객체를 생성하여 사용

//JavaBean 클래스 작성 규칙
// => 전달값의 이름(입력태그의 name 속성값)과 동일한 이름으로 필드 선언
// => public 접근지정자로 선언된 기본 생성자(매개변수가 없는 생성자) 작성
// => 필드값을 반환하는 메소드(Getter)와 필드값을 변경하는 메소드(Setter)를 필드명을 이용하여 작성

//회원정보를 저장하기 위한 클래스 - VO 클래스, DTO 클래스, JavaBean 클래스
public class Hewon {
	private String name;
	private String phone;
	private String address;
	
	public Hewon() {
		// TODO Auto-generated constructor stub
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
}
