package Demo.Service.InterfaceComponent;

import Demo.Model.Bill;
import Demo.ViewModel.EmployeeViewModel;

import java.util.List;

public interface IBill extends ICommonService<Bill, EmployeeViewModel>,IPaginationService<Bill>{
    @Override
    List<EmployeeViewModel> getAll();

    @Override
    EmployeeViewModel getByID(String id);

    @Override
    List<EmployeeViewModel> getByKeyWord(String keyWord);

    @Override
    boolean add(Bill info);

    @Override
    boolean update(Bill info);

    @Override
    List<Bill> selectByPage(int pageNumber, int pageSize, String keyword);

    @Override
    int getCountPage(int pageSize, String keyword);

    @Override
    boolean delete(String id);
}
