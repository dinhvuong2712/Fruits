package Demo.Model;

public class Producer_Stock extends StatusAndDateTime{
    private int Id_producer;
    private String Name;
    private String Address;
    private String Email;
    private int Phone_num;

    public int getId_producer() {
        return Id_producer;
    }

    public void setId_producer(int id_producer) {
        Id_producer = id_producer;
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
