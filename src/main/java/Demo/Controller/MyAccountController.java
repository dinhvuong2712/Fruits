package Demo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin/myAccount")
public class MyAccountController {
    String dir = "myAccount/";

    @RequestMapping(value = "/profile",method = RequestMethod.GET)
    public ModelAndView profile() {
        ModelAndView modelAndView = new ModelAndView(dir + "profile");

        return  modelAndView;
    }

    @RequestMapping(value = "/billing",method = RequestMethod.GET)
    public ModelAndView billing() {
        ModelAndView modelAndView = new ModelAndView(dir + "billing");

        return  modelAndView;
    }

    @RequestMapping(value = "/security",method = RequestMethod.GET)
    public ModelAndView security() {
        ModelAndView modelAndView = new ModelAndView(dir + "security");

        return  modelAndView;
    }

    @RequestMapping(value = "/notification",method = RequestMethod.GET)
    public ModelAndView notification() {
        ModelAndView modelAndView = new ModelAndView(dir + "notification");

        return  modelAndView;
    }
}
