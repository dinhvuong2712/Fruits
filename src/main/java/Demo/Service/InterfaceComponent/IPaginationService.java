package Demo.Service.InterfaceComponent;

import java.util.List;

public interface IPaginationService <T>{
    List<T> selectByPage(int pageNumber, int pageSize, String keyword);

    int getCountPage( int pageSize,String keyword);
}
