package com.lti.hiber;

public class Person {
private Long personId;
private  String firstName;
private  String lastName;

public Person() {
}

public Person(String firstname, String lastname) {
this.firstName = firstname;
this.lastName = lastname;
}

public Long getPersonId() {
return personId;
}
public void setPersonId(Long personId) {
this.personId = personId;
}
public String getFirstName() {
return firstName;
}
public void setFirstName(String firstname) {
this.firstName = firstname;
}
public String getLastName() {
return lastName;
}
public void setLastName(String lastname) {
this.lastName = lastname;
}


}