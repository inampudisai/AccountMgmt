package com.chigurupati.model.base;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class NewRegistration {

    @NotNull
    @Column(name = "First_Name")
    private String FirstName;

    @NotNull
    @Column(name = "Last_Name")
    private String LastName;

    @Id
    @Column(name = "emailID")
    private String emailID;

    @NotNull
    @Column(name = "Password")
    @Size(min = 6, max = 15)
    private String password;

    @NotNull
    @Column(name = "MobileNo")
    private int PhoneNo;

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String firstName) {
        FirstName = firstName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String lastName) {
        LastName = lastName;
    }

    public String getEmailID() {
        return emailID;
    }

    public void setEmailID(String emailID) {
        this.emailID = emailID;
    }


    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public int getPhoneNo() {
        return PhoneNo;
    }

    public void setPhoneNo(int phoneNo) {
        PhoneNo = phoneNo;
    }

    public NewRegistration(){

    }

    public NewRegistration(String FirstName,String LastName,String emailID, String password,int PhoneNo){

        setFirstName(FirstName);
        setLastName(LastName);
        setEmailID(emailID);
        setPassword(password);
        setPhoneNo(PhoneNo);

    }
}
