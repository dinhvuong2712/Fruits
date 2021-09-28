package Demo.Model;

public class Supplier_Stock extends StatusAndDateTime{
    private int Id_supp;
    private String Name;
    private String Address;
    private String Email;
    private int Phone_num;

    public int getId_supp() {
        return Id_supp;
    }

    public void setId_supp(int id_supp) {
        Id_supp = id_supp;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public int getPhone_num() {
        return Phone_num;
    }

    public void setPhone_num(int phone_num) {
        Phone_num = phone_num;
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
