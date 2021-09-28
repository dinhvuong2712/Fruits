package Demo.Service.InterfaceComponent;

import Demo.Model.Cart;
import Demo.ViewModel.EmployeeViewModel;

import java.util.List;

public interface ICart extends ICommonService<Cart, EmployeeViewModel>{
    @Override
    List<EmployeeViewModel> getAll();

    @Override
    EmployeeViewModel getByID(String id);

    @Override
    List<EmployeeViewModel> getByKeyWord(String keyWord);

    @Override
    boolean add(Cart info);

    @Override
    boolean update(Cart info);

    @Override
    boolean delete(String id);
}
