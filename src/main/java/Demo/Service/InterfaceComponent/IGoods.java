package Demo.Service.InterfaceComponent;

import Demo.Model.Goods;
import Demo.ViewModel.GoodsViewModel;

import java.util.List;

public interface IGoods extends ICommonService<Goods, GoodsViewModel>{
    @Override
    List<GoodsViewModel> getAll();

    @Override
    GoodsViewModel getByID(String id);

    @Override
    List<GoodsViewModel> getByKeyWord(String keyWord);

    @Override
    boolean add(Goods info);

    @Override
    boolean update(Goods info);

    @Override
    boolean delete(String id);
}
