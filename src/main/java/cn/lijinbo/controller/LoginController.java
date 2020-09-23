package cn.lijinbo.controller;

import cn.lijinbo.pojo.Users;
import cn.lijinbo.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class LoginController {

    @Autowired
    private LoginService loginService;

    public void setLoginService(LoginService loginService) {
        this.loginService = loginService;
    }

    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String  login(){
        return "login";
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String loginin(String account, String password, String remember, HttpServletRequest request, HttpServletResponse response){
        Users user=loginService.login(account);
        System.out.println(user.getPassword());
        if(user!=null&&password.equals(user.getPassword())){
            if("on".equals(remember)){
                Cookie cookie=new Cookie("login_msg",account);
                cookie.setMaxAge(3600*24*7);
                cookie.setPath("/");
                response.addCookie(cookie);
            }
            request.getSession().setAttribute("user",account);
            return "blogHome";
        }
        return "login";
    }

//    @RequestMapping("/allblog")
//    public String toallblog(){
//        return "allblog";
//    }

    @RequestMapping("/home")
    public String toblogHome(){
        return "blogHome";
    }

    @RequestMapping("/blogroll")
    public String toblogroll(){
        return "blogroll";
    }

    @RequestMapping("/about")
    public String toabout(){
        return "about";
    }

    @RequestMapping("/comRecord")
    public String tocomRecord(){
        return "comRecord";
    }

    @RequestMapping("/markdown")
    public String tomarkdown(){
        return "markdown";
    }

    @RequestMapping("/message")
    public String tomessage(){
        return "message";
    }

}
