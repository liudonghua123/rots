package org.jeecg.modules.demo.xs.service.impl;

import org.jeecg.modules.demo.xs.entity.QbSwxszbfj;
import org.jeecg.modules.demo.xs.mapper.QbSwxszbfjMapper;
import org.jeecg.modules.demo.xs.service.IQbSwxszbfjService;
import org.springframework.stereotype.Service;
import java.util.List;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @Description: 线索附件
 * @Author: jeecg-boot
 * @Date:   2020-02-11
 * @Version: V1.0
 */
@Service
public class QbSwxszbfjServiceImpl extends ServiceImpl<QbSwxszbfjMapper, QbSwxszbfj> implements IQbSwxszbfjService {
	
	@Autowired
	private QbSwxszbfjMapper qbSwxszbfjMapper;
	
	@Override
	public List<QbSwxszbfj> selectByMainId(String mainId) {
		return qbSwxszbfjMapper.selectByMainId(mainId);
	}
}
