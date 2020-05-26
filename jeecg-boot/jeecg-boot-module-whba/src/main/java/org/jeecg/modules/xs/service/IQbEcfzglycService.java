package org.jeecg.modules.xs.service;

import org.jeecg.modules.xs.entity.QbEcfzglyc;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.IService;

/**
 * @Description: 二次犯罪概率预测
 * @Author: jeecg-boot
 * @Date: 2020-05-23
 * @Version: V1.0
 */
public interface IQbEcfzglycService extends IService<QbEcfzglyc> {
  public List<QbEcfzglyc> queryByZjhm(String zjhm);
}
