package org.jeecg.modules.xs.service.impl;

import org.jeecg.common.exception.JeecgBootException;
import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.xs.entity.QbZz;
import org.jeecg.modules.xs.mapper.QbZzMapper;
import org.jeecg.modules.xs.service.IQbZzService;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

/**
 * @Description: 组织
 * @Author: jeecg-boot
 * @Date:   2020-03-02
 * @Version: V1.0
 */
@Service
public class QbZzServiceImpl extends ServiceImpl<QbZzMapper, QbZz> implements IQbZzService {

	@Override
	public void addQbZz(QbZz qbZz) {
		if(oConvertUtils.isEmpty(qbZz.getPid())){
			qbZz.setPid(IQbZzService.ROOT_PID_VALUE);
		}else{
			//如果当前节点父ID不为空 则设置父节点的hasChildren 为1
			QbZz parent = baseMapper.selectById(qbZz.getPid());
			if(parent!=null && !"1".equals(parent.getHasChild())){
				parent.setHasChild("1");
				baseMapper.updateById(parent);
			}
		}
		baseMapper.insert(qbZz);
	}
	
	@Override
	public void updateQbZz(QbZz qbZz) {
		QbZz entity = this.getById(qbZz.getId());
		if(entity==null) {
			throw new JeecgBootException("未找到对应实体");
		}
		String old_pid = entity.getPid();
		String new_pid = qbZz.getPid();
		if(!old_pid.equals(new_pid)) {
			updateOldParentNode(old_pid);
			if(oConvertUtils.isEmpty(new_pid)){
				qbZz.setPid(IQbZzService.ROOT_PID_VALUE);
			}
			if(!IQbZzService.ROOT_PID_VALUE.equals(qbZz.getPid())) {
				baseMapper.updateTreeNodeStatus(qbZz.getPid(), IQbZzService.HASCHILD);
			}
		}
		baseMapper.updateById(qbZz);
	}
	
	@Override
	public void deleteQbZz(String id) throws JeecgBootException {
		QbZz qbZz = this.getById(id);
		if(qbZz==null) {
			throw new JeecgBootException("未找到对应实体");
		}
		updateOldParentNode(qbZz.getPid());
		baseMapper.deleteById(id);
	}
	
	
	
	/**
	 * 根据所传pid查询旧的父级节点的子节点并修改相应状态值
	 * @param pid
	 */
	private void updateOldParentNode(String pid) {
		if(!IQbZzService.ROOT_PID_VALUE.equals(pid)) {
			Integer count = baseMapper.selectCount(new QueryWrapper<QbZz>().eq("pid", pid));
			if(count==null || count<=1) {
				baseMapper.updateTreeNodeStatus(pid, IQbZzService.NOCHILD);
			}
		}
	}

}
