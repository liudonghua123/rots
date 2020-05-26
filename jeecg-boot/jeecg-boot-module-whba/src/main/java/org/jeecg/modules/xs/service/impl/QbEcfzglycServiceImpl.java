package org.jeecg.modules.xs.service.impl;

import org.jeecg.modules.xs.entity.QbEcfzglyc;
import org.jeecg.modules.xs.mapper.QbEcfzglycMapper;
import org.jeecg.modules.xs.service.IQbEcfzglycService;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

/**
 * @Description: 二次犯罪概率预测
 * @Author: jeecg-boot
 * @Date: 2020-05-23
 * @Version: V1.0
 */
@Service
public class QbEcfzglycServiceImpl extends ServiceImpl<QbEcfzglycMapper, QbEcfzglyc> implements IQbEcfzglycService {

  @Autowired
  private QbEcfzglycMapper qbEcfzglycMapper;

  public List<QbEcfzglyc> queryByZjhm(String zjhm) {
    return qbEcfzglycMapper.queryByZjhm(zjhm);
  }
}
