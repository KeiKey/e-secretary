package admin_package;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import admin_package.User3;
public class UserDatabase3 {
	Connection con;

	public UserDatabase3(Connection con) {
		this.con = con;
	}

	public User3 login3(String email, String pass) {
		User3 usr = null;
		try {
			String query = "select * from admin where Email=? and Pass=?";
			PreparedStatement pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			pst.setString(2, pass);

			ResultSet rs = pst.executeQuery();

			if (rs.next()) {
				usr = new User3();
				usr.setId3(rs.getInt("idAdmin"));
				usr.setName3(rs.getString("Name"));
				usr.setEmail3(rs.getString("Email"));
				usr.setPassword3(rs.getString("Pass"));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return usr;
	}
	public void PassUpdateAdmin(String NewPass, int idDB) {
		try {
			String qry="update admin set Pass=? where idAdmin=?";
			PreparedStatement pt = this.con.prepareStatement(qry);
			pt.setString(1, NewPass);
			pt.setLong(2, idDB);
			pt.executeUpdate();
		}catch(Exception ex) {
			ex.printStackTrace();
		}
	}

}
