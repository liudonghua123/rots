package org.jeecg.modules.ba.controller;

import java.io.UnsupportedEncodingException;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
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
import org.jeecg.modules.ba.entity.BaSkjh;
import org.jeecg.modules.ba.entity.BaHt;
import org.jeecg.modules.ba.vo.BaHtPage;
import org.jeecg.modules.ba.service.IBaHtService;
import org.jeecg.modules.ba.service.IBaSkjhService;
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
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.jeecg.common.aspect.annotation.AutoLog;

 /**
 * @Description: 合同
 * @Author: jeecg-boot
 * @Date:   2020-03-04
 * @Version: V1.0
 */
@Api(tags="合同")
@RestController
@RequestMapping("/ba/baHt")
@Slf4j
public class BaHtController {
	@Autowired
	private IBaHtService baHtService;
	@Autowired
	private IBaSkjhService baSkjhService;
	
	/**
	 * 分页列表查询
	 *
	 * @param baHt
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "合同-分页列表查询")
	@ApiOperation(value="合同-分页列表查询", notes="合同-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(BaHt baHt,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
		QueryWrapper<BaHt> queryWrapper = QueryGenerator.initQueryWrapper(baHt, req.getParameterMap());
		Page<BaHt> page = new Page<BaHt>(pageNo, pageSize);
		IPage<BaHt> pageList = baHtService.page(page, queryWrapper);
		return Result.ok(pageList);
	}
	
	/**
	 *   添加
	 *
	 * @param baHtPage
	 * @return
	 */
	@AutoLog(value = "合同-添加")
	@ApiOperation(value="合同-添加", notes="合同-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody BaHtPage baHtPage) {
		BaHt baHt = new BaHt();
		BeanUtils.copyProperties(baHtPage, baHt);
		baHtService.saveMain(baHt, baHtPage.getBaSkjhList());
		return Result.ok("添加成功！");
	}
	
	/**
	 *  编辑
	 *
	 * @param baHtPage
	 * @return
	 */
	@AutoLog(value = "合同-编辑")
	@ApiOperation(value="合同-编辑", notes="合同-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody BaHtPage baHtPage) {
		BaHt baHt = new BaHt();
		BeanUtils.copyProperties(baHtPage, baHt);
		BaHt baHtEntity = baHtService.getById(baHt.getId());
		if(baHtEntity==null) {
			return Result.error("未找到对应数据");
		}
		baHtService.updateMain(baHt, baHtPage.getBaSkjhList());
		return Result.ok("编辑成功!");
	}
	
	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "合同-通过id删除")
	@ApiOperation(value="合同-通过id删除", notes="合同-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		baHtService.delMain(id);
		return Result.ok("删除成功!");
	}
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "合同-批量删除")
	@ApiOperation(value="合同-批量删除", notes="合同-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.baHtService.delBatchMain(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功！");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "合同-通过id查询")
	@ApiOperation(value="合同-通过id查询", notes="合同-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		BaHt baHt = baHtService.getById(id);
		if(baHt==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(baHt);

	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "收付款计划集合-通过id查询")
	@ApiOperation(value="收付款计划集合-通过id查询", notes="收付款计划-通过id查询")
	@GetMapping(value = "/queryBaSkjhByMainId")
	public Result<?> queryBaSkjhListByMainId(@RequestParam(name="id",required=true) String id) {
		List<BaSkjh> baSkjhList = baSkjhService.selectByMainId(id);
		return Result.ok(baSkjhList);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param baHt
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, BaHt baHt) {
      // Step.1 组装查询条件查询数据
      QueryWrapper<BaHt> queryWrapper = QueryGenerator.initQueryWrapper(baHt, request.getParameterMap());
      LoginUser sysUser = (LoginUser) SecurityUtils.getSubject().getPrincipal();

      //Step.2 获取导出数据
      List<BaHt> queryList = baHtService.list(queryWrapper);
      // 过滤选中数据
      String selections = request.getParameter("selections");
      List<BaHt> baHtList = new ArrayList<BaHt>();
      if(oConvertUtils.isEmpty(selections)) {
          baHtList = queryList;
      }else {
          List<String> selectionList = Arrays.asList(selections.split(","));
          baHtList = queryList.stream().filter(item -> selectionList.contains(item.getId())).collect(Collectors.toList());
      }

      // Step.3 组装pageList
      List<BaHtPage> pageList = new ArrayList<BaHtPage>();
      for (BaHt main : baHtList) {
          BaHtPage vo = new BaHtPage();
          BeanUtils.copyProperties(main, vo);
          List<BaSkjh> baSkjhList = baSkjhService.selectByMainId(main.getId());
          vo.setBaSkjhList(baSkjhList);
          pageList.add(vo);
      }

      // Step.4 AutoPoi 导出Excel
      ModelAndView mv = new ModelAndView(new JeecgEntityExcelView());
      mv.addObject(NormalExcelConstants.FILE_NAME, "合同列表");
      mv.addObject(NormalExcelConstants.CLASS, BaHtPage.class);
      mv.addObject(NormalExcelConstants.PARAMS, new ExportParams("合同数据", "导出人:"+sysUser.getRealname(), "合同"));
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
              List<BaHtPage> list = ExcelImportUtil.importExcel(file.getInputStream(), BaHtPage.class, params);
              for (BaHtPage page : list) {
                  BaHt po = new BaHt();
                  BeanUtils.copyProperties(page, po);
                  baHtService.saveMain(po, page.getBaSkjhList());
              }
              return Result.ok("文件导入成功！数据行数:" + list.size());
          } catch (Exception e) {
              log.error(e.getMessage(),e);
              return Result.error("文件导入失败:"+e.getMessage());
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
