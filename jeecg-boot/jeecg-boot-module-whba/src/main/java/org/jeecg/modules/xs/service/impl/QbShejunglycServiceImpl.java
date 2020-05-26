package org.jeecg.modules.xs.service.impl;

import org.jeecg.modules.xs.entity.QbShejunglyc;
import org.jeecg.modules.xs.mapper.QbShejunglycMapper;
import org.jeecg.modules.xs.service.IQbShejunglycService;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

/**
 * @Description: 涉军概率预测
 * @Author: jeecg-boot
 * @Date: 2020-05-23
 * @Version: V1.0
 */
@Service
public class QbShejunglycServiceImpl extends ServiceImpl<QbShejunglycMapper, QbShejunglyc>
    implements IQbShejunglycService {
  @Autowired
  private QbShejunglycMapper qbShejunglycMapper;

  public List<QbShejunglyc> queryByCity(String city) {
    return qbShejunglycMapper.queryByCity(city);
  }
}
