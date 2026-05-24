package dao;

import model.Question;
import util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class QuestionDao {

        Connection connection =
                DBConnection.getConnection();

        public List<Question> getAllQuestions() {

            List<Question> list = new ArrayList<>();

            try {

                String query = "select * from questions";
                PreparedStatement ps = connection.prepareStatement(query);

                ResultSet rs = ps.executeQuery();

                while(rs.next()) {

                    Question q = new Question();

                    q.setId(rs.getInt("id"));
                    q.setQuestion(rs.getString("question"));
                    q.setOption1(rs.getString("option1"));
                    q.setOption2(rs.getString("option2"));
                    q.setOption3(rs.getString("option3"));
                    q.setOption4(rs.getString("option4"));
                    q.setCorrectAnswer(rs.getString("correct_answer"));

                    list.add(q);
                }

            } catch (Exception e) {

                System.out.println("Error in Question Dao");
            }

            return list;
        }
    }

