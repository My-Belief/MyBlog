package cn.lijinbo.service;

import cn.lijinbo.pojo.BlogImf;

import java.util.List;

public interface BlogManageService {
    List<BlogImf> ShowAllBlog();

    void publishBlog(BlogImf blogImf);

    void deleteByBno(Integer bno);

    BlogImf showArticle(Integer bno);
}
