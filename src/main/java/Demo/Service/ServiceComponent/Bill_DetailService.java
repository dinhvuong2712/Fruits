package Demo.Service.ServiceComponent;

import Demo.Model.Bill_Detail;
import Demo.Service.InterfaceComponent.IBill_Detail;
import Demo.ViewModel.EmployeeViewModel;
import org.springframework.stereotype.Service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@Service
public class Bill_DetailService extends BaseService implements IBill_Detail {
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
        return null;
    }

    @Override
    public List<EmployeeViewModel> getByKeyWord(String keyWord) {
        return null;
    }

    @Override
    public boolean add(Bill_Detail info) {
        return false;
    }

    @Override
    public boolean update(Bill_Detail info) {
        return false;
    }

    @Override
    public boolean delete(String id) {
        return false;
    }
}
