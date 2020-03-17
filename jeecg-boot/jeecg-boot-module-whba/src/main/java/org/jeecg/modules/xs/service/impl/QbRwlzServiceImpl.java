package org.jeecg.modules.xs.service.impl;

import org.jeecg.modules.xs.entity.QbRwlz;
import org.jeecg.modules.xs.mapper.QbRwlzMapper;
import org.jeecg.modules.xs.service.IQbRwlzService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

/**
 * @Description: 任务流转
 * @Author: jeecg-boot
 * @Date: 2020-03-10
 * @Version: V1.0
 */
@Service
public class QbRwlzServiceImpl extends ServiceImpl<QbRwlzMapper, QbRwlz> implements IQbRwlzService {

  @Autowired
  private QbRwlzMapper qbRwlzMapper;

  @Override
  public List<QbRwlz> queryByMbbmRwzt(String id, String rwzt) {
    return qbRwlzMapper.queryByMbbmRwzt(id, rwzt);
  }

  @Override
  public List<QbRwlz> queryByIds(List<String> ids) {
    return qbRwlzMapper.queryByIds(ids);
  }

}
