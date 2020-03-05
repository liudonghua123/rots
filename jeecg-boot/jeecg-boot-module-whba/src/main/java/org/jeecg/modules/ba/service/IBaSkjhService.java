package org.jeecg.modules.ba.service;

import org.jeecg.modules.ba.entity.BaSkjh;
import com.baomidou.mybatisplus.extension.service.IService;
import java.util.List;

/**
 * @Description: 收付款计划
 * @Author: jeecg-boot
 * @Date:   2020-03-04
 * @Version: V1.0
 */
public interface IBaSkjhService extends IService<BaSkjh> {

	public List<BaSkjh> selectByMainId(String mainId);
}
