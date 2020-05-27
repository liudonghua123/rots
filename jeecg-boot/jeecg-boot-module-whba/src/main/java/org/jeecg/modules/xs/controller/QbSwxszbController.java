package org.jeecg.modules.xs.controller;

import java.io.UnsupportedEncodingException;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeecgframework.poi.excel.ExcelImportUtil;
import org.jeecgframework.poi.excel.def.NormalExcelConstants;
import org.jeecgframework.poi.excel.entity.ExportParams;
import org.jeecgframework.poi.excel.entity.ImportParams;
import org.jeecgframework.poi.excel.view.JeecgEntityExcelView;
import org.jeecg.common.system.vo.LoginUser;
import org.apache.shiro.SecurityUtils;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.xs.entity.QbSwxszbfj;
import org.jeecg.modules.xs.entity.QbSwxszb;
import org.jeecg.modules.xs.entity.QbEcfzglyc;
import org.jeecg.modules.xs.entity.QbShejunglyc;

import org.jeecg.modules.xs.vo.QbSwxszbPage;
import org.jeecg.modules.xs.service.IQbSwxszbService;
import org.jeecg.modules.xs.service.IQbSwxszbfjService;
import org.jeecg.modules.xs.service.IQbEcfzglycService;
import org.jeecg.modules.xs.service.IQbShejunglycService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;
import com.alibaba.fastjson.JSON;

import io.netty.util.internal.StringUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.jeecg.common.aspect.annotation.AutoLog;

/**
 * @Description: 线索
 * @Author: jeecg-boot
 * @Date: 2020-02-26
 * @Version: V1.0
 */
@Api(tags = "线索")
@RestController
@RequestMapping("/xs/qbSwxszb")
@Slf4j
public class QbSwxszbController {
	@Autowired
	private IQbSwxszbService qbSwxszbService;
	@Autowired
	private IQbSwxszbfjService qbSwxszbfjService;

	@Autowired
	private IQbEcfzglycService qbEcfzglycService;

	@Autowired
	private IQbShejunglycService qbShejunglycService;

	/**
	 * 分页列表查询
	 *
	 * @param qbSwxszb
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "线索-分页列表查询")
	@ApiOperation(value = "线索-分页列表查询", notes = "线索-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(QbSwxszb qbSwxszb, @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo,
			@RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize, HttpServletRequest req) {
		QueryWrapper<QbSwxszb> queryWrapper = QueryGenerator.initQueryWrapper(qbSwxszb, req.getParameterMap());
		Page<QbSwxszb> page = new Page<QbSwxszb>(pageNo, pageSize);
		IPage<QbSwxszb> pageList = qbSwxszbService.page(page, queryWrapper);
		return Result.ok(pageList);
	}

	/**
	 * 根据rwid分页列表查询
	 *
	 * @param qbSwxszb
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "线索-根据rwid分页列表查询")
	@ApiOperation(value = "线索-根据rwid分页列表查询", notes = "线索-根据rwid分页列表查询")
	@GetMapping(value = "/listByRwid")
	public Result<?> queryPageListByRwid(@RequestParam(name = "rwid") String rwid,
			@RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo,
			@RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize, HttpServletRequest req) {
		QueryWrapper<QbSwxszb> queryWrapper = new QueryWrapper<>();
		queryWrapper.eq("rwid", rwid);
		Page<QbSwxszb> page = new Page<QbSwxszb>(pageNo, pageSize);
		IPage<QbSwxszb> pageList = qbSwxszbService.page(page, queryWrapper);
		return Result.ok(pageList);
	}

	/**
	 * 添加
	 *
	 * @param qbSwxszbPage
	 * @return
	 */
	@AutoLog(value = "线索-添加")
	@ApiOperation(value = "线索-添加", notes = "线索-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody QbSwxszbPage qbSwxszbPage) {
		QbSwxszb qbSwxszb = new QbSwxszb();
		BeanUtils.copyProperties(qbSwxszbPage, qbSwxszb);
		fillQbSwxszbFmmtlj(qbSwxszb, qbSwxszbPage);
		fillQbSwxszbGlyc(qbSwxszb, qbSwxszbPage);
		if (qbSwxszb.getCjsj() == null) {
			qbSwxszb.setCjsj(qbSwxszb.getCreateTime() != null ? qbSwxszb.getCreateTime() : new Date());
			qbSwxszb.setScsj(new Date());
		}
		qbSwxszbService.saveMain(qbSwxszb, qbSwxszbPage.getQbSwxszbfjList());
		return Result.ok("添加成功！");
	}

