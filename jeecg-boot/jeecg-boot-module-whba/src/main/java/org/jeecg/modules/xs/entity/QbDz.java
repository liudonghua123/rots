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
 * @Description: 地址
 * @Author: jeecg-boot
 * @Date:   2020-03-02
 * @Version: V1.0
 */
@Data
@TableName("qb_dz")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="qb_dz对象", description="地址")
public class QbDz implements Serializable {
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
	/**地址名称*/
	@Excel(name = "地址名称", width = 15)
    @ApiModelProperty(value = "地址名称")
    private java.lang.String dzjc;
	/**标准地址名称*/
	@Excel(name = "标准地址名称", width = 15)
    @ApiModelProperty(value = "标准地址名称")
    private java.lang.String bzdzmc;
	/**标准地址编号*/
	@Excel(name = "标准地址编号", width = 15)
    @ApiModelProperty(value = "标准地址编号")
    private java.lang.String bzdzbh;
	/**地址别名*/
	@Excel(name = "地址别名", width = 15)
    @ApiModelProperty(value = "地址别名")
    private java.lang.String dzbiem;
	/**当前是否在用*/
	@Excel(name = "当前是否在用", width = 15)
    @ApiModelProperty(value = "当前是否在用")
    private java.lang.String dqsfzy;
	/**地址编码*/
	@Excel(name = "地址编码", width = 15)
    @ApiModelProperty(value = "地址编码")
    private java.lang.String dzbm;
	/**辖区派出所*/
	@Excel(name = "辖区派出所", width = 15)
    @ApiModelProperty(value = "辖区派出所")
    private java.lang.String xqpcs;
	/**辖区县级公安机关*/
	@Excel(name = "辖区县级公安机关", width = 15)
    @ApiModelProperty(value = "辖区县级公安机关")
    private java.lang.String xqxianjga;
	/**辖区市级公安机关*/
	@Excel(name = "辖区市级公安机关", width = 15)
    @ApiModelProperty(value = "辖区市级公安机关")
    private java.lang.String xqshijga;
	/**辖区派出所编号*/
	@Excel(name = "辖区派出所编号", width = 15)
    @ApiModelProperty(value = "辖区派出所编号")
    private java.lang.String xqpcsbh;
}
