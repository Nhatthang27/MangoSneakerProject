/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
/**
 *
 * @author catlinh
 */
public class Customer {
    int id;
    String firstName, lastName, mail, 
            userName, password, phone;

    public Customer() {
    }

    public Customer(int id, String firstName, String lastName, String mail, String userName, String phone) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.mail = mail;
        this.userName = userName;
        this.phone = phone;
    }

   
    public Customer(int id, String firstName, String lastName, String mail, String userName, String password, String phone) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.mail = mail;
        this.userName = userName;
        this.password = password;
        this.phone = phone;
    }
    
    public Customer(String firstName, String lastName, String mail, String userName, String password, String phone) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.mail = mail;
        this.userName = userName;
        this.password = password;
        this.phone = phone;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    
    
}
