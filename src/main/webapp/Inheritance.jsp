<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="org.hibernate.*,org.hibernate.boot.*, java.util.*,org.hibernate.boot.registry.StandardServiceRegistryBuilder,
    org.hibernate.cfg.Configuration,com.lti.hiber.Person,com.lti.hiber.Employee1, java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
Configuration cfg = new Configuration();
cfg.configure("hibernate.cfg.xml");
SessionFactory factory = cfg.buildSessionFactory(new StandardServiceRegistryBuilder().configure().build());
Session sess= factory.openSession();
sess.beginTransaction();
Person person  =  new Person("Steve" ,"Rogers");
sess.save(person);

Employee1 employee  = new Employee1("Chris","Evans","Acting" ,new  Date());
sess.save(employee);
out.println("Executed Sucessfully");
sess.getTransaction().commit();

sess.close();

%>  

</body>
</html>