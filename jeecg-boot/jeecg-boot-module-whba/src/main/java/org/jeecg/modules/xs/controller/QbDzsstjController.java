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
import org.jeecg.modules.xs.entity.QbDzsstj;
import org.jeecg.modules.xs.service.IQbDzsstjService;

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
 * @Description: 地址涉事统计
 * @Author: jeecg-boot
 * @Date:   2020-05-29
 * @Version: V1.0
 */
@Api(tags="地址涉事统计")
@RestController
@RequestMapping("/xs/qbDzsstj")
@Slf4j
public class QbDzsstjController extends JeecgController<QbDzsstj, IQbDzsstjService> {
	@Autowired
	private IQbDzsstjService qbDzsstjService;
	
	/**
	 * 分页列表查询
	 *
	 * @param qbDzsstj
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "地址涉事统计-分页列表查询")
	@ApiOperation(value="地址涉事统计-分页列表查询", notes="地址涉事统计-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(QbDzsstj qbDzsstj,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
		QueryWrapper<QbDzsstj> queryWrapper = QueryGenerator.initQueryWrapper(qbDzsstj, req.getParameterMap());
		Page<QbDzsstj> page = new Page<QbDzsstj>(pageNo, pageSize);
		IPage<QbDzsstj> pageList = qbDzsstjService.page(page, queryWrapper);
		return Result.ok(pageList);
	}
	
	/**
	 *   添加
	 *
	 * @param qbDzsstj
	 * @return
	 */
	@AutoLog(value = "地址涉事统计-添加")
	@ApiOperation(value="地址涉事统计-添加", notes="地址涉事统计-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody QbDzsstj qbDzsstj) {
		qbDzsstjService.save(qbDzsstj);
		return Result.ok("添加成功！");
	}
	
	/**
	 *  编辑
	 *
	 * @param qbDzsstj
	 * @return
	 */
	@AutoLog(value = "地址涉事统计-编辑")
	@ApiOperation(value="地址涉事统计-编辑", notes="地址涉事统计-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody QbDzsstj qbDzsstj) {
		qbDzsstjService.updateById(qbDzsstj);
		return Result.ok("编辑成功!");
	}
	
	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "地址涉事统计-通过id删除")
	@ApiOperation(value="地址涉事统计-通过id删除", notes="地址涉事统计-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		qbDzsstjService.removeById(id);
		return Result.ok("删除成功!");
	}
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "地址涉事统计-批量删除")
	@ApiOperation(value="地址涉事统计-批量删除", notes="地址涉事统计-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.qbDzsstjService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功!");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "地址涉事统计-通过id查询")
	@ApiOperation(value="地址涉事统计-通过id查询", notes="地址涉事统计-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		QbDzsstj qbDzsstj = qbDzsstjService.getById(id);
		if(qbDzsstj==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(qbDzsstj);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param qbDzsstj
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, QbDzsstj qbDzsstj) {
        return super.exportXls(request, qbDzsstj, QbDzsstj.class, "地址涉事统计");
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
        return super.importExcel(request, response, QbDzsstj.class);
    }

}
