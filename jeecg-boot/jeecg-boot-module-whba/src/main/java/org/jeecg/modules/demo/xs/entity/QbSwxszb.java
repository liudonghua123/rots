package org.jeecg.modules.demo.xs.entity;

import java.io.Serializable;
import java.util.Date;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * @Description: 线索
 * @Author: jeecg-boot
 * @Date:   2020-02-11
 * @Version: V1.0
 */
@Data
@TableName("qb_swxszb")
public class QbSwxszb implements Serializable {
    private static final long serialVersionUID = 1L;
    
	/**线索主键*/
	@TableId(type = IdType.ID_WORKER_STR)
    private java.lang.String id;
	/**线索标题*/
    private java.lang.String xsbt;
	/**线索详情*/
    private java.lang.String xsxq;
	/**地址编号*/
    private java.lang.String xsddbh;
	/**地址名称*/
    private java.lang.String xsddmc;
	/**采集时间*/
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private java.util.Date cjsj;
	/**上传时间*/
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private java.util.Date scsj;
	/**采集人编号*/
    private java.lang.String cjrbh;
	/**采集部门编号*/
    private java.lang.String cjbmbh;
	/**线索类型*/
    private java.lang.String xslx;
	/**后台计算结果：危险等级*/
    private java.lang.String wxdj;
	/**后台计算结果：提示详情*/
    private java.lang.String tsxq;
	/**后台比对标记：Y是，N否*/
    private java.lang.String htbdbj;
	/**涉稳事件编号*/
    private java.lang.String swsjbh;
	/**信息编号*/
    private java.lang.String zdasjqbxxbh;
	/**创建人登录名称*/
    private java.lang.String createBy;
	/**创建日期*/
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private java.util.Date createTime;
	/**更新人登录名称*/
    private java.lang.String updateBy;
	/**更新日期*/
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private java.util.Date updateTime;
}
