package Demo.Model;

public class Bill_Detail extends StatusAndDateTime{
    private String Name;
    private int Id_bill;
    private int Id_goods;
    private int Quantum;

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public int getId_bill() {
        return Id_bill;
    }

    public void setId_bill(int id_bill) {
        Id_bill = id_bill;
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

    @Override
    public String getCreated_date() {
        return super.getCreated_date();
    }

    @Override
    public void setCreated_date(String created_date) {
        super.setCreated_date(created_date);
    }

    @Override
    public String getUpdated_date() {
        return super.getUpdated_date();
    }

    @Override
    public void setUpdated_date(String updated_date) {
        super.setUpdated_date(updated_date);
    }
}
