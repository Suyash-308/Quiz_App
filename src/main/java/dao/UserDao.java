package dao;

import model.User;
import util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {
        Connection connection =
                DBConnection.getConnection();

        public boolean register(User user) {

            try {

                String query =
                        "insert into users(name,email,password) values(?,?,?)";

                PreparedStatement ps = connection.prepareStatement(query);

                ps.setString(1, user.getName());
                ps.setString(2, user.getEmail());
                ps.setString(3, user.getPassword());

                int rows = ps.executeUpdate();

                return rows > 0;

            } catch (Exception e) {
                System.out.println("Error in user dao");
            }

            return false;
        }

        public User login(String email, String password) {

            try {

                String query =
                        "select * from users where email=? and password=?";

                PreparedStatement ps =
                        connection.prepareStatement(query);

                ps.setString(1, email);
                ps.setString(2, password);

                ResultSet rs = ps.executeQuery();

                if(rs.next()) {

                    return new User(
                            rs.getInt("id"),
                            rs.getString("name"),
                            rs.getString("email"),
                            rs.getString("password")
                    );
                }

            } catch (Exception e) {

                e.printStackTrace();
            }

            return null;
        }
    }
