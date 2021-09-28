package Demo.Model;

public class Role extends StatusAndDateTime{
    private int Id_role;
    private String Description;

    public int getId_role() {
        return Id_role;
    }

    public void setId_role(int id_role) {
        Id_role = id_role;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
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
