package Demo.Controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/account")
public class AccountController {
    String dir = "account/";
    @RequestMapping("login")
    public ModelAndView login(@RequestParam(value="error", required = false, defaultValue="") String error){
        return new ModelAndView(dir + "login").addObject("error", error);
    }

    @RequestMapping("logout")
    public ModelAndView logout(HttpServletRequest request, HttpServletResponse response){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if(authentication != null){
            new SecurityContextLogoutHandler().logout(request,response,authentication);
        }

        return new ModelAndView("redirect:/account/login");
    }

    @RequestMapping("accessdeny")
    public ModelAndView accessdeny(){
        return new ModelAndView(dir + "accessdeny");
    }
}
