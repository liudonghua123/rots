package org.jeecg.modules.ba.service;

import org.jeecg.modules.ba.entity.BaSkjh;
import org.jeecg.modules.ba.entity.BaHt;
import com.baomidou.mybatisplus.extension.service.IService;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;

/**
 * @Description: 合同
 * @Author: jeecg-boot
 * @Date:   2020-03-04
 * @Version: V1.0
 */
public interface IBaHtService extends IService<BaHt> {

	/**
	 * 添加一对多
	 * 
	 */
	public void saveMain(BaHt baHt,List<BaSkjh> baSkjhList) ;
	
	/**
	 * 修改一对多
	 * 
	 */
	public void updateMain(BaHt baHt,List<BaSkjh> baSkjhList);
	
	/**
	 * 删除一对多
	 */
	public void delMain (String id);
	
	/**
	 * 批量删除一对多
	 */
	public void delBatchMain (Collection<? extends Serializable> idList);
	
}
