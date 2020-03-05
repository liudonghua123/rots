package org.jeecg.modules.xs.service;

import org.jeecg.modules.xs.entity.QbZz;
import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.common.exception.JeecgBootException;

/**
 * @Description: 组织
 * @Author: jeecg-boot
 * @Date:   2020-03-02
 * @Version: V1.0
 */
public interface IQbZzService extends IService<QbZz> {

	/**根节点父ID的值*/
	public static final String ROOT_PID_VALUE = "0";
	
	/**树节点有子节点状态值*/
	public static final String HASCHILD = "1";
	
	/**树节点无子节点状态值*/
	public static final String NOCHILD = "0";

	/**新增节点*/
	void addQbZz(QbZz qbZz);
	
	/**修改节点*/
	void updateQbZz(QbZz qbZz) throws JeecgBootException;
	
	/**删除节点*/
	void deleteQbZz(String id) throws JeecgBootException;

}
