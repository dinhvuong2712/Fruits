package Demo.Service.ServiceComponent;

import Demo.Model.Enter_Coupon_Detail;
import Demo.Service.InterfaceComponent.IEnter_Coupon_Detail;
import Demo.ViewModel.EmployeeViewModel;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Enter_Coupon_DetailService extends BaseService implements IEnter_Coupon_Detail {
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
    public boolean add(Enter_Coupon_Detail info) {
        return false;
    }

    @Override
    public boolean update(Enter_Coupon_Detail info) {
        return false;
    }

    @Override
    public boolean delete(String id) {
        return false;
    }
}
