package Demo.Model;

public class Account extends StatusAndDateTime{
    private int Id_acc;
    private String Username;
    private String Password;
    private String Email;
    private String Verify_Email;
    private String Id_role;

    public int getId_acc() {
        return Id_acc;
    }

    public void setId_acc(int id_acc) {
        Id_acc = id_acc;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String username) {
        Username = username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getVerify_Email() {
        return Verify_Email;
    }

    public void setVerify_Email(String verify_Email) {
        Verify_Email = verify_Email;
    }

    public String getId_role() {
        return Id_role;
    }

    public void setId_role(String id_role) {
        Id_role = id_role;
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