	private void fillQbSwxszbGlyc(QbSwxszb qbSwxszb, QbSwxszbPage qbSwxszbPage) {
		if (qbSwxszb != null && "ry".equals(qbSwxszb.getXslx()) && !StringUtil.isNullOrEmpty(qbSwxszb.getFjxx())) {

			StringBuilder sb = new StringBuilder();
			List<QbEcfzglyc> fegs = qbEcfzglycService.queryByZjhm(qbSwxszb.getFjxx());
			QbEcfzglyc feg = fegs != null && fegs.size() > 0 ? fegs.get(0) : null;

			if (feg != null && feg.getEcfzycz() != null) {
				sb.append("\n").append("二次犯罪概率：").append(feg.getEcfzycz());

			} else {
				sb.append("\n").append("二次犯罪概率未知");
			}

			List<QbShejunglyc> sjgs = qbShejunglycService.queryByCity(qbSwxszb.getFjxx());
			QbShejunglyc sjg = sjgs != null && sjgs.size() > 0 ? sjgs.get(0) : null;
			if (sjg != null && sjg.getScore() != null) {
				sb.append("\n").append("涉军指数：").append(sjg.getScore());
			} else {
				sb.append("\n").append("涉军指数未知");
			}
			String wxdj = "";
			if ((feg != null && feg.getEcfzycz() != null && feg.getEcfzycz() > 0.5d)
					|| (sjg != null && sjg.getScore() != null && sjg.getScore() > 0.7d)) {
				wxdj = "wxdj_g";// 危险等级:高
			} else if (feg != null && feg.getEcfzycz() != null && feg.getEcfzycz() > 0.3d
					|| (sjg != null && sjg.getScore() != null && sjg.getScore() > 0.5d)) {
				wxdj = "wxdj_z";// 危险等级:中
			} else if ((feg != null && feg.getEcfzycz() != null) || (sjg != null && sjg.getScore() != null)) {
				wxdj = "wxdj_d";// 危险等级:低
			}
			if (!StringUtil.isNullOrEmpty(wxdj)) {
				qbSwxszb.setHtbdbj("Y");
			} else {
				qbSwxszb.setHtbdbj("N");
			}
			qbSwxszb.setWxdj(wxdj);
			qbSwxszb.setTsxq(sb.toString());

		}
	}

	private void fillQbSwxszbFmmtlj(QbSwxszb qbSwxszb, QbSwxszbPage qbSwxszbPage) {
		if (qbSwxszb != null && StringUtil.isNullOrEmpty(qbSwxszb.getFmmtlj())) {
			if (qbSwxszbPage.getQbSwxszbfjList() != null && qbSwxszbPage.getQbSwxszbfjList().size() > 0) {
				qbSwxszb.setFmmtlj(qbSwxszbPage.getQbSwxszbfjList().get(0).getWjlj());
			}
		}
	}

	/**
	 * 编辑
	 *
	 * @param qbSwxszbPage
	 * @return
	 */
	@AutoLog(value = "线索-编辑")
	@ApiOperation(value = "线索-编辑", notes = "线索-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody QbSwxszbPage qbSwxszbPage) {
		QbSwxszb qbSwxszb = new QbSwxszb();
		BeanUtils.copyProperties(qbSwxszbPage, qbSwxszb);
		fillQbSwxszbFmmtlj(qbSwxszb, qbSwxszbPage);
		QbSwxszb qbSwxszbEntity = qbSwxszbService.getById(qbSwxszb.getId());
		if (qbSwxszbEntity == null) {
			return Result.error("未找到对应数据");
		}
		qbSwxszbService.updateMain(qbSwxszb, qbSwxszbPage.getQbSwxszbfjList());
		return Result.ok("编辑成功!");
	}

