package Demo.Service.InterfaceComponent;

import Demo.Model.Enter_Coupon_Detail;
import Demo.ViewModel.EmployeeViewModel;

import java.util.List;

public interface IEnter_Coupon_Detail extends ICommonService<Enter_Coupon_Detail, EmployeeViewModel>{
    @Override
    List<EmployeeViewModel> getAll();

    @Override
    EmployeeViewModel getByID(String id);

    @Override
    List<EmployeeViewModel> getByKeyWord(String keyWord);

    @Override
    boolean add(Enter_Coupon_Detail info);

    @Override
    boolean update(Enter_Coupon_Detail info);

    @Override
    boolean delete(String id);
}
