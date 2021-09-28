package Demo.Service.ServiceComponent;

import Demo.ViewModel.EmployeeViewModel;

import java.sql.ResultSet;

public class InitInfor {
    EmployeeViewModel initEmployee(ResultSet resultSet){
        EmployeeViewModel emp = new EmployeeViewModel();

        try {
            emp.setId_emp(resultSet.getInt("Id_emp"));
            emp.setFirstName(resultSet.getString("FirstName"));
            emp.setLastName(resultSet.getString("LastName"));
            emp.setAddress(resultSet.getString("Address"));
            emp.setPhoneNumber(resultSet.getString("PhoneNumber"));
            emp.setStatus(resultSet.getBoolean("Status"));
            emp.setCreated_date(resultSet.getString("Created_date"));
            emp.setUpdated_date(resultSet.getString("Updated_date"));

            emp.setGender(resultSet.getBoolean("Gender"));
            emp.setBirth(resultSet.getDate("Birth"));

            emp.setViewBirth(resultSet.getDate("Birth"));
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return emp;
    }


}
