package Demo.Service.ServiceComponent;

import Demo.Model.Supplier_Stock;
import Demo.Service.InterfaceComponent.ISupplier_Stock;
import Demo.ViewModel.EmployeeViewModel;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Supplier_StockService extends BaseService implements ISupplier_Stock {
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
    public boolean add(Supplier_Stock info) {
        return false;
    }

    @Override
    public boolean update(Supplier_Stock info) {
        return false;
    }

    @Override
    public boolean delete(String id) {
        return false;
    }
}
