package com.lti.hiber;

import java.util.Date;

public class Employee1 extends Person{

private Date joiningDate;
private String departmentName;public Employee1() {

}


public Employee1(String firstname, String lastname,String departmentName,Date joiningDate ) {

super(firstname,lastname);

this.departmentName = departmentName;
this.joiningDate = joiningDate;
}


public Date getJoiningDate() {
return joiningDate;
}
public void setJoiningDate(Date joiningDate) {
this.joiningDate = joiningDate;
}
public String getDepartmentName() {
return departmentName;
}
public void setDepartmentName(String departmentName) {
this.departmentName = departmentName;
}
}


