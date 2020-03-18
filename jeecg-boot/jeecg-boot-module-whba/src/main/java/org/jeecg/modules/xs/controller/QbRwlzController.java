package org.jeecg.modules.xs.controller;

import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.shiro.SecurityUtils;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.aspect.annotation.AutoLog;
import org.jeecg.common.system.base.controller.JeecgController;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.common.system.vo.LoginUser;
import org.jeecg.modules.system.entity.SysDepart;
import org.jeecg.modules.system.service.ISysDepartService;
import org.jeecg.modules.xs.entity.QbRwlz;
import org.jeecg.modules.xs.entity.QbZdasjqbxx;
import org.jeecg.modules.xs.service.IQbRwlzService;
import org.jeecg.modules.xs.service.IQbZdasjqbxxService;
import org.jeecg.modules.xs.utils.QbConstants;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;

/**
 * @Description: 任务流转
 * @Author: jeecg-boot
 * @Date: 2020-03-10
 * @Version: V1.0
 */
@Api(tags = "任务流转")
@RestController
@RequestMapping("/xs/qbRwlz")
@Slf4j
public class QbRwlzController extends JeecgController<QbRwlz, IQbRwlzService> {
	@Autowired
	private IQbRwlzService qbRwlzService;

	@Autowired
	private ISysDepartService sysDepartService;

	@Autowired
	private IQbZdasjqbxxService qbZdasjqbxxService;

	/**
	 * 分页列表查询
	 *
	 * @param qbRwlz
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "任务流转-分页列表查询")
	@ApiOperation(value = "任务流转-分页列表查询", notes = "任务流转-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(QbRwlz qbRwlz, @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo,
			@RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize, HttpServletRequest req) {
		QueryWrapper<QbRwlz> queryWrapper = QueryGenerator.initQueryWrapper(qbRwlz, req.getParameterMap());
		Page<QbRwlz> page = new Page<QbRwlz>(pageNo, pageSize);
		IPage<QbRwlz> pageList = qbRwlzService.page(page, queryWrapper);
		return Result.ok(pageList);
	}

	/**
	 * 添加
	 *
	 * @param qbRwlz
	 * @return
	 */
	@AutoLog(value = "任务流转-添加")
	@ApiOperation(value = "任务流转-添加", notes = "任务流转-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody QbRwlz qbRwlz) {
		qbRwlzService.save(qbRwlz);
		return Result.ok("添加成功！");
	}

	/**
	 * 编辑
	 *
	 * @param qbRwlz
	 * @return
	 */
	@AutoLog(value = "任务流转-编辑")
	@ApiOperation(value = "任务流转-编辑", notes = "任务流转-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody QbRwlz qbRwlz) {
		qbRwlzService.updateById(qbRwlz);
		return Result.ok("编辑成功!");
	}

	/**
	 * 通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "任务流转-通过id删除")
	@ApiOperation(value = "任务流转-通过id删除", notes = "任务流转-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name = "id", required = true) String id) {
		qbRwlzService.removeById(id);
		return Result.ok("删除成功!");
	}

	/**
	 * 批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "任务流转-批量删除")
	@ApiOperation(value = "任务流转-批量删除", notes = "任务流转-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name = "ids", required = true) String ids) {
		this.qbRwlzService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功!");
	}

	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "任务流转-通过id查询")
	@ApiOperation(value = "任务流转-通过id查询", notes = "任务流转-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name = "id", required = true) String id) {
		QbRwlz qbRwlz = qbRwlzService.getById(id);
		if (qbRwlz == null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(qbRwlz);
	}

	/**
	 * 导出excel
	 *
	 * @param request
	 * @param qbRwlz
	 */
	@RequestMapping(value = "/exportXls")
	public ModelAndView exportXls(HttpServletRequest request, QbRwlz qbRwlz) {
		return super.exportXls(request, qbRwlz, QbRwlz.class, "任务流转");
	}

