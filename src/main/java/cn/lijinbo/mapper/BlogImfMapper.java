package cn.lijinbo.mapper;

import cn.lijinbo.pojo.BlogImf;

public interface BlogImfMapper {
    int deleteByPrimaryKey(Integer bno);

    int insert(BlogImf record);

    int insertSelective(BlogImf record);

    BlogImf selectByPrimaryKey(Integer bno);

    int updateByPrimaryKeySelective(BlogImf record);

    int updateByPrimaryKeyWithBLOBs(BlogImf record);

    int updateByPrimaryKey(BlogImf record);
}