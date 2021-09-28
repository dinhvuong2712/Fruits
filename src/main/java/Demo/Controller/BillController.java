package Demo.Controller;

import Demo.Model.Bill;
import Demo.Service.InterfaceComponent.IBill;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Calendar;

@Controller
@RequestMapping("/admin/bill")
public class BillController {
    String dir = "bill/";

    @Autowired
    IBill iBill;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView index(@RequestParam(value = "pageNumber",required = false, defaultValue = "1") int pageNumber,
                              @RequestParam(value = "pageSize",required = false, defaultValue = "10") int pageSize,
                              @RequestParam(value = "keyword",required = false, defaultValue = "") String keword) {
        int countPage = iBill.getCountPage(pageSize,keword);
        if(pageNumber <= 0 || pageNumber > countPage){
            pageNumber = 1;
        }
        pageSize = pageSize <= 0 ? 10 : pageSize;
        return new ModelAndView(dir + "index")
                .addObject("items", iBill.selectByPage(pageNumber,pageSize,keword))
                .addObject("pageNumber", pageNumber)
                .addObject("pageSize", pageSize)
                .addObject("pageCount", countPage);
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public ModelAndView add() {

        return new ModelAndView(dir + "create");
    }

    @RequestMapping(value = "/addConfirmed", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView addConfirmed(HttpServletRequest request) {
        if (!iBill. add(initBill(request))) {
            return new ModelAndView("redirect:/admin/" + dir + "add");
        }
        return new ModelAndView("redirect:/admin/" + dir + "    index");
    }

    private Bill initBill(HttpServletRequest request) {
        Bill bill = new Bill();

        bill.setId_emp(Integer.parseInt(request.getParameter("Id_emp")));
        bill.setId_bill(Integer.parseInt(request.getParameter("Id_bill")));
        bill.setId_customer(Integer.parseInt(request.getParameter("Id_customer")));
        bill.setTotal_acount(Integer.parseInt(request.getParameter("Total_acount")));
        bill.setStatus(true);
        bill.setCreated_date(new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()));
        bill.setUpdated_date(bill.getCreated_date());

        return bill;
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public ModelAndView edit(@RequestParam(name = "id") String id,@RequestParam(name = "message",defaultValue = "",required = false) String message) {
        ModelAndView modelAndView = new ModelAndView(dir + "edit");

        return modelAndView.addObject("item",iBill.getByID(id))
                .addObject("message",message);
    }

    @RequestMapping(value = "/editConfirmed", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView editConfirmed(HttpServletRequest request) {
        System.out.println("ok");
        ModelAndView modelAndView = new ModelAndView("redirect:/admin/"+ dir +"edit?id="+request.getParameter("Id_emp"));
        if (!iBill.update(initBill(request))) {
            return modelAndView.addObject("message","false");
        }
        return modelAndView.addObject("message","true");
    }

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public ModelAndView delete(@RequestParam String id) {
        ModelAndView modelAndView = new ModelAndView("redirect:/admin/" + dir + "index");
        if (!iBill.delete(id)) {
            return modelAndView.addObject("message","error");
        }
        return modelAndView.addObject("message","success");
    }
}
