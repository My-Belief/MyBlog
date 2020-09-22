package cn.lijinbo.mapper;

import cn.lijinbo.pojo.About;

public interface AboutMapper {
    int deleteByPrimaryKey(Integer aid);

    int insert(About record);

    int insertSelective(About record);

    About selectByPrimaryKey(Integer aid);

    int updateByPrimaryKeySelective(About record);

    int updateByPrimaryKeyWithBLOBs(About record);
}