package org.jeecg.modules.xs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.xs.entity.QbEcfzglyc;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * @Description: 二次犯罪概率预测
 * @Author: jeecg-boot
 * @Date: 2020-05-23
 * @Version: V1.0
 */
public interface QbEcfzglycMapper extends BaseMapper<QbEcfzglyc> {
  public List<QbEcfzglyc> queryByZjhm(@Param("zjhm") String zjhm);
}
