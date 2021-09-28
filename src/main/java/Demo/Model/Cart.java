package Demo.Model;

public class Cart extends StatusAndDateTime{
    private int Id_customer;
    private int Id_goods;
    private int Quantum;

    public int getId_customer() {
        return Id_customer;
    }

    public void setId_customer(int id_customer) {
        Id_customer = id_customer;
    }

    public int getId_goods() {
        return Id_goods;
    }

    public void setId_goods(int id_goods) {
        Id_goods = id_goods;
    }

    public int getQuantum() {
        return Quantum;
    }

    public void setQuantum(int quantum) {
        Quantum = quantum;
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
