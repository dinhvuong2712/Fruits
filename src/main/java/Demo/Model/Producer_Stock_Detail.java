package Demo.Model;

public class Producer_Stock_Detail extends StatusAndDateTime{
    private int Id_producer;
    private int Id_goods;

    public int getId_producer() {
        return Id_producer;
    }

    public void setId_producer(int id_producer) {
        Id_producer = id_producer;
    }

    public int getId_goods() {
        return Id_goods;
    }

    public void setId_goods(int id_goods) {
        Id_goods = id_goods;
    }

    @Override
    public boolean isStatus() {
        return super.isStatus();
    }

    @Override
    public void setStatus(boolean status) {
        super.setStatus(status);
    }
}
