package org.jeecg.modules.xs.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.xs.entity.QbShejunglyc;
import org.jeecg.modules.xs.service.IQbShejunglycService;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;

import org.jeecgframework.poi.excel.ExcelImportUtil;
import org.jeecgframework.poi.excel.def.NormalExcelConstants;
import org.jeecgframework.poi.excel.entity.ExportParams;
import org.jeecgframework.poi.excel.entity.ImportParams;
import org.jeecgframework.poi.excel.view.JeecgEntityExcelView;
import org.jeecg.common.system.base.controller.JeecgController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import com.alibaba.fastjson.JSON;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.jeecg.common.aspect.annotation.AutoLog;

/**
 * @Description: 涉军概率预测
 * @Author: jeecg-boot
 * @Date: 2020-05-23
 * @Version: V1.0
 */
@Api(tags = "涉军概率预测")
@RestController
@RequestMapping("/xs/qbShejunglyc")
@Slf4j
public class QbShejunglycController extends JeecgController<QbShejunglyc, IQbShejunglycService> {
	@Autowired
	private IQbShejunglycService qbShejunglycService;

	/**
	 * 分页列表查询
	 *
	 * @param qbShejunglyc
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "涉军概率预测-分页列表查询")
	@ApiOperation(value = "涉军概率预测-分页列表查询", notes = "涉军概率预测-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(QbShejunglyc qbShejunglyc,
			@RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo,
			@RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize, HttpServletRequest req) {
		QueryWrapper<QbShejunglyc> queryWrapper = QueryGenerator.initQueryWrapper(qbShejunglyc, req.getParameterMap());
		Page<QbShejunglyc> page = new Page<QbShejunglyc>(pageNo, pageSize);
		IPage<QbShejunglyc> pageList = qbShejunglycService.page(page, queryWrapper);
		return Result.ok(pageList);
	}

	/**
	 * 添加
	 *
	 * @param qbShejunglyc
	 * @return
	 */
	@AutoLog(value = "涉军概率预测-添加")
	@ApiOperation(value = "涉军概率预测-添加", notes = "涉军概率预测-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody QbShejunglyc qbShejunglyc) {
		qbShejunglycService.save(qbShejunglyc);
		return Result.ok("添加成功！");
	}

	/**
	 * 编辑
	 *
	 * @param qbShejunglyc
	 * @return
	 */
	@AutoLog(value = "涉军概率预测-编辑")
	@ApiOperation(value = "涉军概率预测-编辑", notes = "涉军概率预测-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody QbShejunglyc qbShejunglyc) {
		qbShejunglycService.updateById(qbShejunglyc);
		return Result.ok("编辑成功!");
	}

	/**
	 * 通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "涉军概率预测-通过id删除")
	@ApiOperation(value = "涉军概率预测-通过id删除", notes = "涉军概率预测-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name = "id", required = true) String id) {
		qbShejunglycService.removeById(id);
		return Result.ok("删除成功!");
	}

	/**
	 * 批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "涉军概率预测-批量删除")
	@ApiOperation(value = "涉军概率预测-批量删除", notes = "涉军概率预测-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name = "ids", required = true) String ids) {
		this.qbShejunglycService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功!");
	}

	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "涉军概率预测-通过id查询")
	@ApiOperation(value = "涉军概率预测-通过id查询", notes = "涉军概率预测-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name = "id", required = true) String id) {
		QbShejunglyc qbShejunglyc = qbShejunglycService.getById(id);
		if (qbShejunglyc == null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(qbShejunglyc);
	}

	/**
	 * 通过city查询
	 *
	 * @param city
	 * @return
	 */
	@AutoLog(value = "涉军概率预测-通过city查询")
	@ApiOperation(value = "涉军概率预测-通过city查询", notes = "涉军概率预测-通过city查询")
	@GetMapping(value = "/queryByCity")
	public Result<?> queryByCity(@RequestParam(name = "city", required = true) String city) {
		List<QbShejunglyc> qbShejunglyc = qbShejunglycService.queryByCity(city);
		if (qbShejunglyc == null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(qbShejunglyc);
	}

	/**
	 * 导出excel
	 *
	 * @param request
	 * @param qbShejunglyc
	 */
	@RequestMapping(value = "/exportXls")
	public ModelAndView exportXls(HttpServletRequest request, QbShejunglyc qbShejunglyc) {
		return super.exportXls(request, qbShejunglyc, QbShejunglyc.class, "涉军概率预测");
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
		return super.importExcel(request, response, QbShejunglyc.class);
	}

}
