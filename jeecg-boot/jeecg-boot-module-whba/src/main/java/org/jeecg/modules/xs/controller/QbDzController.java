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
import org.jeecg.modules.xs.entity.QbDz;
import org.jeecg.modules.xs.service.IQbDzService;

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
 * @Description: 地址
 * @Author: jeecg-boot
 * @Date:   2020-03-02
 * @Version: V1.0
 */
@Api(tags="地址")
@RestController
@RequestMapping("/xs/qbDz")
@Slf4j
public class QbDzController extends JeecgController<QbDz, IQbDzService> {
	@Autowired
	private IQbDzService qbDzService;
	
	/**
	 * 分页列表查询
	 *
	 * @param qbDz
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "地址-分页列表查询")
	@ApiOperation(value="地址-分页列表查询", notes="地址-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(QbDz qbDz,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
		QueryWrapper<QbDz> queryWrapper = QueryGenerator.initQueryWrapper(qbDz, req.getParameterMap());
		Page<QbDz> page = new Page<QbDz>(pageNo, pageSize);
		IPage<QbDz> pageList = qbDzService.page(page, queryWrapper);
		return Result.ok(pageList);
	}
	
	/**
	 *   添加
	 *
	 * @param qbDz
	 * @return
	 */
	@AutoLog(value = "地址-添加")
	@ApiOperation(value="地址-添加", notes="地址-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody QbDz qbDz) {
		qbDzService.save(qbDz);
		return Result.ok("添加成功！");
	}
	
	/**
	 *  编辑
	 *
	 * @param qbDz
	 * @return
	 */
	@AutoLog(value = "地址-编辑")
	@ApiOperation(value="地址-编辑", notes="地址-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody QbDz qbDz) {
		qbDzService.updateById(qbDz);
		return Result.ok("编辑成功!");
	}
	
	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "地址-通过id删除")
	@ApiOperation(value="地址-通过id删除", notes="地址-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		qbDzService.removeById(id);
		return Result.ok("删除成功!");
	}
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "地址-批量删除")
	@ApiOperation(value="地址-批量删除", notes="地址-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.qbDzService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功!");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "地址-通过id查询")
	@ApiOperation(value="地址-通过id查询", notes="地址-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		QbDz qbDz = qbDzService.getById(id);
		if(qbDz==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(qbDz);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param qbDz
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, QbDz qbDz) {
        return super.exportXls(request, qbDz, QbDz.class, "地址");
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
        return super.importExcel(request, response, QbDz.class);
    }

}
