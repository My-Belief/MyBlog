package cn.lijinbo.controller;

import cn.lijinbo.pojo.BlogImf;
import cn.lijinbo.service.BlogManageService;
import com.alibaba.fastjson.JSONObject;
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

    @RequestMapping("/delete")
    public String deleteBlog(Integer bno,Model model){
        sabs.deleteByBno(bno);
        List<BlogImf> bf= sabs.ShowAllBlog();
        model.addAttribute("blog",bf);
        return "allblog";
    }

    @RequestMapping("/allblog")
    public String ShowAllBlog(Model model){

        List<BlogImf> bf=sabs.ShowAllBlog();
//        System.out.println(bf.get(0).getBuildTime());
        model.addAttribute("blog",bf);
        return "allblog";
    }

    @RequestMapping("/commit")
    @ResponseBody
    public String commit(String btitle,String status,String bcontext,String digest){
        System.out.println(btitle+" "+status+" "+bcontext);
        BlogImf bi=new BlogImf(btitle,new Date(),1,bcontext, status,digest);
            sabs.publishBlog(bi);
         return "allblog";
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