	/**
	 * 通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "线索-通过id删除")
	@ApiOperation(value = "线索-通过id删除", notes = "线索-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name = "id", required = true) String id) {
		qbSwxszbService.delMain(id);
		return Result.ok("删除成功!");
	}

	/**
	 * 批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "线索-批量删除")
	@ApiOperation(value = "线索-批量删除", notes = "线索-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name = "ids", required = true) String ids) {
		this.qbSwxszbService.delBatchMain(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功！");
	}

	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "线索-通过id查询")
	@ApiOperation(value = "线索-通过id查询", notes = "线索-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name = "id", required = true) String id) {
		QbSwxszb qbSwxszb = qbSwxszbService.getById(id);
		if (qbSwxszb == null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(qbSwxszb);

	}

	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "线索附件集合-通过id查询")
	@ApiOperation(value = "线索附件集合-通过id查询", notes = "线索附件-通过id查询")
	@GetMapping(value = "/queryQbSwxszbfjByMainId")
	public Result<?> queryQbSwxszbfjListByMainId(@RequestParam(name = "id", required = true) String id) {
		List<QbSwxszbfj> qbSwxszbfjList = qbSwxszbfjService.selectByMainId(id);
		return Result.ok(qbSwxszbfjList);
	}

	/**
	 * 导出excel
	 *
	 * @param request
	 * @param qbSwxszb
	 */
	@RequestMapping(value = "/exportXls")
	public ModelAndView exportXls(HttpServletRequest request, QbSwxszb qbSwxszb) {
		// Step.1 组装查询条件查询数据
		QueryWrapper<QbSwxszb> queryWrapper = QueryGenerator.initQueryWrapper(qbSwxszb, request.getParameterMap());
		LoginUser sysUser = (LoginUser) SecurityUtils.getSubject().getPrincipal();

		// Step.2 获取导出数据
		List<QbSwxszb> queryList = qbSwxszbService.list(queryWrapper);
		// 过滤选中数据
		String selections = request.getParameter("selections");
		List<QbSwxszb> qbSwxszbList = new ArrayList<QbSwxszb>();
		if (oConvertUtils.isEmpty(selections)) {
			qbSwxszbList = queryList;
		} else {
			List<String> selectionList = Arrays.asList(selections.split(","));
			qbSwxszbList = queryList.stream().filter(item -> selectionList.contains(item.getId()))
					.collect(Collectors.toList());
		}

		// Step.3 组装pageList
		List<QbSwxszbPage> pageList = new ArrayList<QbSwxszbPage>();
		for (QbSwxszb main : qbSwxszbList) {
			QbSwxszbPage vo = new QbSwxszbPage();
			BeanUtils.copyProperties(main, vo);
			List<QbSwxszbfj> qbSwxszbfjList = qbSwxszbfjService.selectByMainId(main.getId());
			vo.setQbSwxszbfjList(qbSwxszbfjList);
			pageList.add(vo);
		}

		// Step.4 AutoPoi 导出Excel
		ModelAndView mv = new ModelAndView(new JeecgEntityExcelView());
		mv.addObject(NormalExcelConstants.FILE_NAME, "线索列表");
		mv.addObject(NormalExcelConstants.CLASS, QbSwxszbPage.class);
		mv.addObject(NormalExcelConstants.PARAMS, new ExportParams("线索数据", "导出人:" + sysUser.getRealname(), "线索"));
		mv.addObject(NormalExcelConstants.DATA_LIST, pageList);
		return mv;
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
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
		for (Map.Entry<String, MultipartFile> entity : fileMap.entrySet()) {
			MultipartFile file = entity.getValue();// 获取上传文件对象
			ImportParams params = new ImportParams();
			params.setTitleRows(2);
			params.setHeadRows(1);
			params.setNeedSave(true);
			try {
				List<QbSwxszbPage> list = ExcelImportUtil.importExcel(file.getInputStream(), QbSwxszbPage.class, params);
				for (QbSwxszbPage page : list) {
					QbSwxszb po = new QbSwxszb();
					BeanUtils.copyProperties(page, po);
					qbSwxszbService.saveMain(po, page.getQbSwxszbfjList());
				}
				return Result.ok("文件导入成功！数据行数:" + list.size());
			} catch (Exception e) {
				log.error(e.getMessage(), e);
				return Result.error("文件导入失败:" + e.getMessage());
			} finally {
				try {
					file.getInputStream().close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return Result.ok("文件导入失败！");
	}

}
