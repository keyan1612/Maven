<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="org.hibernate.*,org.hibernate.boot.*,org.hibernate.boot.registry.StandardServiceRegistryBuilder,
    org.hibernate.cfg.Configuration,java.util.*,javax.persistence.*,
    com.lti.hiber.Question;" %>

<!DOCTYPE html >
<html>
<head>
<meta charset="ISO-8859-1">
<title>Questions</title>
</head>
<body>
<%
 Configuration configuration=new Configuration();
 configuration.configure("hibernate.cfg.xml");
 SessionFactory factory=configuration.buildSessionFactory(new StandardServiceRegistryBuilder().configure().build());
 Session sess=factory.openSession();
 sess.beginTransaction();
 
 HashMap<String,String>map1=new HashMap<String,String>();
 map1.put("Java is a Programming Langauge","Deeps");
 map1.put("Java is a Platform","Moni");
 
 HashMap<String,String>map2=new HashMap<String,String>();
 map2.put("Servlet is a Server Sider Programming","Mahesh");
 map2.put("Servlet is a Interface","Blessy");
 map2.put("Servlet is a Package","Vijay");
 
 Question q1=new Question("What is Java?","Mohan",map1);
 Question q2=new Question("What is Servlet?","Mathu",map2);
 
 sess.persist(q1);
 sess.persist(q2);
 sess.getTransaction().commit();
 out.println("Successfully Saved");
 %>
</body>
</html>