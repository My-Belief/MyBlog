package cn.lijinbo.controller;

import cn.lijinbo.pojo.BlogImf;
import cn.lijinbo.service.ShowAllBlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ShowAllBlogController {

    @Autowired
    ShowAllBlogService sabs;

    public void setSabs(ShowAllBlogService sabs) {
        this.sabs = sabs;
    }

    @RequestMapping("/allblog")
    @ResponseBody
    public String ShowAllBlog(Model model){
        BlogImf bf=sabs.ShowAllBlog();
        model.addAttribute("blog",bf);
        return "allblog";
    }
}
