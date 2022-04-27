package com.codeplanetweb.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
@Controller
public class HomeController 
{

	  @Autowired
	  JdbcTemplate jdbcTemplate;
	
	@GetMapping("/abc")
	public String abc()
	{
      return "home";
	}
	@GetMapping("/about")
	public String about()
	{
      return "about";
	}
	@GetMapping("/courses")
	public String courses()
	{
      return "courses";
	}
	@GetMapping("/form")
	public String form()
	{
      return "form";
	}
	@GetMapping("/examcell")
	public String examcell()
	{
      return "examcell";
	}
	@GetMapping("/campus")
	public String campus()
	{
      return "campus";
	}
	@GetMapping("/admit")
	public String admit1(HttpServletRequest req)
	{
		String fname=req.getParameter("fname");
		String lname=req.getParameter("lname");
		String mobile=req.getParameter("mobile");
		String email=req.getParameter("email");
		String gender=req.getParameter("gender");
		String marks=req.getParameter("marks");
		String course=req.getParameter("course");
		
		return "home";
	}
	
	
	@PostMapping("/admit")
	  public String admit(HttpServletRequest req) throws SQLException, ClassNotFoundException {
		String fname=req.getParameter("fname");
		String lname=req.getParameter("lname");
		String mobile=req.getParameter("mobile");
		String email=req.getParameter("email");
		String gender=req.getParameter("gender");
		String marks=req.getParameter("marks");
		String course=req.getParameter("course");
		
		Connection con= jdbcTemplate.getDataSource().getConnection();
		String query1 = "Select * from admission where email=?";
		PreparedStatement stmt = con.prepareStatement(query1);
		stmt.setString(1,email);
		ResultSet rs = stmt.executeQuery();
		if (rs.next()) {
			req.setAttribute("test", "You are already signedup");
		} else {
		  String query2 = "insert into admission(fname,lname,mobile,email,gender,marks,course) values(?,?,?,?,?,?,?)";
		  PreparedStatement stmt1 = con.prepareStatement(query2);
		  stmt1.setString(1,fname);
		  stmt1.setString(2,lname);
		  stmt1.setString(3,mobile);
		  stmt1.setString(4,email);
		  stmt1.setString(5,gender);
		  stmt1.setString(6,marks);
		  stmt1.setString(7,course);
		  int row = stmt1.executeUpdate();
		  if (row >=1) {
			sendMail(email,"sucessfully registered", "Alert");
			req.setAttribute("email", email);
		  }
		}
		
		return "sucess";
	  }
	
	
	 private static void sendMail(String emailTo, String body, String subject) {
		    Properties p = new Properties();
			p.put("mail.smtp.host", "smtp.gmail.com");
			p.put("mail.smtp.port", "465");
			p.put("mail.smtp.ssl.enable", "true");
			p.put("mail.smtp.auth", "true");
			MailAuthenticator m = new MailAuthenticator("rdinesh709@gmail.com", "boopathy12");
			
			Session session = Session.getInstance(p, m);
			session.setDebug(true);
			MimeMessage msg = new MimeMessage(session);
			try {
				msg.setFrom("rdinesh709@gmail.com");
				msg.addRecipient(Message.RecipientType.TO, new InternetAddress(emailTo));
				msg.setSubject(subject);
				msg.setText(body);
				Transport.send(msg);
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		  }
	

}