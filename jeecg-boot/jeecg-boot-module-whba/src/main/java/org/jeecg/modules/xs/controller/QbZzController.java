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
import org.jeecg.modules.xs.entity.QbZz;
import org.jeecg.modules.xs.service.IQbZzService;

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

 /**
 * @Description: 组织
 * @Author: jeecg-boot
 * @Date:   2020-03-02
 * @Version: V1.0
 */
@RestController
@RequestMapping("/xs/qbZz")
@Slf4j
public class QbZzController extends JeecgController<QbZz, IQbZzService>{
	@Autowired
	private IQbZzService qbZzService;
	
	/**
	 * 分页列表查询
	 *
	 * @param qbZz
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@GetMapping(value = "/rootList")
	public Result<?> queryPageList(QbZz qbZz,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
		String parentId = qbZz.getPid();
		if (oConvertUtils.isEmpty(parentId)) {
			parentId = "0";
		}
		qbZz.setPid(null);
		QueryWrapper<QbZz> queryWrapper = QueryGenerator.initQueryWrapper(qbZz, req.getParameterMap());
		// 使用 eq 防止模糊查询
		queryWrapper.eq("pid", parentId);
		Page<QbZz> page = new Page<QbZz>(pageNo, pageSize);
		IPage<QbZz> pageList = qbZzService.page(page, queryWrapper);
		return Result.ok(pageList);
	}

	 /**
      * 获取子数据
      * @param testTree
      * @param req
      * @return
      */
	@GetMapping(value = "/childList")
	public Result<?> queryPageList(QbZz qbZz,HttpServletRequest req) {
		QueryWrapper<QbZz> queryWrapper = QueryGenerator.initQueryWrapper(qbZz, req.getParameterMap());
		List<QbZz> list = qbZzService.list(queryWrapper);
		return Result.ok(list);
	}
	
	
	/**
	 *   添加
	 *
	 * @param qbZz
	 * @return
	 */
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody QbZz qbZz) {
		qbZzService.addQbZz(qbZz);
		return Result.ok("添加成功！");
	}
	
	/**
	 *  编辑
	 *
	 * @param qbZz
	 * @return
	 */
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody QbZz qbZz) {
		qbZzService.updateQbZz(qbZz);
		return Result.ok("编辑成功!");
	}
	
	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		qbZzService.deleteQbZz(id);
		return Result.ok("删除成功!");
	}
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.qbZzService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功！");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		QbZz qbZz = qbZzService.getById(id);
		if(qbZz==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(qbZz);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param qbZz
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, QbZz qbZz) {
		return super.exportXls(request, qbZz, QbZz.class, "组织");
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
		return super.importExcel(request, response, QbZz.class);
    }

}
