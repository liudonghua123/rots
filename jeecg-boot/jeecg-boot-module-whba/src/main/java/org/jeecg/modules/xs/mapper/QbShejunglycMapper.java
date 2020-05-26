package org.jeecg.modules.xs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.xs.entity.QbShejunglyc;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * @Description: 涉军概率预测
 * @Author: jeecg-boot
 * @Date: 2020-05-23
 * @Version: V1.0
 */
public interface QbShejunglycMapper extends BaseMapper<QbShejunglyc> {
  public List<QbShejunglyc> queryByCity(@Param("city") String city);
}
