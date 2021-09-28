package Demo.ViewModel;

import Demo.Model.Goods;

import java.text.SimpleDateFormat;

public class GoodsViewModel extends Goods {
    private String viewCreated_Date;
    private String viewUpdated_Date;

    public String getViewCreated_Date() {
        return viewCreated_Date;
    }

    public void setViewCreated_Date(String viewCreated_Date) {
        this.viewCreated_Date = new SimpleDateFormat("dd/MM/yyyy").format(viewCreated_Date);;
    }

    public String getViewUpdated_Date() {
        return viewUpdated_Date;
    }

    public void setViewUpdated_Date(String viewUpdated_Date) {
        this.viewUpdated_Date = new SimpleDateFormat("dd/MM/yyyy").format(viewUpdated_Date);;
    }
}
