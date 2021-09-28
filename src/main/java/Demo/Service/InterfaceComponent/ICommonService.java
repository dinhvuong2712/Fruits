package Demo.Service.InterfaceComponent;

import java.util.List;
import org.springframework.stereotype.Repository;

@Repository
public interface ICommonService<T,E> {
    public List<E> getAll();

    public E getByID(String id);

    public List<E> getByKeyWord(String keyWord);

    public boolean add(T info);

    public boolean update(T info);

    public boolean delete(String id);
}
