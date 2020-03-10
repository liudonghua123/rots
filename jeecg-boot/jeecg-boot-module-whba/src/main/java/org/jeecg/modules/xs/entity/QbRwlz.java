package org.jeecg.modules.xs.entity;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.math.BigDecimal;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;
import org.jeecgframework.poi.excel.annotation.Excel;
import org.jeecg.common.aspect.annotation.Dict;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * @Description: 任务流转
 * @Author: jeecg-boot
 * @Date:   2020-03-10
 * @Version: V1.0
 */
@Data
@TableName("qb_rwlz")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="qb_rwlz对象", description="任务流转")
public class QbRwlz implements Serializable {
    private static final long serialVersionUID = 1L;

	/**主键*/
	@TableId(type = IdType.ID_WORKER_STR)
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
	/**流程类别*/
	@Excel(name = "流程类别", width = 15)
    @ApiModelProperty(value = "流程类别")
    private java.lang.String lclb;
	/**任务类别*/
	@Excel(name = "任务类别", width = 15)
    @ApiModelProperty(value = "任务类别")
    private java.lang.String rwlb;
	/**信息源编号*/
	@Excel(name = "信息源编号", width = 15)
    @ApiModelProperty(value = "信息源编号")
    private java.lang.String ybh;
	/**发起人编号*/
	@Excel(name = "发起人编号", width = 15)
    @ApiModelProperty(value = "发起人编号")
    private java.lang.String fqrbh;
	/**目标信息类型*/
	@Excel(name = "目标信息类型", width = 15)
    @ApiModelProperty(value = "目标信息类型")
    private java.lang.String mblx;
	/**目标编号*/
	@Excel(name = "目标编号", width = 15)
    @ApiModelProperty(value = "目标编号")
    private java.lang.String mbbh;
	/**任务状态*/
	@Excel(name = "任务状态", width = 15)
    @ApiModelProperty(value = "任务状态")
    private java.lang.String rwzt;
	/**接收人编号*/
	@Excel(name = "接收人编号", width = 15)
    @ApiModelProperty(value = "接收人编号")
    private java.lang.String jsrbh;
	/**接收时间*/
	@Excel(name = "接收时间", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @ApiModelProperty(value = "接收时间")
    private java.util.Date jssj;
	/**处理意见*/
	@Excel(name = "处理意见", width = 15)
    @ApiModelProperty(value = "处理意见")
    private java.lang.String clyj;
	/**处理结果*/
	@Excel(name = "处理结果", width = 15)
    @ApiModelProperty(value = "处理结果")
    private java.lang.String cljg;
	/**发起部门编号*/
	@Excel(name = "发起部门编号", width = 15)
    @ApiModelProperty(value = "发起部门编号")
    private java.lang.String fqbmbh;
	/**目标部门编号*/
	@Excel(name = "目标部门编号", width = 15)
    @ApiModelProperty(value = "目标部门编号")
    private java.lang.String mbbmbh;
	/**办结时间*/
	@Excel(name = "办结时间", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @ApiModelProperty(value = "办结时间")
    private java.util.Date bjsj;
	/**发起时间*/
	@Excel(name = "发起时间", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @ApiModelProperty(value = "发起时间")
    private java.util.Date fqsj;
	/**任务标题*/
	@Excel(name = "任务标题", width = 15)
    @ApiModelProperty(value = "任务标题")
    private java.lang.String rwbt;
	/**已归档入库（暂时未用到）*/
	@Excel(name = "已归档入库（暂时未用到）", width = 15)
    @ApiModelProperty(value = "已归档入库（暂时未用到）")
    private java.lang.String ygdrk;
	/**发送意见*/
	@Excel(name = "发送意见", width = 15)
    @ApiModelProperty(value = "发送意见")
    private java.lang.String fsyj;
	/**流转方式（信息流转：XXLZ，人员采集指令：RYCJZL，线索采集指令:XSCJZL）*/
	@Excel(name = "流转方式（信息流转：XXLZ，人员采集指令：RYCJZL，线索采集指令:XSCJZL）", width = 15)
    @ApiModelProperty(value = "流转方式（信息流转：XXLZ，人员采集指令：RYCJZL，线索采集指令:XSCJZL）")
    private java.lang.String lzfs;
	/**反馈截止时间*/
	@Excel(name = "反馈截止时间", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @ApiModelProperty(value = "反馈截止时间")
    private java.util.Date fkjzsj;
	/**反馈说明*/
	@Excel(name = "反馈说明", width = 15)
    @ApiModelProperty(value = "反馈说明")
    private java.lang.String fksm;
	/**实际反馈时间*/
	@Excel(name = "实际反馈时间", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @ApiModelProperty(value = "实际反馈时间")
    private java.util.Date sjfksj;
	/**发起参数*/
	@Excel(name = "发起参数", width = 15)
    @ApiModelProperty(value = "发起参数")
    private java.lang.Integer fqcs;
}
