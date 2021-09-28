package Demo.Service.InterfaceComponent;

import Demo.Model.Category;
import Demo.ViewModel.EmployeeViewModel;

import java.util.List;

public interface ICategory extends ICommonService<Category, EmployeeViewModel>{
    @Override
    List<EmployeeViewModel> getAll();

    @Override
    EmployeeViewModel getByID(String id);

    @Override
    List<EmployeeViewModel> getByKeyWord(String keyWord);

    @Override
    boolean add(Category info);

    @Override
    boolean update(Category info);

    @Override
    boolean delete(String id);
}
