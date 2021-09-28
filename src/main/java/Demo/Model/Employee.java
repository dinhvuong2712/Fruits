package Demo.Model;

import java.util.Date;

public class Employee extends StatusAndDateTime{
    private int Id_emp;
    private String FirstName;
    private String LastName;
    private boolean Gender;
    private String Address;
    private String PhoneNumber;
    private Date Birth;
    private int Id_acc;

    public int getId_emp() {
        return Id_emp;
    }

    public void setId_emp(int id_emp) {
        Id_emp = id_emp;
    }

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

    public boolean getGender() {
        return Gender;
    }

    public void setGender(boolean gender) {
        Gender = gender;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getPhoneNumber() {
        return PhoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        PhoneNumber = phoneNumber;
    }

    public Date getBirth() {
        return Birth;
    }

    public void setBirth(Date birth) {
        Birth = birth;
    }

    public int getId_acc() {
        return Id_acc;
    }

    public void setId_acc(int id_acc) {
        Id_acc = id_acc;
    }

    @Override
    public boolean isStatus() {
        return super.isStatus();
    }

    @Override
    public void setStatus(boolean status) {
        super.setStatus(status);
    }

    @Override
    public String getCreated_date() {
        return super.getCreated_date();
    }

    @Override
    public void setCreated_date(String created_date) {
        super.setCreated_date(created_date);
    }

    @Override
    public String getUpdated_date() {
        return super.getUpdated_date();
    }

    @Override
    public void setUpdated_date(String updated_date) {
        super.setUpdated_date(updated_date);
    }

}
