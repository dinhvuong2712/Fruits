package Demo.Model;

public class Enter_Coupon_Detail extends StatusAndDateTime{
    private String Name;
    private int Id_ent;
    private int Id_goods;
    private int Quantum;

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public int getId_ent() {
        return Id_ent;
    }

    public void setId_ent(int id_ent) {
        Id_ent = id_ent;
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
