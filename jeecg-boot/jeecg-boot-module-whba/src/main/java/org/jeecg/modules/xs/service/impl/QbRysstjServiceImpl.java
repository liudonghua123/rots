package org.jeecg.modules.xs.service.impl;

import org.jeecg.modules.xs.entity.QbRysstj;
import org.jeecg.modules.xs.mapper.QbRysstjMapper;
import org.jeecg.modules.xs.service.IQbRysstjService;
import org.springframework.stereotype.Service;

import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

/**
 * @Description: 人员涉事统计
 * @Author: jeecg-boot
 * @Date: 2020-05-29
 * @Version: V1.0
 */
@Service
public class QbRysstjServiceImpl extends ServiceImpl<QbRysstjMapper, QbRysstj> implements IQbRysstjService {
  public QbRysstj queryOneByZjhm(String zjhm) {
    QbRysstj qbRysstj = null;

    QueryWrapper<QbRysstj> queryWrapper = new QueryWrapper<QbRysstj>();
    LambdaQueryWrapper<QbRysstj> lambdaQueryWrapper = queryWrapper.lambda();
    lambdaQueryWrapper.like(QbRysstj::getZjhm, zjhm);

    List<QbRysstj> tjs = baseMapper.selectList(queryWrapper);
    if (tjs != null && tjs.size() > 0) {
      qbRysstj = tjs.get(0);
    }

    return qbRysstj;
  }
}
