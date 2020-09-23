package cn.lijinbo.mapper;

import cn.lijinbo.pojo.BlogImf;

public interface BlogImfMapper {
    BlogImf selectAllBlog();

    void insertBlogArticle(BlogImf record);

//    int deleteByPrimaryKey(Integer bno);
//
//    int insert(BlogImf record);
//
//    int insertSelective(BlogImf record);
//
//    BlogImf selectByPrimaryKey(Integer bno);
//
//    int updateByPrimaryKey(BlogImf record);
}