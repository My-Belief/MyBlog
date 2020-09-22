package cn.lijinbo.mapper;
import cn.lijinbo.pojo.Users;
import org.apache.ibatis.annotations.Param;

public interface UsersMapper {
    Users selectUserByAccount(@Param("account") String account);
}