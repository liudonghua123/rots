package org.jeecg.modules.xs.service.impl;

import org.jeecg.modules.xs.entity.QbSwxszb;
import org.jeecg.modules.xs.entity.QbSwxszbfj;
import org.jeecg.modules.xs.mapper.QbSwxszbfjMapper;
import org.jeecg.modules.xs.mapper.QbSwxszbMapper;
import org.jeecg.modules.xs.service.IQbSwxszbService;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import java.io.Serializable;
import java.util.List;
import java.util.Collection;

/**
 * @Description: 线索
 * @Author: jeecg-boot
 * @Date:   2020-02-26
 * @Version: V1.0
 */
@Service
public class QbSwxszbServiceImpl extends ServiceImpl<QbSwxszbMapper, QbSwxszb> implements IQbSwxszbService {

	@Autowired
	private QbSwxszbMapper qbSwxszbMapper;
	@Autowired
	private QbSwxszbfjMapper qbSwxszbfjMapper;
	
	@Override
	@Transactional
	public void saveMain(QbSwxszb qbSwxszb, List<QbSwxszbfj> qbSwxszbfjList) {
		qbSwxszbMapper.insert(qbSwxszb);
		if(qbSwxszbfjList!=null && qbSwxszbfjList.size()>0) {
			for(QbSwxszbfj entity:qbSwxszbfjList) {
				//外键设置
				entity.setSwxsbh(qbSwxszb.getSwxsbh());
				qbSwxszbfjMapper.insert(entity);
			}
		}
	}

	@Override
	@Transactional
	public void updateMain(QbSwxszb qbSwxszb,List<QbSwxszbfj> qbSwxszbfjList) {
		qbSwxszbMapper.updateById(qbSwxszb);
		
		//1.先删除子表数据
		qbSwxszbfjMapper.deleteByMainId(qbSwxszb.getId());
		
		//2.子表数据重新插入
		if(qbSwxszbfjList!=null && qbSwxszbfjList.size()>0) {
			for(QbSwxszbfj entity:qbSwxszbfjList) {
				//外键设置
				entity.setSwxsbh(qbSwxszb.getSwxsbh());
				qbSwxszbfjMapper.insert(entity);
			}
		}
	}

	@Override
	@Transactional
	public void delMain(String id) {
		qbSwxszbfjMapper.deleteByMainId(id);
		qbSwxszbMapper.deleteById(id);
	}

	@Override
	@Transactional
	public void delBatchMain(Collection<? extends Serializable> idList) {
		for(Serializable id:idList) {
			qbSwxszbfjMapper.deleteByMainId(id.toString());
			qbSwxszbMapper.deleteById(id);
		}
	}
	
}
