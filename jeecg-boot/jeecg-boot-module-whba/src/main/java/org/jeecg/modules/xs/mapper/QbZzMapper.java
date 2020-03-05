package org.jeecg.modules.xs.mapper;

import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.xs.entity.QbZz;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * @Description: 组织
 * @Author: jeecg-boot
 * @Date:   2020-03-02
 * @Version: V1.0
 */
public interface QbZzMapper extends BaseMapper<QbZz> {

	/**
	 * 编辑节点状态
	 * @param id
	 * @param status
	 */
	void updateTreeNodeStatus(@Param("id") String id,@Param("status") String status);

}
