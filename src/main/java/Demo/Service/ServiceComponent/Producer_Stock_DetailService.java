package Demo.Service.ServiceComponent;

import Demo.Model.Producer_Stock_Detail;
import Demo.Service.InterfaceComponent.IProducer_Stock_Detail;
import Demo.ViewModel.EmployeeViewModel;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Producer_Stock_DetailService extends BaseService implements IProducer_Stock_Detail {
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
    public boolean add(Producer_Stock_Detail info) {
        return false;
    }

    @Override
    public boolean update(Producer_Stock_Detail info) {
        return false;
    }

    @Override
    public boolean delete(String id) {
        return false;
    }
}
