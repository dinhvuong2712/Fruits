package Demo.Service.InterfaceComponent;

import Demo.Model.Producer_Stock;
import Demo.ViewModel.EmployeeViewModel;

import java.util.List;

public interface IProducer_Stock extends ICommonService<Producer_Stock, EmployeeViewModel>{
    @Override
    List<EmployeeViewModel> getAll();

    @Override
    EmployeeViewModel getByID(String id);

    @Override
    List<EmployeeViewModel> getByKeyWord(String keyWord);

    @Override
    boolean add(Producer_Stock info);

    @Override
    boolean update(Producer_Stock info);

    @Override
    boolean delete(String id);
}
