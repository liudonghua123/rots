package org.jeecg.modules.xs.entity;

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
 * @Description: 线索附件
 * @Author: jeecg-boot
 * @Date: 2020-02-26
 * @Version: V1.0
 */
@ApiModel(value = "qb_swxszb对象", description = "线索")
@Data
@TableName("qb_swxszbfj")
public class QbSwxszbfj implements Serializable {
	private static final long serialVersionUID = 1L;

	/** id */
	@TableId(type = IdType.ID_WORKER_STR)
	@ApiModelProperty(value = "id")
	private java.lang.String id;
	/** 文件路劲 */
	@Excel(name = "文件路劲", width = 15)
	@ApiModelProperty(value = "文件路劲")
	private java.lang.String wjlj;
	/** 附件名称 */
	@Excel(name = "附件名称", width = 15)
	@ApiModelProperty(value = "附件名称")
	private java.lang.String fjmc;
	/** 附件上传时间 */
	@Excel(name = "附件上传时间", width = 20, format = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@ApiModelProperty(value = "附件上传时间")
	private java.util.Date fjscsj;
	/** 线索主键 */
	@ApiModelProperty(value = "线索主键")
	private java.lang.String swxsbh;
	/** 上传设备编码 */
	@Excel(name = "上传设备编码", width = 15)
	@ApiModelProperty(value = "上传设备编码")
	private java.lang.String scsbbm;
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
}
