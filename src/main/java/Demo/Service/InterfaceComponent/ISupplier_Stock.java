package Demo.Service.InterfaceComponent;

import Demo.Model.Supplier_Stock;
import Demo.ViewModel.EmployeeViewModel;

import java.util.List;

public interface ISupplier_Stock extends ICommonService<Supplier_Stock, EmployeeViewModel>{
    @Override
    List<EmployeeViewModel> getAll();

    @Override
    EmployeeViewModel getByID(String id);

    @Override
    List<EmployeeViewModel> getByKeyWord(String keyWord);

    @Override
    boolean add(Supplier_Stock info);

    @Override
    boolean update(Supplier_Stock info);

    @Override
    boolean delete(String id);
}
