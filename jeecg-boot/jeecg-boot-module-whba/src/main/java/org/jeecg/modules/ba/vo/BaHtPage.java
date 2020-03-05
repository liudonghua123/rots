package org.jeecg.modules.ba.vo;

import java.util.List;
import org.jeecg.modules.ba.entity.BaHt;
import org.jeecg.modules.ba.entity.BaSkjh;
import lombok.Data;
import org.jeecgframework.poi.excel.annotation.Excel;
import org.jeecgframework.poi.excel.annotation.ExcelEntity;
import org.jeecgframework.poi.excel.annotation.ExcelCollection;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;
import java.util.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * @Description: 合同
 * @Author: jeecg-boot
 * @Date:   2020-03-04
 * @Version: V1.0
 */
@Data
@ApiModel(value="ba_htPage对象", description="合同")
public class BaHtPage {
	
	/**主键*/
	@ApiModelProperty(value = "主键")
	private java.lang.String id;
	/**创建人*/
	@Excel(name = "创建人", width = 15)
	@ApiModelProperty(value = "创建人")
	private java.lang.String createBy;
	/**创建日期*/
	@Excel(name = "创建日期", width = 20, format = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	@ApiModelProperty(value = "创建日期")
	private java.util.Date createTime;
	/**更新人*/
	@Excel(name = "更新人", width = 15)
	@ApiModelProperty(value = "更新人")
	private java.lang.String updateBy;
	/**更新日期*/
	@Excel(name = "更新日期", width = 20, format = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	@ApiModelProperty(value = "更新日期")
	private java.util.Date updateTime;
	/**所属部门*/
	@Excel(name = "所属部门", width = 15)
	@ApiModelProperty(value = "所属部门")
	private java.lang.String sysOrgCode;
	/**合同名称*/
	@Excel(name = "合同名称", width = 15)
	@ApiModelProperty(value = "合同名称")
	private java.lang.String htmc;
	/**合同编号*/
	@Excel(name = "合同编号", width = 15)
	@ApiModelProperty(value = "合同编号")
	private java.lang.String htbh;
	/**客户编号*/
	@Excel(name = "客户编号", width = 15)
	@ApiModelProperty(value = "客户编号")
	private java.lang.String khbh;
	/**付款方式*/
	@Excel(name = "付款方式", width = 15)
	@ApiModelProperty(value = "付款方式")
	private java.lang.String fkfs;
	/**合同状态*/
	@Excel(name = "合同状态", width = 15)
	@ApiModelProperty(value = "合同状态")
	private java.lang.String htzt;
	/**签订时间*/
	@Excel(name = "签订时间", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
	@ApiModelProperty(value = "签订时间")
	private java.util.Date qdsj;
	/**执行开始时间*/
	@Excel(name = "执行开始时间", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
	@ApiModelProperty(value = "执行开始时间")
	private java.util.Date zxsj;
	/**执行结束时间*/
	@Excel(name = "执行结束时间", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
	@ApiModelProperty(value = "执行结束时间")
	private java.util.Date jssj;
	/**合同人数*/
	@Excel(name = "合同人数", width = 15)
	@ApiModelProperty(value = "合同人数")
	private java.lang.Integer htrs;
	/**服务单价*/
	@Excel(name = "服务单价", width = 15)
	@ApiModelProperty(value = "服务单价")
	private java.lang.Double htdj;
	/**服务总价*/
	@Excel(name = "服务总价", width = 15)
	@ApiModelProperty(value = "服务总价")
	private java.lang.Double htzj;
	/**已收服务费*/
	@Excel(name = "已收服务费", width = 15)
	@ApiModelProperty(value = "已收服务费")
	private java.lang.Double ysfwf;
	/**差额*/
	@Excel(name = "差额", width = 15)
	@ApiModelProperty(value = "差额")
	private java.lang.Double ce;
	/**合同所属部门*/
	@Excel(name = "合同所属部门", width = 15)
	@ApiModelProperty(value = "合同所属部门")
	private java.lang.String htssbm;
	/**合同负责人*/
	@Excel(name = "合同负责人", width = 15)
	@ApiModelProperty(value = "合同负责人")
	private java.lang.String htfzr;
	/**联系电话*/
	@Excel(name = "联系电话", width = 15)
	@ApiModelProperty(value = "联系电话")
	private java.lang.String lxdh;
	/**备注*/
	@Excel(name = "备注", width = 15)
	@ApiModelProperty(value = "备注")
	private java.lang.String htbz;
	
	@ExcelCollection(name="收付款计划")
	@ApiModelProperty(value = "收付款计划")
	private List<BaSkjh> baSkjhList;
	
}
