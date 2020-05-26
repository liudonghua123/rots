package org.jeecg.modules.xs.service;

import org.jeecg.modules.xs.entity.QbShejunglyc;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.IService;

/**
 * @Description: 涉军概率预测
 * @Author: jeecg-boot
 * @Date: 2020-05-23
 * @Version: V1.0
 */
public interface IQbShejunglycService extends IService<QbShejunglyc> {
  public List<QbShejunglyc> queryByCity(String city);
}
