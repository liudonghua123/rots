package org.jeecg.modules.demo.xs.mapper;

import java.util.List;
import org.jeecg.modules.demo.xs.entity.QbSwxszbfj;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

/**
 * @Description: 线索附件
 * @Author: jeecg-boot
 * @Date:   2020-02-11
 * @Version: V1.0
 */
public interface QbSwxszbfjMapper extends BaseMapper<QbSwxszbfj> {

	public boolean deleteByMainId(@Param("mainId") String mainId);
    
	public List<QbSwxszbfj> selectByMainId(@Param("mainId") String mainId);
}
