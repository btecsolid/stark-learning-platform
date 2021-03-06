package com.starkindustries.project.Servlet;

import java.io.IOException;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.starkindustries.project.Answer;
import com.starkindustries.project.Comment;
import com.starkindustries.project.Question;
import com.starkindustries.project.StarkDatabase;
import com.starkindustries.project.Student;
import com.starkindustries.project.Validation;


@WebServlet(urlPatterns="/loginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("searchServlet").forward(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password"); 
		String userType = request.getParameter("usertype");
		
		Validation validator = new Validation();
		
		StarkDatabase db = new StarkDatabase();
		
		try {
			Connection conn = db.getConn();
			if(userType.equalsIgnoreCase("user_admin") && validator.validateUser(3, username, password)) {
				request.getRequestDispatcher("/WEB-INF/views/userAdmin.jsp").forward(request,response);
				
			}else if(userType.equalsIgnoreCase("student") && validator.validateUser(1, username, password)) {
				request.setAttribute("loggedInUser", username);
				
				//get questions in last 7 days
				List<Question> sevenDayQnList = Question.getAllQuestionList(db.getSevenDayQuestions(conn));
				request.setAttribute("sevenDayQuestionList", sevenDayQnList);
				
				// get all question
				List<Question> allQnList = Question.getAllQuestionList(db.getAllRecords("questions", conn));
				request.setAttribute("allQuestionList", allQnList);
				
				// get user question
				List<Question> qnList = Question.getAllQuestionList(db.getResultByUserId("questions", username, conn));
				request.setAttribute("myQuestionList", qnList);
				
				//get user answer
				List<Answer> ansList = Answer.getAllAnswerList(db.getResultByUserId("answers", username, conn));
				request.setAttribute("myAnswerList", ansList);
				
				//get user comment
				List<Comment> commentList = Comment.getAllCommentList(db.getResultByUserId("comments", username, conn));
				request.setAttribute("myCommentList", commentList);
				
				request.getRequestDispatcher("/WEB-INF/views/studentHome.jsp").forward(request,response);
			}else if(userType.equalsIgnoreCase("moderator") && validator.validateUser(2, username, password)) {
				request.setAttribute("loggedInUser", username);
				
				LocalDate current = LocalDate.now();
				int year = current.getYear();
				int month = current.getMonthValue();
				Calendar cld = Calendar.getInstance();
				int week = cld.get(Calendar.WEEK_OF_YEAR);
				
				//get yearly questions
				List<Question> yearList = Question.getAllQuestionList(db.getYearlyQuestions(year,conn));
				request.setAttribute("yearList", yearList);
				
				// get monthly questions
				List<Question> monthList = Question.getAllQuestionList(db.getMonthlyQuestions(month,year,conn));
				request.setAttribute("monthList", monthList);
				
				// get weekly questions
				List<Question> weekList = Question.getAllQuestionList(db.getWeeklyQuestions(week,year,conn));
				request.setAttribute("weekList", weekList);
				
				//get participation list
				List<Student> participationList = Student.getStudList(db.getParticipationList(conn));
				request.setAttribute("studList", participationList);
				
				request.getRequestDispatcher("/WEB-INF/views/moderatorForum.jsp").forward(request,response);
			}
			else {
				request.setAttribute("invalid_acc", "Invalid account");
				request.getRequestDispatcher("/WEB-INF/views/home.jsp").forward(request,response);
			}
			conn.close();
		} catch (URISyntaxException | SQLException e) {
			
			e.printStackTrace();
	
		}
		
	}
}
