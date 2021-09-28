package Demo.Service.InterfaceComponent;

import Demo.Model.Bill_Detail;
import Demo.ViewModel.EmployeeViewModel;

import java.util.List;

public interface IBill_Detail extends ICommonService<Bill_Detail, EmployeeViewModel>{
    @Override
    List<EmployeeViewModel> getAll();

    @Override
    EmployeeViewModel getByID(String id);

    @Override
    List<EmployeeViewModel> getByKeyWord(String keyWord);

    @Override
    boolean add(Bill_Detail info);

    @Override
    boolean update(Bill_Detail info);

    @Override
    boolean delete(String id);
}
