package org.jeecg.modules.xs.entity;

import java.io.Serializable;
import java.util.Date;
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

/**
 * @Description: 线索
 * @Author: jeecg-boot
 * @Date: 2020-02-26
 * @Version: V1.0
 */
@ApiModel(value = "qb_swxszb对象", description = "线索")
@Data
@TableName("qb_swxszb")
public class QbSwxszb implements Serializable {
    private static final long serialVersionUID = 1L;

    /** 线索主键 */
    @TableId(type = IdType.ID_WORKER_STR)
    @ApiModelProperty(value = "线索主键")
    private java.lang.String id;
    /** 线索标题 */
    @Excel(name = "线索标题", width = 15)
    @ApiModelProperty(value = "线索标题")
    private java.lang.String xsbt;
    /** 线索详情 */
    @Excel(name = "线索详情", width = 15)
    @ApiModelProperty(value = "线索详情")
    private java.lang.String xsxq;
    /** 地址编号 */
    @Excel(name = "地址编号", width = 15)
    @ApiModelProperty(value = "地址编号")
    private java.lang.String xsddbh;
    /** 地址名称 */
    @Excel(name = "地址名称", width = 15)
    @ApiModelProperty(value = "地址名称")
    private java.lang.String xsddmc;
    /** 采集时间 */
    @Excel(name = "采集时间", width = 15, format = "yyyy-MM-dd")
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @ApiModelProperty(value = "采集时间")
    private java.util.Date cjsj;
    /** 上传时间 */
    @Excel(name = "上传时间", width = 15, format = "yyyy-MM-dd")
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @ApiModelProperty(value = "上传时间")
    private java.util.Date scsj;
    /** 采集人编号 */
    @Excel(name = "采集人编号", width = 15)
    @ApiModelProperty(value = "采集人编号")
    private java.lang.String cjrbh;
    /** 采集部门编号 */
    @Excel(name = "采集部门编号", width = 15)
    @ApiModelProperty(value = "采集部门编号")
    private java.lang.String cjbmbh;
    /** 线索类型 */
    @Excel(name = "线索类型", width = 15)
    @ApiModelProperty(value = "线索类型")
    private java.lang.String xslx;
    /** 后台计算结果：危险等级 */
    @Excel(name = "后台计算结果：危险等级", width = 15)
    @ApiModelProperty(value = "后台计算结果：危险等级")
    private java.lang.String wxdj;
    /** 后台计算结果：提示详情 */
    @Excel(name = "后台计算结果：提示详情", width = 15)
    @ApiModelProperty(value = "后台计算结果：提示详情")
    private java.lang.String tsxq;
    /** 后台比对标记：Y是，N否 */
    @Excel(name = "后台比对标记：Y是，N否", width = 15)
    @ApiModelProperty(value = "后台比对标记：Y是，N否")
    private java.lang.String htbdbj;
    /** 涉稳事件编号 */
    @Excel(name = "涉稳事件编号", width = 36)
    @ApiModelProperty(value = "涉稳事件编号")
    private java.lang.String swsjbh;
    /** 信息编号 */
    @Excel(name = "信息编号", width = 36)
    @ApiModelProperty(value = "信息编号")
    private java.lang.String zdasjqbxxbh;
    /** 创建人登录名称 */
    @Excel(name = "创建人登录名称", width = 15)
    @ApiModelProperty(value = "创建人登录名称")
    private java.lang.String createBy;
    /** 创建日期 */
    @Excel(name = "创建日期", width = 15, format = "yyyy-MM-dd")
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @ApiModelProperty(value = "创建日期")
    private java.util.Date createTime;
    /** 更新人登录名称 */
    @Excel(name = "更新人登录名称", width = 15)
    @ApiModelProperty(value = "更新人登录名称")
    private java.lang.String updateBy;
    /** 更新日期 */
    @Excel(name = "更新日期", width = 15, format = "yyyy-MM-dd")
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @ApiModelProperty(value = "更新日期")
    private java.util.Date updateTime;
    /** 任务id */
    @Excel(name = "任务id", width = 36)
    @ApiModelProperty(value = "任务id")
    private java.lang.String rwid;
    /** 封面媒体路劲 */
    @Excel(name = "封面媒体路劲", width = 255)
    @ApiModelProperty(value = "封面媒体路劲")
    private java.lang.String fmmtlj;
    /** 附加信息 */
    @Excel(name = "附加信息", width = 255)
    @ApiModelProperty(value = "附加信息")
    private java.lang.String fjxx;

    @Excel(name = "手机号", width = 50)
    @ApiModelProperty(value = "手机号")
    private java.lang.String sjh;
}
