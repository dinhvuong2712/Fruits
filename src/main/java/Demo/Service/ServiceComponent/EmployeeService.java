package Demo.Service.ServiceComponent;

import Demo.Model.Employee;
import Demo.Service.InterfaceComponent.IEmployee;
import Demo.ViewModel.EmployeeViewModel;
import org.springframework.stereotype.Service;

import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Service
public class EmployeeService extends BaseService implements IEmployee {

    @Override
    public List<EmployeeViewModel> getAll() {
        List<EmployeeViewModel> employees = new ArrayList<>();

        query = "exec SP_Employee_Select_All";

        try {
            ResultSet resultSet = db.getTable(query, parameters);

            InitInfor infor = new InitInfor();

            while (resultSet.next()) {
                employees.add(infor.initEmployee(resultSet));
            }
        }catch (Exception ex){
            System.out.println("Do not conncet");

            ex.printStackTrace();
        }

        db.closeConnection();

        return employees;
    }

    @Override
    public EmployeeViewModel getByID(String id) {
        EmployeeViewModel employee = new EmployeeViewModel();
        InitInfor infor = new InitInfor();

        query = "exec SP_Employee_Select_SingeById ?";
        parameters.add(id);

        try {
            ResultSet resultSet = db.getTable(query, parameters);

            while (resultSet.next()) {
                employee = infor.initEmployee(resultSet);
            }
        }catch (Exception ex){
            System.out.println("Do not conncet");

            ex.printStackTrace();
        }

        db.closeConnection();

        return employee;
    }

    @Override
    public List<EmployeeViewModel> getByKeyWord(String keyWord) {
        List<EmployeeViewModel> employees = new ArrayList<>();

        query = "exec SP_Employee_Select_ByKeyWord ?";
        parameters.add(keyWord);

        try {
            ResultSet resultSet = db.getTable(query, parameters);

            InitInfor infor = new InitInfor();

            while (resultSet.next()) {
                employees.add(infor.initEmployee(resultSet));
            }
        }catch (Exception ex){
            System.out.println("Do not conncet");

            ex.printStackTrace();
        }

        db.closeConnection();

        return employees;
    }

    @Override
    public boolean add(Employee info) {
        parameters = new ArrayList<>();

        query = "exec SP_Employee_Insert ?, ?, ?, ?, ?, ?, ?, ?, ?";

        parameters.add(info.getFirstName());
        parameters.add(info.getLastName());
        parameters.add(info.getGender() ? "true" : "false");
        parameters.add(info.getAddress());
        parameters.add(info.getPhoneNumber());
        parameters.add(new SimpleDateFormat("yyyy-MM-dd").format(info.getBirth()));
        parameters.add(info.isStatus() ? "true" : "false");
        parameters.add(new SimpleDateFormat("yyyy-MM-dd").format(info.getCreated_date()));
        parameters.add(new SimpleDateFormat("yyyy-MM-dd").format(info.getUpdated_date()));

        boolean result = db.executeNoneQuery(query,parameters);
        db.closeConnection();

        return result;
    }

    @Override
    public boolean update(Employee info) {
        parameters = new ArrayList<>();

        query = "exec SP_Employee_Update ?, ?, ?, ?, ?, ?, ?, ?, ?";

        parameters.add(Integer.toString(info.getId_emp()));
        parameters.add(info.getFirstName());
        parameters.add(info.getLastName());
        parameters.add(info.getGender() ? "true" : "false");
        parameters.add(info.getAddress());
        parameters.add(info.getPhoneNumber());
        parameters.add(new SimpleDateFormat("yyyy-MM-dd").format(info.getBirth()));
        parameters.add(info.isStatus() ? "true" : "false");
        parameters.add(new SimpleDateFormat("yyyy-MM-dd").format(info.getUpdated_date()));

        boolean result = db.executeNoneQuery(query,parameters);
        db.closeConnection();

        return result;
    }

    @Override
    public boolean delete(String id) {
        parameters = new ArrayList<>();

        query = "exec SP_Employee_Delete ?";
        parameters.add(id);

        boolean result = db.executeNoneQuery(query,parameters);
        db.closeConnection();

        return result;
    }

    @Override
    public List<EmployeeViewModel> selectByPage(int pageNumber, int pageSize, String keyword) {
        List<EmployeeViewModel> employees = new ArrayList<>();

        parameters.add(Integer.toString(pageNumber));
        parameters.add(Integer.toString(pageSize));
        parameters.add(keyword);
        query = "exec SP_Employee_Select_ByPage ?, ?, ?";

        try {
            ResultSet resultSet = db.getTable(query, parameters);

            InitInfor infor = new InitInfor();

            while (resultSet.next()) {
                employees.add(infor.initEmployee(resultSet));
            }
        }catch (Exception ex){
            System.out.println("Do not conncet");

            ex.printStackTrace();
        }

        db.closeConnection();

        return employees;
    }

    @Override
    public int getCountPage(int pageSize, String keyword) {
        int countPage = 0;

        parameters = new ArrayList<>();
        parameters.add(Integer.toString(pageSize));
        parameters.add(keyword);
        query = "exec SP_Employee_GetCountPage ?, ?";

        try {
            ResultSet resultSet = db.getTable(query, parameters);

            while (resultSet.next()) {
                countPage = resultSet.getInt(1);
            }
        }catch (Exception ex){
            System.out.println("Do not conncet");

            ex.printStackTrace();
        }

        return countPage;
    }
}

