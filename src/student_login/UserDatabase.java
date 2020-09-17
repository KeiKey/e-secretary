package student_login;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDatabase {
	Connection con;
	User usr = null;
	public UserDatabase(Connection con) {
		this.con = con;
	}
	
	public User IdUser(int idStd) {
		User iduser=null;
		try {
			String queryId="select * from student where idStudent=?";
			PreparedStatement pst=this.con.prepareStatement(queryId);
			pst.setLong(1, idStd);
			ResultSet rsId=pst.executeQuery();
			
			if(rsId.next()) {
				iduser= new User();
				iduser.setId(rsId.getInt("idStudent"));
				iduser.setName(rsId.getString("name"));
				iduser.setSurname(rsId.getString("surname"));
				iduser.setDega(rsId.getString("dega"));
				iduser.setGender(rsId.getString("gender"));
				iduser.setEmail(rsId.getString("email"));
				iduser.setPassword(rsId.getString("password"));
			}	
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return iduser;
	}
	
	public User login(String email, String pass) {
		User usr = null;
		try {
			String query = "select * from student where email=? and password=?";
			PreparedStatement pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			pst.setString(2, pass);

			ResultSet rs = pst.executeQuery();

			if (rs.next()) {
				usr = new User();
				usr.setId(rs.getInt("idStudent"));
				usr.setName(rs.getString("name"));
				usr.setSurname(rs.getString("surname"));
				usr.setDega(rs.getString("dega"));
				usr.setGender(rs.getString("gender"));
				usr.setEmail(rs.getString("email"));
				usr.setPassword(rs.getString("password"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return usr;
	}

	public boolean saveUser(User user) {
		boolean set = false;
		try {
			String query = "insert into student(name,surname,dega,gender,email,password) values(?,?,?,?,?,?)";

			PreparedStatement pt = this.con.prepareStatement(query);
			pt.setString(1, user.getName());
			pt.setString(2, user.getSurname());
			pt.setString(3, user.getDega());
			pt.setString(4, user.getGender());
			pt.setString(5, user.getEmail()); 
			pt.setString(6, user.getPassword());

			pt.executeUpdate();
			set = true;
		} catch (Exception e) { 
			e.printStackTrace();
		}
		return set;
	}

	public void PassUpdateStudent(String NewPass, int idDB) {
		//String sukses = "false";
		try {
			String qry="update student set password=? where idStudent=?";
			PreparedStatement pt = this.con.prepareStatement(qry);
			pt.setString(1, NewPass);
			pt.setLong(2, idDB);
			pt.executeUpdate();
			//sukses="true";
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		//return sukses;
	}
	
	public List < User > GetAllStudents(){
		List < User > usersList = new ArrayList < > ();
		//User userThrow = new User();
		try {
			String qry="select * from student";
			PreparedStatement pt = this.con.prepareStatement(qry);
			ResultSet rs = pt.executeQuery();
			while(rs.next()) {
				/*
				 * userThrow.setId(rs.getInt("idStudent"));
				 * userThrow.setName(rs.getString("name"));
				 * userThrow.setSurname(rs.getString("surname"));
				 * userThrow.setDega(rs.getString("dega"));
				 * userThrow.setGender(rs.getString("gender"));
				 * userThrow.setEmail(rs.getString("email"));
				 * userThrow.setPassword(rs.getString("password")); usersList.add(userThrow);
				 */
				int id = rs.getInt("idStudent");
				String name = rs.getString("name");
				String surname = rs.getString("surname");
				String dega = rs.getString("dega");
				String gender = rs.getString("gender");
				String email = rs.getString("email");
				String pass = rs.getString("password");
				usersList.add(new User(id, name, surname, dega, gender, email, pass));
			}

		}catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return usersList;
	}
	
	
    public void deleteStudent(int id){
        try{
            
           String query= "delete from student where idStudent=?";
           PreparedStatement pt = this.con.prepareStatement(query);
           pt.setInt(1, id);
           pt.execute();
            
        }catch(Exception ex){
            ex.printStackTrace();
        }
    }
	
	public boolean StudentUpdate (User user) {
		try {
			String query = "update student set name = ?,surname=?,dega=?,gender=?,email=?,password=? where idStudent = ?;";
			PreparedStatement pt = this.con.prepareStatement(query);
			pt.setString(1, user.getName());
			pt.setString(2, user.getSurname());
			pt.setString(3, user.getDega());
			pt.setString(4, user.getGender());
			pt.setString(5, user.getEmail()); 
			pt.setString(6, user.getPassword());
			pt.setLong(7, user.getId());
			pt.executeUpdate();
			return true;
		}catch(Exception ex) {
			ex.getSuppressed();
		}
		return false;
	}
    
    
    
    
	
	
	
	
	/*
	 * 
	 * public List<User> getAllUsers(){ List<User> u = new ArrayList<>();
	 * 
	 * try{
	 * 
	 * String query = "select * from books"; PreparedStatement pt =
	 * this.con.prepareStatement(query); ResultSet rs = pt.executeQuery();
	 * 
	 * while(rs.next()){ int id = rs.getInt("id"); String bname =
	 * rs.getString("bName"); String des = rs.getString("bDesc"); String aname =
	 * rs.getString("aName"); String cat = rs.getString("cat");
	 * 
	 * books row = new books(id,bname,des,aname,cat); book.add(row); }
	 * 
	 * }catch(Exception e){ e.printStackTrace();; } return book; } public void
	 * UpdatePassStudent(User usrr) { try { String
	 * query="update student set password=? where id=?"; PreparedStatement psPass =
	 * this.con.prepareStatement(query); psPass.setString(1, usrr.getPassword());
	 * psPass.setLong(2, usrr.getId()); psPass.executeUpdate(); }catch(Exception
	 * ex){ ex.printStackTrace(); } } public void editBookInfo(books book){
	 * 
	 * try{ String query =
	 * "update books set bName=?, bDesc=?, aName=?, cat=? where id=?";
	 * PreparedStatement pt = this.con.prepareStatement(query); pt.setString(1,
	 * book.getBookName()); pt.setString(2, book.getBookDesc()); pt.setString(3,
	 * book.getAuthName()); pt.setString(4, book.getCat()); pt.setInt(5,
	 * book.getId());
	 * 
	 * pt.executeUpdate(); }catch(Exception ex){ ex.printStackTrace();; }
	 * 
	 * public void ChangePass(String pass1 , String pass2, String pass3) { int idP =
	 * (Integer) null; try{ String query = "select * from login where password=?";
	 * PreparedStatement ptp = this.con.prepareStatement(query); ptp.setString(1,
	 * pass1);
	 * 
	 * ResultSet rsp = ptp.executeQuery(); if(rsp.next()) { }
	 * 
	 * } catch(Exception e){
	 * 
	 * } }
	 */
}


