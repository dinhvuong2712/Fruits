package Demo.Model;

public class Goods extends StatusAndDateTime{
    private int Id_goods;
    private String Name;
    private String Images;
    private int Id_cate;
    private int Id_quant;
    private String Description;

    public int getId_goods() {
        return Id_goods;
    }

    public void setId_goods(int id_goods) {
        Id_goods = id_goods;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getImages() {
        return Images;
    }

    public void setImages(String images) {
        Images = images;
    }

    public int getId_cate() {
        return Id_cate;
    }

    public void setId_cate(int id_cate) {
        Id_cate = id_cate;
    }

    public int getId_quant() {
        return Id_quant;
    }

    public void setId_quant(int id_quant) {
        Id_quant = id_quant;
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
