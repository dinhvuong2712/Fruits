package Demo.Service.InterfaceComponent;

import Demo.Model.Enter_Coupon;
import Demo.ViewModel.EmployeeViewModel;

import java.util.List;

public interface IEnter_Coupon extends ICommonService<Enter_Coupon, EmployeeViewModel>{
    @Override
    List<EmployeeViewModel> getAll();

    @Override
    EmployeeViewModel getByID(String id);

    @Override
    List<EmployeeViewModel> getByKeyWord(String keyWord);

    @Override
    boolean add(Enter_Coupon info);

    @Override
    boolean update(Enter_Coupon info);

    @Override
    boolean delete(String id);
}
