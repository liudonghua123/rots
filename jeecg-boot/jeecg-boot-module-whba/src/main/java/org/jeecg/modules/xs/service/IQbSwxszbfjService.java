package org.jeecg.modules.xs.service;

import org.jeecg.modules.xs.entity.QbSwxszbfj;
import com.baomidou.mybatisplus.extension.service.IService;
import java.util.List;

/**
 * @Description: 线索附件
 * @Author: jeecg-boot
 * @Date:   2020-02-11
 * @Version: V1.0
 */
public interface IQbSwxszbfjService extends IService<QbSwxszbfj> {

	public List<QbSwxszbfj> selectByMainId(String mainId);
}
