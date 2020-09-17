package admin_package;

public class User3 {
	int id;
	String name;
	String email;
	String password;

	public User3() {
	}

	public User3(int id, String name, String email, String password) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
	}

	public User3(String name, String email, String password) {
		this.name = name;
		this.email = email;
		this.password = password;
	}

	public User3(String email, String password) {
		this.email = email;
		this.password = password;
	}

	public int getId3() {
		return id;
	}

	public void setId3(int id) {
		this.id = id;
	}

	public String getName3() {
		return name;
	}

	public void setName3(String name) {
		this.name = name;
	}

	public String getEmail3() {
		return email;
	}

	public void setEmail3(String email) {
		this.email = email;
	}

	public String getPassword3() {
		return password;
	}

	public void setPassword3(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User3 [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + "]";
	}
	
	
}
