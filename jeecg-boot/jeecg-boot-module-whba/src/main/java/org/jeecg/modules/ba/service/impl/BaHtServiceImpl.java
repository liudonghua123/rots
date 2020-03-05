package org.jeecg.modules.ba.service.impl;

import org.jeecg.modules.ba.entity.BaHt;
import org.jeecg.modules.ba.entity.BaSkjh;
import org.jeecg.modules.ba.mapper.BaSkjhMapper;
import org.jeecg.modules.ba.mapper.BaHtMapper;
import org.jeecg.modules.ba.service.IBaHtService;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import java.io.Serializable;
import java.util.List;
import java.util.Collection;

/**
 * @Description: 合同
 * @Author: jeecg-boot
 * @Date:   2020-03-04
 * @Version: V1.0
 */
@Service
public class BaHtServiceImpl extends ServiceImpl<BaHtMapper, BaHt> implements IBaHtService {

	@Autowired
	private BaHtMapper baHtMapper;
	@Autowired
	private BaSkjhMapper baSkjhMapper;
	
	@Override
	@Transactional
	public void saveMain(BaHt baHt, List<BaSkjh> baSkjhList) {
		baHtMapper.insert(baHt);
		if(baSkjhList!=null && baSkjhList.size()>0) {
			for(BaSkjh entity:baSkjhList) {
				//外键设置
				entity.setHtid(baHt.getId());
				baSkjhMapper.insert(entity);
			}
		}
	}

	@Override
	@Transactional
	public void updateMain(BaHt baHt,List<BaSkjh> baSkjhList) {
		baHtMapper.updateById(baHt);
		
		//1.先删除子表数据
		baSkjhMapper.deleteByMainId(baHt.getId());
		
		//2.子表数据重新插入
		if(baSkjhList!=null && baSkjhList.size()>0) {
			for(BaSkjh entity:baSkjhList) {
				//外键设置
				entity.setHtid(baHt.getId());
				baSkjhMapper.insert(entity);
			}
		}
	}

	@Override
	@Transactional
	public void delMain(String id) {
		baSkjhMapper.deleteByMainId(id);
		baHtMapper.deleteById(id);
	}

	@Override
	@Transactional
	public void delBatchMain(Collection<? extends Serializable> idList) {
		for(Serializable id:idList) {
			baSkjhMapper.deleteByMainId(id.toString());
			baHtMapper.deleteById(id);
		}
	}
	
}
