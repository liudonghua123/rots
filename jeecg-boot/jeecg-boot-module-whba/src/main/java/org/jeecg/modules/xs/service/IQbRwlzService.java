package org.jeecg.modules.xs.service;

import org.jeecg.modules.xs.entity.QbRwlz;
import java.util.List;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * @Description: 任务流转
 * @Author: jeecg-boot
 * @Date: 2020-03-10
 * @Version: V1.0
 */
public interface IQbRwlzService extends IService<QbRwlz> {

  List<QbRwlz> queryByMbbmRwzt(String id, String string);

  List<QbRwlz> queryByIds(java.util.List<String> asList);

}
