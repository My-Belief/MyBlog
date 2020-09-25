package cn.lijinbo.mapper;

import cn.lijinbo.pojo.BlogImf;

import java.util.List;

public interface BlogImfMapper {

    List<BlogImf>  selectAllBlog();

    void insertBlogArticle(BlogImf record);

    void deleteByBno(Integer bno);

}