	/**
	 * 通过excel导入数据
	 *
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/importExcel", method = RequestMethod.POST)
	public Result<?> importExcel(HttpServletRequest request, HttpServletResponse response) {
		return super.importExcel(request, response, QbRwlz.class);
	}

	@AutoLog(value = "任务流转-任务签收")
	@ApiOperation(value = "任务流转-任务签收", notes = "任务流转-任务签收")
	@PostMapping(value = "/accept")
	public Result<?> accept(@RequestParam(name = "qbrwIdsStr", required = false) String qbrwIdsStr,
			@RequestParam(name = "acceptALL", required = false) String acceptALL) {

		LoginUser user = getLoginUser();

		List<QbRwlz> rws = null;
		Boolean has_dxyx = true; // 是否单线运行
		// List<Qbzdasjqbxx> xxs = new ArrayList<Qbzdasjqbxx>();
		if ("Y".equals(acceptALL)) {
			rws = qbRwlzService.queryByMbbmRwzt(user.getId(), "待签收");
		} else {
			if (!StringUtils.isEmpty(qbrwIdsStr))
				// List<String> rwIds = Arrays.asList(qbrwIdsStr.split("\\,"));
				rws = qbRwlzService.queryByIds(Arrays.asList(qbrwIdsStr.split("\\,")));
		}

		if (rws != null && rws.size() > 0) {

			SysDepart dept = findDepart(user.getOrgCode());

			// Timestamp tsp = new Timestamp(System.currentTimeMillis());
			Date tsp = new Date();
			for (QbRwlz rw : rws) {
				rw.setJsrbh(user.getId());
				rw.setMblx(QbConstants.RWLB_STR_SJXX);
				QbZdasjqbxx qbxx = qbZdasjqbxxService.getById(rw.getYbh());
				if (qbxx == null) {// 源信息已经删除，执行删除无效任务，
					Map<String, Object> qMap = new HashMap<String, Object>();
					qMap.put("ybh", rw.getYbh());
					qbRwlzService.removeByMap(qMap);
					continue;
				}
				QbZdasjqbxx newQbxx = null;
				if (QbConstants.LZFS_STR_RYCJZL.equals(rw.getLzfs()) || QbConstants.LZFS_STR_XXCJZL.equals(rw.getLzfs())) {
					newQbxx = new QbZdasjqbxx();
					if (!user.getId().equals(qbxx.getLrmjbh()) && !user.getId().equals(qbxx.getLrbmid())) {
						BeanUtils.copyProperties(newQbxx, qbxx);

						newQbxx.setXxzt(QbConstants.SJXX_ZT_JS);
						newQbxx.setXxffbj(QbConstants.SF_EN_STR_FOU);
						newQbxx.setXxlylb(QbConstants.XXLYLB_STR_SJZL);

						fillNPQbxxUserInfo(newQbxx, rw, user, dept);
					}
					rw.setRwzt(QbConstants.RWZT_STR_BLZ);
				} else {
					if (QbConstants.LCLB_STR_SB.equals(rw.getLclb())) {
						qbxx.setXxzt(QbConstants.SJXX_ZT_XS);
						rw.setClyj(QbConstants.CLGJ_STR_JS);
						rw.setCljg(QbConstants.CLGJ_STR_JS);
						if (has_dxyx) {
							newQbxx = new QbZdasjqbxx();
							if (!user.getId().equals(qbxx.getLrmjbh()) && !user.getDepartIds().equals(qbxx.getLrbmid())) {

								BeanUtils.copyProperties(newQbxx, qbxx);

								newQbxx.setXxzt(QbConstants.SJXX_ZT_JS);
								newQbxx.setXxffbj(QbConstants.SF_EN_STR_FOU);
								if (QbConstants.LCLB_STR_SB.equals(rw.getLclb())) {
									newQbxx.setXxlylb(QbConstants.XXLYLB_STR_XJSB);
								} else if (QbConstants.LCLB_STR_FF.equals(rw.getLclb())) {
									newQbxx.setXxlylb(QbConstants.XXLYLB_STR_SJFF);
								}

								fillNPQbxxUserInfo(newQbxx, rw, user, dept);

							}
						}
						rw.setRwzt(QbConstants.RWZT_STR_YQS);
					} else if (QbConstants.LCLB_STR_FF.equals(rw.getLclb())) {
						newQbxx = new QbZdasjqbxx();
						if (!user.getId().equals(qbxx.getLrmjbh()) && !user.getDepartIds().equals(qbxx.getLrbmid())) {
							BeanUtils.copyProperties(newQbxx, qbxx);

							newQbxx.setXxzt(QbConstants.SJXX_ZT_JS);
							newQbxx.setXxffbj(QbConstants.SF_EN_STR_FOU);
							newQbxx.setXxlylb(QbConstants.XXLYLB_STR_SJFF);

							fillNPQbxxUserInfo(newQbxx, rw, user, dept);

						}
						rw.setRwzt(QbConstants.RWZT_STR_YQS);

					}
				}
				rw.setJssj(tsp);
				if (newQbxx != null) {
					qbZdasjqbxxService.save(newQbxx);
					rw.setMbbh(newQbxx.getId());
				}
				qbZdasjqbxxService.save(qbxx);
				qbRwlzService.save(rw);
			}
		}
		Long ic = rws == null ? 0L : rws.size();

		return Result.ok("任务签收成功!签收[" + ic + "]条指令");
	}

	private SysDepart findDepart(String orgCode) {
		QueryWrapper<SysDepart> queryWrapper = new QueryWrapper<SysDepart>();
		queryWrapper.eq("org_code", orgCode);
		queryWrapper.last("LIMIT 1");

		SysDepart dept = sysDepartService.getOne(queryWrapper);
		return dept;
	}

	private void fillNPQbxxUserInfo(QbZdasjqbxx newQbxx, QbRwlz rw, LoginUser user, SysDepart dept) {

		newQbxx.setId(null);
		newQbxx.setZhxgsj(new Date());

		newQbxx.setLybh(rw.getYbh());
		newQbxx.setJsrid(user.getId());
		newQbxx.setJsbmid(dept == null ? null : dept.getId());
		newQbxx.setRwlzbh(rw.getId());

	}

	private LoginUser getLoginUser() {
		LoginUser sysUser = null;
		try {
			sysUser = SecurityUtils.getSubject().getPrincipal() != null
					? (LoginUser) SecurityUtils.getSubject().getPrincipal()
					: null;
		} catch (Exception e) {
			// e.printStackTrace();
			sysUser = null;
		}
		return sysUser;
	}

}
