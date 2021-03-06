package cn.lijinbo.controller;

import cn.lijinbo.pojo.BlogImf;
import cn.lijinbo.pojo.PageInfo;
import cn.lijinbo.service.BlogManageService;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sound.sampled.Line;
import java.io.File;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class BlogManageController {
    @Autowired
    BlogManageService sabs;

    public void setSabs(BlogManageService sabs) {
        this.sabs = sabs;
    }

//    根据编号删除博客
    @RequestMapping("/delete")
    public String deleteBlog(Integer bno,Model model){
        sabs.deleteByBno(bno);
        List<BlogImf> bf= sabs.ShowAllBlog();
        model.addAttribute("blog",bf);
        return "allblog";
    }

//    查询所有博客
    @RequestMapping("/allblog")
    public String ShowAllBlog(Model model){
        PageHelper.startPage(1,8);
        List<BlogImf> bf=sabs.ShowAllBlog();
        System.out.println("前-----------"+bf.get(1).getBtitle());
//        PageInfo<BlogImf> page=new PageInfo<BlogImf>(bf);
//        System.out.println("后-----------"+page.getList().get(1).getBtitle());
        model.addAttribute("blog",bf);
        return "allblog";
    }

    //    查询所有博客
    @RequestMapping("/allblog/{pageNum}")
    @ResponseBody
    public String ShowAllBlog1(int pageNum, Model model){
//        设置每一行的页数
        PageHelper.startPage(pageNum,8);
        List<BlogImf> bf=sabs.ShowAllBlog();
        PageInfo<Line> page=new PageInfo<Line>(bf);
        model.addAttribute("blog",page);
        return "/allblog";
    }

//    写博客
    @RequestMapping("/commit")
    public String commit(String btitle,String status,String bcontext,String digest){
        System.out.println(btitle+" "+status+" "+bcontext);
        BlogImf bi=new BlogImf(btitle,new Date(),1,bcontext, status,digest);
        sabs.publishBlog(bi);
        return "redirect:/allblog";
    }

    @RequestMapping("/showArticle")
    public String showArticle(Integer bno,Model model){
        System.out.println(bno);
        BlogImf blogImf=sabs.showArticle(bno);
        model.addAttribute("blog",blogImf);
        return "showDetailBlog";
    }
    @RequestMapping(value = "/uploadImg", method = RequestMethod.POST)
    @ResponseBody
    public String uploadFile(HttpServletRequest request, HttpServletResponse response,
                             @RequestParam(value = "editormd-image-file", required = false) MultipartFile attach){
        JSONObject jsonObject=new JSONObject();

        try {
            request.setCharacterEncoding("utf-8");
            response.setHeader("Content-Type", "text/html");
            String rootPath = request.getSession().getServletContext().getRealPath("/resource/img");

            System.out.println("editormd上传图片："+rootPath);

            /**
             * 文件路径不存在则需要创建文件路径
             */
            File filePath = new File(rootPath);
            if (!filePath.exists()) {
                filePath.mkdirs();
            }

            // 最终文件名
            File realFile = new File(rootPath + File.separator + attach.getOriginalFilename());
            Files.copy(attach.getInputStream(),realFile.toPath());
            //FileUtils.copyInputStreamToFile(attach.getInputStream(), realFile);

            // 下面response返回的json格式是editor.md所限制的，规范输出就OK
            jsonObject.put("success", 1);
            jsonObject.put("message", "上传成功");
            jsonObject.put("url", "/resource/img/"+attach.getOriginalFilename());
            System.out.println("attach.getOriginalFilename()");
        } catch (Exception e) {
            jsonObject.put("success", 0);
        }
        return jsonObject.toString();
    }


}
