package org.jeecg.modules.ba.entity;

import java.io.Serializable;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;
import org.jeecgframework.poi.excel.annotation.Excel;
import java.util.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * @Description: 收付款计划
 * @Author: jeecg-boot
 * @Date:   2020-03-04
 * @Version: V1.0
 */
@ApiModel(value="ba_ht对象", description="合同")
@Data
@TableName("ba_skjh")
public class BaSkjh implements Serializable {
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
	/**计划名称*/
	@Excel(name = "计划名称", width = 15)
	@ApiModelProperty(value = "计划名称")
	private java.lang.String jhmc;
	/**合同id*/
	@ApiModelProperty(value = "合同id")
	private java.lang.String htid;
	/**到期时间*/
	@Excel(name = "到期时间", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
	@ApiModelProperty(value = "到期时间")
	private java.util.Date dqsj;
	/**计划状态*/
	@Excel(name = "计划状态", width = 15, dicCode = "ba_sfkjhzt")
	@ApiModelProperty(value = "计划状态")
	private java.lang.String jhzt;
	/**计划类型*/
	@Excel(name = "计划类型", width = 15, dicCode = "ba_sfkjhlx")
	@ApiModelProperty(value = "计划类型")
	private java.lang.String jhlx;
	/**涉及金额*/
	@Excel(name = "涉及金额", width = 15)
	@ApiModelProperty(value = "涉及金额")
	private java.lang.Double sjje;
}
