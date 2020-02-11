package org.jeecg.modules.demo.xs.vo;

import java.util.List;
import org.jeecg.modules.demo.xs.entity.QbSwxszb;
import org.jeecg.modules.demo.xs.entity.QbSwxszbfj;
import lombok.Data;
import org.jeecgframework.poi.excel.annotation.Excel;
import org.jeecgframework.poi.excel.annotation.ExcelEntity;
import org.jeecgframework.poi.excel.annotation.ExcelCollection;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;
import java.util.Date;

/**
 * @Description: 线索
 * @Author: jeecg-boot
 * @Date:   2020-02-11
 * @Version: V1.0
 */
@Data
public class QbSwxszbPage {
	
	/**线索主键*/
	private java.lang.String id;
	/**线索标题*/
	@Excel(name = "线索标题", width = 15)
	private java.lang.String xsbt;
	/**线索详情*/
	@Excel(name = "线索详情", width = 15)
	private java.lang.String xsxq;
	/**地址编号*/
	@Excel(name = "地址编号", width = 15)
	private java.lang.String xsddbh;
	/**地址名称*/
	@Excel(name = "地址名称", width = 15)
	private java.lang.String xsddmc;
	/**采集时间*/
	@Excel(name = "采集时间", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
	private java.util.Date cjsj;
	/**上传时间*/
	@Excel(name = "上传时间", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
	private java.util.Date scsj;
	/**采集人编号*/
	@Excel(name = "采集人编号", width = 15)
	private java.lang.String cjrbh;
	/**采集部门编号*/
	@Excel(name = "采集部门编号", width = 15)
	private java.lang.String cjbmbh;
	/**线索类型*/
	@Excel(name = "线索类型", width = 15)
	private java.lang.String xslx;
	/**后台计算结果：危险等级*/
	@Excel(name = "后台计算结果：危险等级", width = 15)
	private java.lang.String wxdj;
	/**后台计算结果：提示详情*/
	@Excel(name = "后台计算结果：提示详情", width = 15)
	private java.lang.String tsxq;
	/**后台比对标记：Y是，N否*/
	@Excel(name = "后台比对标记：Y是，N否", width = 15)
	private java.lang.String htbdbj;
	/**涉稳事件编号*/
	@Excel(name = "涉稳事件编号", width = 15)
	private java.lang.String swsjbh;
	/**信息编号*/
	@Excel(name = "信息编号", width = 15)
	private java.lang.String zdasjqbxxbh;
	/**创建人登录名称*/
	@Excel(name = "创建人登录名称", width = 15)
	private java.lang.String createBy;
	/**创建日期*/
	@Excel(name = "创建日期", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
	private java.util.Date createTime;
	/**更新人登录名称*/
	@Excel(name = "更新人登录名称", width = 15)
	private java.lang.String updateBy;
	/**更新日期*/
	@Excel(name = "更新日期", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
	private java.util.Date updateTime;
	
	@ExcelCollection(name="线索附件")
	private List<QbSwxszbfj> qbSwxszbfjList;	
	
}
