package pedagog_login;

public class User2 {
	int id;
	String name;
	String surname;
	String email;
	String password;

	public User2() {
	}
	
	public User2(int id, String name, String surname, String email, String password) {
		this.id = id;
		this.name = name;
		this.surname = surname;
		this.email = email;
		this.password = password;
	}
	
	public User2(int id, String name, String email, String password) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
	}

	public User2(String name, String email, String password) {
		this.name = name;
		this.email = email;
		this.password = password;
	}

	public User2(String email, String password) {
		this.email = email;
		this.password = password;
	}

	public int getId2() {
		return id;
	}

	public void setId2(int id) {
		this.id = id;
	}

	public String getName2() {
		return name;
	}

	public void setName2(String name) {
		this.name = name;
	}

	public String getSurname2() {
		return surname;
	}

	public void setSurname2(String surname) {
		this.surname = surname;
	}
	
	public String getEmail2() {
		return email;
	}

	public void setEmail2(String email) {
		this.email = email;
	}

	public String getPassword2() {
		return password;
	}

	public void setPassword2(String password) {
		this.password = password;
	}

}
