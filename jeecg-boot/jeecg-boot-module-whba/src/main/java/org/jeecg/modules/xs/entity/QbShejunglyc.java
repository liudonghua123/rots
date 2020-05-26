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
 * @Description: 涉军概率预测
 * @Author: jeecg-boot
 * @Date: 2020-05-23
 * @Version: V1.0
 */
@Data
@TableName("qb_shejunglyc")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value = "qb_shejunglyc对象", description = "涉军概率预测")
public class QbShejunglyc implements Serializable {
    private static final long serialVersionUID = 1L;

    /** 主键 */
    @TableId(type = IdType.ID_WORKER_STR)
    @ApiModelProperty(value = "主键")
    private java.lang.String id;
    /** 创建人 */
    @Excel(name = "创建人", width = 15)
    @ApiModelProperty(value = "创建人")
    private java.lang.String createBy;
    /** 创建日期 */
    @Excel(name = "创建日期", width = 20, format = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value = "创建日期")
    private java.util.Date createTime;
    /** 更新人 */
    @Excel(name = "更新人", width = 15)
    @ApiModelProperty(value = "更新人")
    private java.lang.String updateBy;
    /** 更新日期 */
    @Excel(name = "更新日期", width = 20, format = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value = "更新日期")
    private java.util.Date updateTime;
    /** 所属部门 */
    @Excel(name = "所属部门", width = 15)
    @ApiModelProperty(value = "所属部门")
    private java.lang.String sysOrgCode;
    /** cecos */
    @Excel(name = "cecos", width = 15)
    @ApiModelProperty(value = "cecos")
    private java.lang.String cecos;
    /** city */
    @Excel(name = "city", width = 15)
    @ApiModelProperty(value = "city")
    private java.lang.String city;
    /** imeilast */
    @Excel(name = "imeilast", width = 15)
    @ApiModelProperty(value = "imeilast")
    private java.lang.String imeilast;
    /** isfocal */
    @Excel(name = "isfocal", width = 15)
    @ApiModelProperty(value = "isfocal")
    private java.lang.String isfocal;
    /** istw */
    @Excel(name = "istw", width = 15)
    @ApiModelProperty(value = "istw")
    private java.lang.String istw;
    /** isleave */
    @Excel(name = "isleave", width = 15)
    @ApiModelProperty(value = "isleave")
    private java.lang.String isleave;
    /** jzdcode */
    @Excel(name = "jzdcode", width = 15)
    @ApiModelProperty(value = "jzdcode")
    private java.lang.String jzdcode;
    /** lastareacode */
    @Excel(name = "lastareacode", width = 15)
    @ApiModelProperty(value = "lastareacode")
    private java.lang.String lastareacode;
    /** mobile */
    @Excel(name = "mobile", width = 15)
    @ApiModelProperty(value = "mobile")
    private java.lang.String mobile;
    /** oftenaddr */
    @Excel(name = "oftenaddr", width = 15)
    @ApiModelProperty(value = "oftenaddr")
    private java.lang.String oftenaddr;
    /** qqaccount */
    @Excel(name = "qqaccount", width = 15)
    @ApiModelProperty(value = "qqaccount")
    private java.lang.String qqaccount;
    /** score */
    @Excel(name = "score", width = 15)
    @ApiModelProperty(value = "score")
    private java.lang.Double score;
    /** sexstr */
    @Excel(name = "sexstr", width = 15)
    @ApiModelProperty(value = "sexstr")
    private java.lang.String sexstr;
    /** petiton */
    @Excel(name = "petiton", width = 15)
    @ApiModelProperty(value = "petiton")
    private java.lang.Integer petiton;
    /** weixinaccount */
    @Excel(name = "weixinaccount", width = 15)
    @ApiModelProperty(value = "weixinaccount")
    private java.lang.String weixinaccount;
    /** xm */
    @Excel(name = "xm", width = 15)
    @ApiModelProperty(value = "xm")
    private java.lang.String xm;
}
