package dao;

import model.Result;
import util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ResultDao {

        Connection connection =
                DBConnection.getConnection();

        public void saveResult(Result result) {

            try {

                String query =
                        "insert into results(user_id,score) values(?,?)";

                PreparedStatement ps =
                        connection.prepareStatement(query);

                ps.setInt(1, result.getUserId());
                ps.setInt(2, result.getScore());

                ps.executeUpdate();

            } catch (Exception e) {

                System.out.println("Error in Result Dao");
        }
    }
}
