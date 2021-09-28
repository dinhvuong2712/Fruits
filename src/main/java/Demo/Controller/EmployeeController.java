package Demo.Controller;

import Demo.Model.Employee;
import Demo.Resource.ResourceNotFoundException;
import Demo.Service.ServiceComponent.EmployeeService;
import Demo.Service.InterfaceComponent.IEmployee;
import Demo.ViewModel.EmployeeViewModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;


@Controller
@RequestMapping("/admin/employee")
public class EmployeeController {
    String dir = "employee/";

    @Autowired
    IEmployee iEmployee;

    @ExceptionHandler(ResourceNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public String handleResourceNotFoundException() {
        return "meters/notfound";
    }

    public EmployeeController() {
        iEmployee = new EmployeeService();
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView index(@RequestParam(value = "pageNumber",required = false, defaultValue = "1") int pageNumber,
                              @RequestParam(value = "pageSize",required = false, defaultValue = "10") int pageSize,
                              @RequestParam(value = "keyword",required = false, defaultValue = "") String keword) {
        int countPage = iEmployee.getCountPage(pageSize,keword);
        if(pageNumber <= 0 || pageNumber > countPage){
            pageNumber = 1;
        }
        pageSize = pageSize <= 0 ? 10 : pageSize;
        return new ModelAndView(dir + "index")
                .addObject("items", iEmployee.selectByPage(pageNumber,pageSize,keword))
                .addObject("pageNumber", pageNumber)
                .addObject("pageSize", pageSize)
                .addObject("pageCount", countPage);
    }

    @RequestMapping(value = "/getAll", method = RequestMethod.GET)
    @ResponseBody
    public List<EmployeeViewModel> getAll() {
        return iEmployee.getAll();
    }

    @RequestMapping(value = "/infor", method = RequestMethod.GET)
    public ModelAndView infor(@RequestParam String id) {
        getById(id);

        return new ModelAndView(dir + "detailEmp");
    }

    @RequestMapping(value = "/getInfor", method = RequestMethod.GET)
    @ResponseBody
    public EmployeeViewModel getById(String id) {
        return iEmployee.getByID(id);
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public ModelAndView add() {

        return new ModelAndView(dir + "create");
    }

    @RequestMapping(value = "/addConfirmed", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView addConfirmed(HttpServletRequest request) {
        if (!iEmployee.add(initEmployee(request))) {
            return new ModelAndView("redirect:/admin/" + dir + "add");
        }
        return new ModelAndView("redirect:/admin/" + dir + "index");
    }

    private Employee initEmployee(HttpServletRequest request) {
        Employee emp = new Employee();

        emp.setId_emp(Integer.valueOf(request.getParameter("Id_emp")));
        emp.setFirstName(request.getParameter("FirstName"));
        emp.setLastName(request.getParameter("LastName"));
        emp.setGender(Boolean.parseBoolean(request.getParameter("Gender")));
        try {
            emp.setBirth(new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("Birth")));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        emp.setAddress(request.getParameter("Address"));
        emp.setPhoneNumber(request.getParameter("PhoneNumber"));
        emp.setStatus(true);
        emp.setCreated_date(new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()));
        emp.setUpdated_date(emp.getCreated_date());

        return emp;
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public ModelAndView edit(@RequestParam(name = "id") String id,@RequestParam(name = "message",defaultValue = "",required = false) String message) {
        ModelAndView modelAndView = new ModelAndView(dir + "edit");

        return modelAndView.addObject("item",iEmployee.getByID(id))
                .addObject("message",message);
    }

    @RequestMapping(value = "/editConfirmed", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView editConfirmed(HttpServletRequest request) {
        System.out.println("ok");
        ModelAndView modelAndView = new ModelAndView("redirect:/admin/"+ dir +"edit?id="+request.getParameter("Id_emp"));
        if (!iEmployee.update(initEmployee(request))) {
            return modelAndView.addObject("message","false");
        }
        return modelAndView.addObject("message","true");
    }

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public ModelAndView delete(@RequestParam String id) {
        ModelAndView modelAndView = new ModelAndView("redirect:/admin/" + dir + "index");
        if (!iEmployee.delete(id)) {
            return modelAndView.addObject("message","error");
        }
        return modelAndView.addObject("message","success");
    }
}
