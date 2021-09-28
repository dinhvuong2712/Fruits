package Demo.Service.ServiceComponent;

import Demo.Model.Cart;
import Demo.Service.InterfaceComponent.ICart;
import Demo.ViewModel.EmployeeViewModel;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartService extends BaseService implements ICart {
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
    public boolean add(Cart info) {
        return false;
    }

    @Override
    public boolean update(Cart info) {
        return false;
    }

    @Override
    public boolean delete(String id) {
        return false;
    }
}
