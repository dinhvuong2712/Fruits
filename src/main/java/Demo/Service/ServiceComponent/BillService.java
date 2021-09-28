package Demo.Service.ServiceComponent;

import Demo.Model.Bill;
import Demo.Service.InterfaceComponent.IBill;
import Demo.ViewModel.EmployeeViewModel;
import org.springframework.stereotype.Service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@Service
public class BillService extends BaseService implements IBill {
    @Override
    public List<EmployeeViewModel> getAll() {
        return null;
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
    public boolean add(Bill info) {
        return false;
    }

    @Override
    public boolean update(Bill info) {
        return false;
    }

    @Override
    public List<Bill> selectByPage(int pageNumber, int pageSize, String keyword) {
        List<Bill> bills = new ArrayList<>();

        parameters.add(Integer.toString(pageNumber));
        parameters.add(Integer.toString(pageSize));
        parameters.add(keyword);
        query = "exec SP_Bill_Select_ByPage ?, ?, ?";

        try {
            ResultSet resultSet = db.getTable(query, parameters);

            while (resultSet.next()) {
                bills.add(initBill(resultSet));
            }
        }catch (Exception ex){
            System.out.println("Do not conncet");

            ex.printStackTrace();
        }

        db.closeConnection();

        return bills;
    }

    @Override
    public int getCountPage(int pageSize, String keyword) {
        int countPage = 0;

        parameters = new ArrayList<>();
        parameters.add(Integer.toString(pageSize));
        parameters.add(keyword);
        query = "exec SP_Bill_GetCountPage ?, ?";

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

    @Override
    public boolean delete(String id) {
        return false;
    }

    private Bill initBill(ResultSet resultSet){
        Bill bill = new Bill();

        try {
            bill.setId_emp(resultSet.getInt("Id_emp"));
            bill.setId_bill(resultSet.getInt("Id_bill"));
            bill.setId_customer(resultSet.getInt("Id_customer"));
            bill.setTotal_acount(resultSet.getInt("Total_acount"));
            bill.setStatus(resultSet.getBoolean("Status"));
            bill.setCreated_date(resultSet.getString("Created_date"));
            bill.setUpdated_date(resultSet.getString("Updated_date"));
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return bill;
    }
}
