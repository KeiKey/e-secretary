package pedagog_login;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDatabase2 {
	Connection con;

	public UserDatabase2(Connection con) {
		this.con = con;
	}
	
	public User2 IdUser2(int idPdg) {
		User2 iduser=null;
		try {
			String queryId="select * from pedagog where idPedagog=?";
			PreparedStatement pst=this.con.prepareStatement(queryId);
			pst.setLong(1, idPdg);
			ResultSet rsId=pst.executeQuery();
			
			if(rsId.next()) {
				iduser= new User2();
				iduser.setId2(rsId.getInt("idPedagog"));
				iduser.setName2(rsId.getString("name"));
				iduser.setSurname2(rsId.getString("surname"));
				iduser.setEmail2(rsId.getString("email"));
				iduser.setPassword2(rsId.getString("password"));
			}	
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return iduser;
	}
	
	public User2 login2(String email, String pass) {
		User2 usr = null;
		try {
			String query = "select * from pedagog where email=? and password=?";
			PreparedStatement pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			pst.setString(2, pass);

			ResultSet rs = pst.executeQuery();

			if (rs.next()) {
				usr = new User2();
				usr.setId2(rs.getInt("idPedagog"));
				usr.setName2(rs.getString("name"));
				usr.setSurname2(rs.getString("surname"));
				usr.setEmail2(rs.getString("email"));
				usr.setPassword2(rs.getString("password"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return usr;
	}
	
	public List < User2 > GetAllPedagog(){
		List < User2 > usersList = new ArrayList < > ();
	
		try {
			String qry="select * from pedagog";
			PreparedStatement pt = this.con.prepareStatement(qry);
			ResultSet rs = pt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("idPedagog");
				String name = rs.getString("name");
				String surname = rs.getString("surname");
				String email = rs.getString("email");
				String password = rs.getString("password");
				usersList.add(new User2(id, name, surname, email, password));
			}

		}catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return usersList;
	}
	
	public boolean savePedagog(User2 user) {
		boolean set = false;
		try {
			String query = "insert into pedagog(name,surname,email,password) values(?,?,?,?)";

			PreparedStatement pt = this.con.prepareStatement(query);
			pt.setString(1, user.getName2());
			pt.setString(2, user.getSurname2());
			pt.setString(3, user.getEmail2()); 
			pt.setString(4, user.getPassword2());

			pt.executeUpdate();
			set = true;
		} catch (Exception e) { 
			e.printStackTrace();
		}
		return set;
	}
	
	public void PassUpdatePedagog(String NewPass, int idDB) {
		try {
			String qry="update pedagog set password=? where idPedagog=?";
			PreparedStatement pt = this.con.prepareStatement(qry);
			pt.setString(1, NewPass);
			pt.setLong(2, idDB);
			pt.executeUpdate();
		}catch(Exception ex) {
			ex.printStackTrace();
		}
	}
	
	
	public void deletePedagog(int id){
        try{
            
           String query= "delete from pedagog where idPedagog=?";
           PreparedStatement pt = this.con.prepareStatement(query);
           pt.setInt(1, id);
           pt.execute();
            
        }catch(Exception ex){
            ex.printStackTrace();;
        }
    }
	
	public boolean PedagogUpdate (User2 user) {
		try {
			String query = "update pedagog set name = ?,surname=?,email=?,password=? where idPedagog = ?;";
			PreparedStatement pt = this.con.prepareStatement(query);
			pt.setString(1, user.getName2());
			pt.setString(2, user.getSurname2());
			pt.setString(3, user.getEmail2()); 
			pt.setString(4, user.getPassword2());
			pt.setLong(5, user.getId2());
			pt.executeUpdate();
			return true;
		}catch(Exception ex) {
			ex.getSuppressed();
		}
		return false;
	}
	
	
}