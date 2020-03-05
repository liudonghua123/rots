package org.jeecg.modules.ba.mapper;

import java.util.List;
import org.jeecg.modules.ba.entity.BaSkjh;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

/**
 * @Description: 收付款计划
 * @Author: jeecg-boot
 * @Date:   2020-03-04
 * @Version: V1.0
 */
public interface BaSkjhMapper extends BaseMapper<BaSkjh> {

	public boolean deleteByMainId(@Param("mainId") String mainId);
    
	public List<BaSkjh> selectByMainId(@Param("mainId") String mainId);
}
