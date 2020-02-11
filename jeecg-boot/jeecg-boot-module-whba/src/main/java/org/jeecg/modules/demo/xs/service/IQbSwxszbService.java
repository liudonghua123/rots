package org.jeecg.modules.demo.xs.service;

import org.jeecg.modules.demo.xs.entity.QbSwxszbfj;
import org.jeecg.modules.demo.xs.entity.QbSwxszb;
import com.baomidou.mybatisplus.extension.service.IService;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;

/**
 * @Description: 线索
 * @Author: jeecg-boot
 * @Date:   2020-02-11
 * @Version: V1.0
 */
public interface IQbSwxszbService extends IService<QbSwxszb> {

	/**
	 * 添加一对多
	 * 
	 */
	public void saveMain(QbSwxszb qbSwxszb,List<QbSwxszbfj> qbSwxszbfjList) ;
	
	/**
	 * 修改一对多
	 * 
	 */
	public void updateMain(QbSwxszb qbSwxszb,List<QbSwxszbfj> qbSwxszbfjList);
	
	/**
	 * 删除一对多
	 */
	public void delMain (String id);
	
	/**
	 * 批量删除一对多
	 */
	public void delBatchMain (Collection<? extends Serializable> idList);
	
}
