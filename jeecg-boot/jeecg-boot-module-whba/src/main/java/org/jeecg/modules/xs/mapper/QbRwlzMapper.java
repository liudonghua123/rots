package org.jeecg.modules.xs.mapper;

import java.util.List;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.jeecg.modules.xs.entity.QbRwlz;

/**
 * @Description: 任务流转
 * @Author: jeecg-boot
 * @Date: 2020-03-10
 * @Version: V1.0
 */
public interface QbRwlzMapper extends BaseMapper<QbRwlz> {

  /**
   * 查询被逻辑删除的数据
   * 
   * @return
   */
  @Select("select * from qb_rwlz where where mbbmbh = #{id} and rwzt=#{rwzt}")
  public List<QbRwlz> queryByMbbmRwzt(@Param("id") String id, @Param("rwzt") String rwzt);

  public List<QbRwlz> queryByIds(@Param("ids") List<String> ids);
}
