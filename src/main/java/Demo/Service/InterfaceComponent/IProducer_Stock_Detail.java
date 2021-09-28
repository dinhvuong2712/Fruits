package Demo.Service.InterfaceComponent;

import Demo.Model.Producer_Stock_Detail;
import Demo.ViewModel.EmployeeViewModel;

import java.util.List;

public interface IProducer_Stock_Detail extends ICommonService<Producer_Stock_Detail, EmployeeViewModel>{
    @Override
    List<EmployeeViewModel> getAll();

    @Override
    EmployeeViewModel getByID(String id);

    @Override
    List<EmployeeViewModel> getByKeyWord(String keyWord);

    @Override
    boolean add(Producer_Stock_Detail info);

    @Override
    boolean update(Producer_Stock_Detail info);

    @Override
    boolean delete(String id);
}
