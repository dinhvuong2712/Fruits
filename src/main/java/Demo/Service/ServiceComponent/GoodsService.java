package Demo.Service.ServiceComponent;

import Demo.Model.Goods;
import Demo.Service.InterfaceComponent.IGoods;
import Demo.ViewModel.GoodsViewModel;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsService extends BaseService implements IGoods {
    @Override
    public List<GoodsViewModel> getAll() {
        return null;
    }

    @Override
    public GoodsViewModel getByID(String id) {
        return null;
    }

    @Override
    public List<GoodsViewModel> getByKeyWord(String keyWord) {
        return null;
    }

    @Override
    public boolean add(Goods info) {
        return false;
    }

    @Override
    public boolean update(Goods info) {
        return false;
    }

    @Override
    public boolean delete(String id) {
        return false;
    }
}
