package Demo.Service.ServiceComponent;

import Demo.Model.Category;
import Demo.Service.InterfaceComponent.ICategory;
import Demo.ViewModel.EmployeeViewModel;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService extends BaseService implements ICategory {
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
    public boolean add(Category info) {
        return false;
    }

    @Override
    public boolean update(Category info) {
        return false;
    }

    @Override
    public boolean delete(String id) {
        return false;
    }
}
