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
 * @Description: 涉稳情报信息
 * @Author: jeecg-boot
 * @Date:   2020-03-13
 * @Version: V1.0
 */
@Data
@TableName("qb_zdasjqbxx")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="qb_zdasjqbxx对象", description="涉稳情报信息")
public class QbZdasjqbxx implements Serializable {
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
	/**五华类型1*/
	@Excel(name = "五华类型1", width = 15)
    @ApiModelProperty(value = "五华类型1")
    private java.lang.String whlx1;
	/**五华类型3*/
	@Excel(name = "五华类型3", width = 15)
    @ApiModelProperty(value = "五华类型3")
    private java.lang.String whlx3;
	/**五华类型5*/
	@Excel(name = "五华类型5", width = 15)
    @ApiModelProperty(value = "五华类型5")
    private java.lang.String whlx5;
	/**五华类型7*/
	@Excel(name = "五华类型7", width = 15)
    @ApiModelProperty(value = "五华类型7")
    private java.lang.String whlx7;
	/**表现形式*/
	@Excel(name = "表现形式", width = 15)
    @ApiModelProperty(value = "表现形式")
    private java.lang.String bxxslx1;
	/**信息种类*/
	@Excel(name = "信息种类", width = 15)
    @ApiModelProperty(value = "信息种类")
    private java.lang.String bxxslx3;
	/**变形形式5*/
	@Excel(name = "变形形式5", width = 15)
    @ApiModelProperty(value = "变形形式5")
    private java.lang.String bxxslx5;
	/**上报时间*/
	@Excel(name = "上报时间", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @ApiModelProperty(value = "上报时间")
    private java.util.Date sbsj;
	/**标题*/
	@Excel(name = "标题", width = 15)
    @ApiModelProperty(value = "标题")
    private java.lang.String bt;
	/**详细内容*/
	@Excel(name = "详细内容", width = 15)
    @ApiModelProperty(value = "详细内容")
    private java.lang.String xxnr;
	/**发起时间*/
	@Excel(name = "发起时间", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @ApiModelProperty(value = "发起时间")
    private java.util.Date fssj;
	/**离开时间*/
	@Excel(name = "离开时间", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @ApiModelProperty(value = "离开时间")
    private java.util.Date lksj;
	/**持续时间*/
	@Excel(name = "持续时间", width = 15)
    @ApiModelProperty(value = "持续时间")
    private java.lang.Double cxsj;
	/**总人数*/
	@Excel(name = "总人数", width = 15)
    @ApiModelProperty(value = "总人数")
    private java.lang.Integer zrs;
	/**事由*/
	@Excel(name = "事由", width = 15)
    @ApiModelProperty(value = "事由")
    private java.lang.String sy;
	/**辖区*/
	@Excel(name = "辖区", width = 15)
    @ApiModelProperty(value = "辖区")
    private java.lang.String xq;
	/**地点*/
	@Excel(name = "地点", width = 15)
    @ApiModelProperty(value = "地点")
    private java.lang.String dd;
	/**人员结构*/
	@Excel(name = "人员结构", width = 15)
    @ApiModelProperty(value = "人员结构")
    private java.lang.String ryjg;
	/**是否过激*/
	@Excel(name = "是否过激", width = 15)
    @ApiModelProperty(value = "是否过激")
    private java.lang.String sfgj;
	/**出动警力数*/
	@Excel(name = "出动警力数", width = 15)
    @ApiModelProperty(value = "出动警力数")
    private java.lang.String cdjls;
	/**未用1*/
	@Excel(name = "未用1", width = 15)
    @ApiModelProperty(value = "未用1")
    private java.lang.Integer sfshezfrs;
	/**未用2*/
	@Excel(name = "未用2", width = 15)
    @ApiModelProperty(value = "未用2")
    private java.lang.Integer sfshizfrs;
	/**未用3*/
	@Excel(name = "未用3", width = 15)
    @ApiModelProperty(value = "未用3")
    private java.lang.Integer sfqzfrs;
	/**未用4*/
	@Excel(name = "未用4", width = 15)
    @ApiModelProperty(value = "未用4")
    private java.lang.Integer sfzgdwrs;
	/**未用5*/
	@Excel(name = "未用5", width = 15)
    @ApiModelProperty(value = "未用5")
    private java.lang.Integer sfrybq;
	/**未用6*/
	@Excel(name = "未用6", width = 15)
    @ApiModelProperty(value = "未用6")
    private java.lang.Integer sfrywq;
	/**民警id*/
	@Excel(name = "民警id", width = 15)
    @ApiModelProperty(value = "民警id")
    private java.lang.String lrmjbh;
	/**民警账号*/
	@Excel(name = "民警账号", width = 15)
    @ApiModelProperty(value = "民警账号")
    private java.lang.String lrmjzh;
	/**录入时间*/
	@Excel(name = "录入时间", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @ApiModelProperty(value = "录入时间")
    private java.util.Date lrsj;
	/**最后修改时间*/
	@Excel(name = "最后修改时间", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @ApiModelProperty(value = "最后修改时间")
    private java.util.Date zhxgsj;
	/**备注*/
	@Excel(name = "备注", width = 15)
    @ApiModelProperty(value = "备注")
    private java.lang.String bz;
	/**群体*/
	@Excel(name = "群体", width = 15)
    @ApiModelProperty(value = "群体")
    private java.lang.String qunt;
	/**应用效能*/
	@Excel(name = "应用效能", width = 15)
    @ApiModelProperty(value = "应用效能")
    private java.lang.String yyxn;
	/**jjxd*/
	@Excel(name = "jjxd", width = 15)
    @ApiModelProperty(value = "jjxd")
    private java.lang.String jjcd;
	/**是否续报*/
	@Excel(name = "是否续报", width = 15)
    @ApiModelProperty(value = "是否续报")
    private java.lang.String sfxb;
	/**过激行为*/
	@Excel(name = "过激行为", width = 15)
    @ApiModelProperty(value = "过激行为")
    private java.lang.String gjxw;
	/**ccss*/
	@Excel(name = "ccss", width = 15)
    @ApiModelProperty(value = "ccss")
    private java.lang.String ccss;
	/**受伤人数*/
	@Excel(name = "受伤人数", width = 15)
    @ApiModelProperty(value = "受伤人数")
    private java.lang.Integer ssrs;
	/**死亡人数*/
	@Excel(name = "死亡人数", width = 15)
    @ApiModelProperty(value = "死亡人数")
    private java.lang.String swrs;
	/**预警时间*/
	@Excel(name = "预警时间", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @ApiModelProperty(value = "预警时间")
    private java.util.Date yjsj;
	/**上报至单位*/
	@Excel(name = "上报至单位", width = 15)
    @ApiModelProperty(value = "上报至单位")
    private java.lang.String sbzdw;
	/**预警是否发生*/
	@Excel(name = "预警是否发生", width = 15)
    @ApiModelProperty(value = "预警是否发生")
    private java.lang.String yjsffs;
	/**ybsd*/
	@Excel(name = "ybsd", width = 15)
    @ApiModelProperty(value = "ybsd")
    private java.lang.String ybsd;
	/**省厅业务大类*/
	@Excel(name = "省厅业务大类", width = 15)
    @ApiModelProperty(value = "省厅业务大类")
    private java.lang.String stxxlx1;
	/**stxxlx3*/
	@Excel(name = "stxxlx3", width = 15)
    @ApiModelProperty(value = "stxxlx3")
    private java.lang.String stxxlx3;
	/**stxxlx3*/
	@Excel(name = "stxxlx3", width = 15)
    @ApiModelProperty(value = "stxxlx3")
    private java.lang.String stxxlx5;
	/**区内区外*/
	@Excel(name = "区内区外", width = 15)
    @ApiModelProperty(value = "区内区外")
    private java.lang.String ddlx;
	/**其他地点*/
	@Excel(name = "其他地点", width = 15)
    @ApiModelProperty(value = "其他地点")
    private java.lang.String ddqt;
	/**标签1*/
	@Excel(name = "标签1", width = 15)
    @ApiModelProperty(value = "标签1")
    private java.lang.String bq1;
	/**标签2*/
	@Excel(name = "标签2", width = 15)
    @ApiModelProperty(value = "标签2")
    private java.lang.String bq2;
	/**标签3*/
	@Excel(name = "标签3", width = 15)
    @ApiModelProperty(value = "标签3")
    private java.lang.String bq3;
	/**统计量1*/
	@Excel(name = "统计量1", width = 15)
    @ApiModelProperty(value = "统计量1")
    private java.lang.String tjl1;
	/**统计量2*/
	@Excel(name = "统计量2", width = 15)
    @ApiModelProperty(value = "统计量2")
    private java.lang.String tjl2;
	/**统计量3*/
	@Excel(name = "统计量3", width = 15)
    @ApiModelProperty(value = "统计量3")
    private java.lang.String tjl3;
	/**录入部门id*/
	@Excel(name = "录入部门id", width = 15)
    @ApiModelProperty(value = "录入部门id")
    private java.lang.String lrbmid;
	/**录入部门编码*/
	@Excel(name = "录入部门编码", width = 15)
    @ApiModelProperty(value = "录入部门编码")
    private java.lang.String lrbmbm;
	/**地址主键*/
	@Excel(name = "地址主键", width = 15)
    @ApiModelProperty(value = "地址主键")
    private java.lang.String dzbh;
	/**组织主键*/
	@Excel(name = "组织主键", width = 15)
    @ApiModelProperty(value = "组织主键")
    private java.lang.String zzbh;
	/**省厅地点类型编号*/
	@Excel(name = "省厅地点类型编号", width = 15)
    @ApiModelProperty(value = "省厅地点类型编号")
    private java.lang.String stsadd;
	/**省厅地点类型*/
	@Excel(name = "省厅地点类型", width = 15)
    @ApiModelProperty(value = "省厅地点类型")
    private java.lang.String stsaddn;
	/**省厅类别编号*/
	@Excel(name = "省厅类别编号", width = 15)
    @ApiModelProperty(value = "省厅类别编号")
    private java.lang.String stsslb;
	/**省厅类别*/
	@Excel(name = "省厅类别", width = 15)
    @ApiModelProperty(value = "省厅类别")
    private java.lang.String stsslbn;
	/**stsdlb*/
	@Excel(name = "stsdlb", width = 15)
    @ApiModelProperty(value = "stsdlb")
    private java.lang.String stsdlb;
	/**stsdlbn*/
	@Excel(name = "stsdlbn", width = 15)
    @ApiModelProperty(value = "stsdlbn")
    private java.lang.String stsdlbn;
	/**省厅表现形式*/
	@Excel(name = "省厅表现形式", width = 15)
    @ApiModelProperty(value = "省厅表现形式")
    private java.lang.String stbxxs;
	/**stbxxsn*/
	@Excel(name = "stbxxsn", width = 15)
    @ApiModelProperty(value = "stbxxsn")
    private java.lang.String stbxxsn;
	/**省厅涉事主体*/
	@Excel(name = "省厅涉事主体", width = 15)
    @ApiModelProperty(value = "省厅涉事主体")
    private java.lang.String stsszt;
	/**省厅涉事主体n*/
	@Excel(name = "省厅涉事主体n", width = 15)
    @ApiModelProperty(value = "省厅涉事主体n")
    private java.lang.String stssztn;
	/**省厅事件诱因*/
	@Excel(name = "省厅事件诱因", width = 15)
    @ApiModelProperty(value = "省厅事件诱因")
    private java.lang.String stsjyy;
	/**省厅事件诱因n*/
	@Excel(name = "省厅事件诱因n", width = 15)
    @ApiModelProperty(value = "省厅事件诱因n")
    private java.lang.String stsjyyn;
	/**省厅人数规模*/
	@Excel(name = "省厅人数规模", width = 15)
    @ApiModelProperty(value = "省厅人数规模")
    private java.lang.String strsgm;
	/**省厅人数规模n*/
	@Excel(name = "省厅人数规模n", width = 15)
    @ApiModelProperty(value = "省厅人数规模n")
    private java.lang.String strsgmn;
	/**省厅是否续报*/
	@Excel(name = "省厅是否续报", width = 15)
    @ApiModelProperty(value = "省厅是否续报")
    private java.lang.String stsfxb;
	/**省厅应用效能*/
	@Excel(name = "省厅应用效能", width = 15)
    @ApiModelProperty(value = "省厅应用效能")
    private java.lang.String styyxn;
	/**省厅总人数*/
	@Excel(name = "省厅总人数", width = 15)
    @ApiModelProperty(value = "省厅总人数")
    private java.lang.Integer stzrs;
	/**省厅损失金额*/
	@Excel(name = "省厅损失金额", width = 15)
    @ApiModelProperty(value = "省厅损失金额")
    private java.lang.Double stssje;
	/**省厅死亡人数*/
	@Excel(name = "省厅死亡人数", width = 15)
    @ApiModelProperty(value = "省厅死亡人数")
    private java.lang.Integer stswrs;
	/**省厅受伤人数*/
	@Excel(name = "省厅受伤人数", width = 15)
    @ApiModelProperty(value = "省厅受伤人数")
    private java.lang.Integer stssrs;
	/**stjjcd*/
	@Excel(name = "stjjcd", width = 15)
    @ApiModelProperty(value = "stjjcd")
    private java.lang.String stjjcd;
	/**stjjcdn*/
	@Excel(name = "stjjcdn", width = 15)
    @ApiModelProperty(value = "stjjcdn")
    private java.lang.String stjjcdn;
	/**styyxnn*/
	@Excel(name = "styyxnn", width = 15)
    @ApiModelProperty(value = "styyxnn")
    private java.lang.String styyxnn;
	/**infoid*/
	@Excel(name = "infoid", width = 15)
    @ApiModelProperty(value = "infoid")
    private java.lang.String infoid;
	/**信息状态*/
	@Excel(name = "信息状态", width = 15)
    @ApiModelProperty(value = "信息状态")
    private java.lang.String xxzt;
	/**来源编号*/
	@Excel(name = "来源编号", width = 15)
    @ApiModelProperty(value = "来源编号")
    private java.lang.String lybh;
	/**Y,已入库，其他未入库*/
	@Excel(name = "Y,已入库，其他未入库", width = 15)
    @ApiModelProperty(value = "Y,已入库，其他未入库")
    private java.lang.String rkbj;
	/**接收部门ID*/
	@Excel(name = "接收部门ID", width = 15)
    @ApiModelProperty(value = "接收部门ID")
    private java.lang.String jsbmid;
	/**接收人ID*/
	@Excel(name = "接收人ID", width = 15)
    @ApiModelProperty(value = "接收人ID")
    private java.lang.String jsrid;
	/**业务大类*/
	@Excel(name = "业务大类", width = 15)
    @ApiModelProperty(value = "业务大类")
    private java.lang.String ywdl;
	/**辖区派出所*/
	@Excel(name = "辖区派出所", width = 15)
    @ApiModelProperty(value = "辖区派出所")
    private java.lang.String xqpcsdm;
	/**采集人*/
	@Excel(name = "采集人", width = 15)
    @ApiModelProperty(value = "采集人")
    private java.lang.String cjr;
	/**审核人*/
	@Excel(name = "审核人", width = 15)
    @ApiModelProperty(value = "审核人")
    private java.lang.String shr;
	/**任务流转编号*/
	@Excel(name = "任务流转编号", width = 15)
    @ApiModelProperty(value = "任务流转编号")
    private java.lang.String rwlzbh;
	/**校对人*/
	@Excel(name = "校对人", width = 15)
    @ApiModelProperty(value = "校对人")
    private java.lang.String jdr;
	/**事件编号外键*/
	@Excel(name = "事件编号外键", width = 15)
    @ApiModelProperty(value = "事件编号外键")
    private java.lang.String swsjbh;
	/**信息来源类别*/
	@Excel(name = "信息来源类别", width = 15)
    @ApiModelProperty(value = "信息来源类别")
    private java.lang.String xxlylb;
	/**信息分发标记*/
	@Excel(name = "信息分发标记", width = 15)
    @ApiModelProperty(value = "信息分发标记")
    private java.lang.String xxffbj;
	/**快报标记*/
	@Excel(name = "快报标记", width = 15)
    @ApiModelProperty(value = "快报标记")
    private java.lang.String kbbj;
}
