package Demo.Model;




@org.springframework.stereotype.Repository
public class Bill extends StatusAndDateTime{

    private int Id_bill;
    private int Id_customer;
    private int Id_emp;
    private int Total_acount;

    public int getId_bill() {
        return Id_bill;
    }

    public void setId_bill(int id_bill) {
        Id_bill = id_bill;
    }

    public int getId_customer() {
        return Id_customer;
    }

    public void setId_customer(int id_customer) {
        Id_customer = id_customer;
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
