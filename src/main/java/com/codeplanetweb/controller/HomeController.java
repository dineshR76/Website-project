package com.codeplanetweb.controller;

import java.awt.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
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
	@GetMapping("/admindash")
	public String admindash()
	{
      return "admindash";
	}
	
	@GetMapping("/addmarks")
	public String addmarks()
	{
      return "addmarks";
	}
	@GetMapping("/secondstep")
	public String secondstep()
	{
      return "secondstep";
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
		if (rs.next())
		{
			req.setAttribute("test", "You are already signedup");
			return "dup";
		}
		else 
		{
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
			sendMail(email,fname+" You've been sucessfully registered", "CodePlabnet Admission");
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
				e.printStackTrace();
			}
		  }
	 
	 @GetMapping("/studdata")
	 public String studdata(HttpServletRequest req, String fname, String cname, String rollno, String father, String mother, String mobile, String village ) throws ClassNotFoundException, SQLException
	 {
	 	
	 	Connection con = jdbcTemplate.getDataSource().getConnection();
	 	
//	 	String query = "insert into task values('"+ todoitem +"' )";
//	 	Statement stmt=con.createStatement();
//	 	int i=stmt.executeUpdate(query);
	 	
	 	String query = "insert into student_data values(?,?,?,?,?,?,?)";
	 	PreparedStatement ps= con.prepareStatement(query);
	 	
	 	ps.setString(1, fname);
	 	ps.setString(2, cname);
	 	ps.setString(3, rollno);
	 	ps.setString(4, father);
	 	ps.setString(5, mother);
	 	ps.setString(6, mobile);
	 	ps.setString(7, village);
	 	int i=ps.executeUpdate();
	 	
	 	String query1 = "select * from student_data";
	 	PreparedStatement ps1= con.prepareStatement(query1);
	 	ResultSet rs= ps1.executeQuery();
//	 	ArrayList l=new ArrayList();
//	 	while(rs.next())
//	 	{
//	 		l.add( rs.getString("fname"));
//	 		l.add( rs.getString("cname"));
//	 		l.add( rs.getString("rollno"));
//	 		l.add( rs.getString("father"));
//	 		l.add( rs.getString("mother"));
//	 		l.add( rs.getString("mobile"));
//	 		l.add( rs.getString("village"));
//	
//	 }
//	 	req.setAttribute("list", l);
	 	return "secondstep";
	 }
	 
	 @GetMapping("/studentdata")
		public String studentdata(HttpServletRequest req) throws ClassNotFoundException, SQLException
		{
			Connection con = jdbcTemplate.getDataSource().getConnection();
		 	
	 	String query1 = "select * from student_data";
		 	PreparedStatement ps1= con.prepareStatement(query1);
		 	ResultSet rs= ps1.executeQuery();
		 ArrayList l =new ArrayList();
		 	while(rs.next())
		 	{
		 		Map m = new HashMap();
		 		m.put("fname", rs.getString("fname"));
		 		m.put("cname", rs.getInt("cname"));
		 		m.put("rollno", rs.getInt("rollno"));
		 		m.put("father", rs.getString("father"));
		 		m.put("mother",rs.getString("mother"));
		 		m.put("mobile", rs.getString("mobile"));
		 		m.put("village", rs.getString("village"));
		 		l.add(m);
		
		 }
		 	req.setAttribute("list", l);
	      return "next";
		}
	 
	 @GetMapping("/updatemarks1")
		public String updatemarks1()
		{
			return "updatemarks1";
		}
	 @GetMapping("/upd2")
		public String upd2(HttpServletRequest req, String rollno) throws ClassNotFoundException, SQLException
		{
		 Connection con = jdbcTemplate.getDataSource().getConnection();
		 	
		 	String query1 = "select * from student_data where rollno=?";
			 	PreparedStatement ps1= con.prepareStatement(query1);
			 	ps1.setString(1,rollno);
			 	ResultSet rs= ps1.executeQuery();
			 ArrayList l =new ArrayList();
			 	while(rs.next())
			 	{
			 		Map m = new HashMap();
			 		m.put("fname", rs.getString("fname"));
			 		m.put("cname", rs.getInt("cname"));
			 		m.put("rollno", rs.getInt("rollno"));
			 		m.put("father", rs.getString("father"));
			 		m.put("mother",rs.getString("mother"));
			 		m.put("mobile", rs.getString("mobile"));
			 		m.put("village", rs.getString("village"));
			 		l.add(m);
			
			 }
			 	req.setAttribute("list", l);
		      return "upd2";
			}
	 
	 @PostMapping("/thirdstep")
		public String updatemark_form(HttpServletRequest req, int rollno, int hindi, int english, int math, int physics, int chemistry)  throws ClassNotFoundException, SQLException
		{
		 Connection con = jdbcTemplate.getDataSource().getConnection();

		 	
		 	String query = "insert into stud_marks values(?,?,?,?,?,?)";
		 	PreparedStatement ps= con.prepareStatement(query);
		 	
		 	ps.setInt(1, rollno);
		 	ps.setInt(2, hindi);
		 	ps.setInt(3, english);
		 	ps.setInt(4, math);
		 	ps.setInt(5, physics);
		 	ps.setInt(6, chemistry);
		 	int i=ps.executeUpdate();
		 	
		 	String query1 = "select * from student_data";
		 	PreparedStatement ps1= con.prepareStatement(query1);
		 	ResultSet rs= ps1.executeQuery();

			return "thirdstep";
		}
	 
	 @GetMapping("/updatemark")
		public String updatemark_form(HttpServletRequest req, String rollno) throws ClassNotFoundException, SQLException
		{
		 Connection con = jdbcTemplate.getDataSource().getConnection();
		 	
		 	String query1 = "select * from stud_marks where rollno=?";
			 	PreparedStatement ps1= con.prepareStatement(query1);
			 	ps1.setString(1,rollno);
			 	ResultSet rs= ps1.executeQuery();
			 ArrayList l =new ArrayList();
			 	while(rs.next())
			 	{
			 		Map m = new HashMap();
			 		m.put("rollno", rs.getInt("rollno"));
			 		m.put("hindi", rs.getString("hindi"));
			 		m.put("english",rs.getString("english"));
			 		m.put("math", rs.getString("math"));
			 		m.put("physics", rs.getString("physics"));
			 		m.put("chemistry", rs.getString("chemistry"));
			 		l.add(m);
			
			 }
			 	req.setAttribute("list", l);
		      return "updatemark_form";
			}
	 @PostMapping("/updatemarks2")
		public String updatemarks2(HttpServletRequest req, int rollno, int hindi, int english, int math, int physics, int chemistry)  throws ClassNotFoundException, SQLException
		{
		 Connection con = jdbcTemplate.getDataSource().getConnection();

		 	
		 	String query = "update stud_marks set hindi=?, english=?, math=?, physics=?, chemistry=? where rollno=?";
		 	PreparedStatement ps= con.prepareStatement(query);
		 	
		 	ps.setInt(1, hindi);
		 	ps.setInt(2, english);
		 	ps.setInt(3, math);
		 	ps.setInt(4, physics);
		 	ps.setInt(5, chemistry);
		 	ps.setInt(6, rollno);
		 	int i=ps.executeUpdate();
		 	
		 	String query1 = "select * from stud_marks";
		 	PreparedStatement ps1= con.prepareStatement(query1);
		 	ResultSet rs= ps1.executeQuery();

			return "next2";
		}
	 	@PostMapping("/result")
		public String result(HttpServletRequest req, String rollno,String cname) throws ClassNotFoundException, SQLException
		{
		 Connection con = jdbcTemplate.getDataSource().getConnection();
		 	
		 	String query1 = "select * from stud_marks where rollno=?";
			 	PreparedStatement ps1= con.prepareStatement(query1);
			 	ps1.setString(1,rollno);
			 	ResultSet rs= ps1.executeQuery();
			 ArrayList l =new ArrayList();
			 	while(rs.next())
			 	{
			 		Map m = new HashMap();
			 		m.put("rollno", rs.getInt("rollno"));
			 		m.put("hindi", rs.getString("hindi"));
			 		m.put("english",rs.getString("english"));
			 		m.put("math", rs.getString("math"));
			 		m.put("physics", rs.getString("physics"));
			 		m.put("chemistry", rs.getString("chemistry"));
			 		l.add(m);
			
			 }
			 	req.setAttribute("list", l);
			 	
			 	String query2 = "select * from student_data where rollno=?";
			 	PreparedStatement ps2= con.prepareStatement(query2);
			 	ps2.setString(1,rollno);
			 	ResultSet rs1= ps2.executeQuery();
			 ArrayList l1 =new ArrayList();
			 	while(rs1.next())
			 	{
			 		Map m1 = new HashMap();
			 		m1.put("fname", rs1.getString("fname"));
			 		m1.put("cname", rs1.getInt("cname"));
			 		m1.put("rollno", rs1.getInt("rollno"));
			 		m1.put("father", rs1.getString("father"));
			 		m1.put("mother",rs1.getString("mother"));
			 		m1.put("mobile", rs1.getString("mobile"));
			 		m1.put("village", rs1.getString("village"));
			 		l1.add(m1);
			
			 }
			 	req.setAttribute("list1", l1);
			 	
			 	
			 	
		      return "result";
			}
	 	@GetMapping("/stud_resc")
		public String stud_resc()
		{
	      return "stud_resc";
		}
	 	@PostMapping("/login")
		public String login(HttpServletRequest req, String username, String password) throws ClassNotFoundException, SQLException
		{
	 		 Connection con = jdbcTemplate.getDataSource().getConnection();
			 	
			 	String query1 = "select * from login where username=?";
				 	PreparedStatement ps1= con.prepareStatement(query1);
				 	ps1.setString(1,username);
				 	ResultSet rs= ps1.executeQuery();
	 		
	      return "admin_dash";
		}
}