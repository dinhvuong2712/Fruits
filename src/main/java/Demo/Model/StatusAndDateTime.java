package Demo.Model;

public class StatusAndDateTime {
    private boolean Status;
    private String Created_date;
    private String Updated_date;

    public boolean isStatus() {
        return Status;
    }

    public void setStatus(boolean status) {
        Status = status;
    }

    public String getCreated_date() {
        return Created_date;
    }

    public void setCreated_date(String created_date) {
        Created_date = created_date;
    }

    public String getUpdated_date() {
        return Updated_date;
    }

    public void setUpdated_date(String updated_date) {
        Updated_date = updated_date;
    }
}
