package Demo.Model;

public class Enter_Coupon extends StatusAndDateTime{
    private int Id_ent;
    private int Id_supp;
    private int Id_emp;
    private int Total_acount;

    public int getId_ent() {
        return Id_ent;
    }

    public void setId_ent(int id_ent) {
        Id_ent = id_ent;
    }

    public int getId_supp() {
        return Id_supp;
    }

    public void setId_supp(int id_supp) {
        Id_supp = id_supp;
    }

    public int getId_emp() {
        return Id_emp;
    }

    public void setId_emp(int id_emp) {
        Id_emp = id_emp;
    }

    public int getTotal_acount() {
        return Total_acount;
    }

    public void setTotal_acount(int total_acount) {
        Total_acount = total_acount;
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
