package org.jeecg.modules.xs.service;

import org.jeecg.modules.xs.entity.QbRysstj;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * @Description: 人员涉事统计
 * @Author: jeecg-boot
 * @Date: 2020-05-29
 * @Version: V1.0
 */
public interface IQbRysstjService extends IService<QbRysstj> {
  public QbRysstj queryOneByZjhm(String zjhm);
}
