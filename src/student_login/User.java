package student_login;

public class User {
	int id;
	String name;
	String surname;
	String dega;
	String gender;
	String email;
	String password;

	public User() {
	}
	
	public User(int id, String name, String surname, String dega, String gender, String email, String password) {
		this.id = id;
		this.name = name;
		this.surname = surname;
		this.dega = dega;
		this.gender = gender;
		this.email = email;
		this.password = password;
	}
	
	public User( String name, String surname, String dega, String gender, String email, String password) {
		this.name = name;
		this.surname = surname;
		this.dega = dega;
		this.gender = gender;
		this.email = email;
		this.password = password;
	}
	
	public User(String email, String password) {
		this.email = email;
		this.password = password;
	}
	
	//used for pass update
	public User(int id, String password) {
		this.id = id;
		this.password = password;
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
	
	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getDega() {
		return dega;
	}

	public void setDega(String dega) {
		this.dega = dega;
	}
	
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}	

	/*public User(int id, String name, String surname, String dega, String email, String password) {
		this.id = id;
		this.name = name;
		this.surname = surname;
		this.email = email;
		this.password = password;
		this.dega = dega;
	}
	
	public User(int id, String name, String surname, String email, String password) {
		this.id = id;
		this.name = name;
		this.surname = surname;
		this.email = email;
		this.password = password;
	}
	
	public User(int id, String name, String email, String password) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
	}

	public User(String name, String email, String password) {
		this.name = name;
		this.email = email;
		this.password = password;
	}
 */
}
