package org.jeecg.modules.ba.service.impl;

import org.jeecg.modules.ba.entity.BaSkjh;
import org.jeecg.modules.ba.mapper.BaSkjhMapper;
import org.jeecg.modules.ba.service.IBaSkjhService;
import org.springframework.stereotype.Service;
import java.util.List;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @Description: 收付款计划
 * @Author: jeecg-boot
 * @Date:   2020-03-04
 * @Version: V1.0
 */
@Service
public class BaSkjhServiceImpl extends ServiceImpl<BaSkjhMapper, BaSkjh> implements IBaSkjhService {
	
	@Autowired
	private BaSkjhMapper baSkjhMapper;
	
	@Override
	public List<BaSkjh> selectByMainId(String mainId) {
		return baSkjhMapper.selectByMainId(mainId);
	}
}
