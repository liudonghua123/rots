<template>
  <a-drawer
    :title="title"
    :width="width"
    placement="right"
    :closable="false"
    @close="close"
    :visible="visible">
  
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">

        <a-form-item label="五华类型1" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'whlx1', validatorRules.whlx1]" placeholder="请输入五华类型1"></a-input>
        </a-form-item>
        <a-form-item label="五华类型3" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'whlx3', validatorRules.whlx3]" placeholder="请输入五华类型3"></a-input>
        </a-form-item>
        <a-form-item label="五华类型5" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'whlx5', validatorRules.whlx5]" placeholder="请输入五华类型5"></a-input>
        </a-form-item>
        <a-form-item label="五华类型7" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'whlx7', validatorRules.whlx7]" placeholder="请输入五华类型7"></a-input>
        </a-form-item>
        <a-form-item label="表现形式" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'bxxslx1', validatorRules.bxxslx1]" placeholder="请输入表现形式"></a-input>
        </a-form-item>
        <a-form-item label="信息种类" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'bxxslx3', validatorRules.bxxslx3]" placeholder="请输入信息种类"></a-input>
        </a-form-item>
        <a-form-item label="变形形式5" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'bxxslx5', validatorRules.bxxslx5]" placeholder="请输入变形形式5"></a-input>
        </a-form-item>
        <a-form-item label="上报时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择上报时间" v-decorator="[ 'sbsj', validatorRules.sbsj]" :trigger-change="true" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="标题" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'bt', validatorRules.bt]" placeholder="请输入标题"></a-input>
        </a-form-item>
        <a-form-item label="详细内容" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'xxnr', validatorRules.xxnr]" placeholder="请输入详细内容"></a-input>
        </a-form-item>
        <a-form-item label="发起时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择发起时间" v-decorator="[ 'fssj', validatorRules.fssj]" :trigger-change="true" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="离开时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择离开时间" v-decorator="[ 'lksj', validatorRules.lksj]" :trigger-change="true" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="持续时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'cxsj', validatorRules.cxsj]" placeholder="请输入持续时间" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="总人数" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'zrs', validatorRules.zrs]" placeholder="请输入总人数" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="事由" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'sy', validatorRules.sy]" placeholder="请输入事由"></a-input>
        </a-form-item>
        <a-form-item label="辖区" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'xq', validatorRules.xq]" placeholder="请输入辖区"></a-input>
        </a-form-item>
        <a-form-item label="地点" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'dd', validatorRules.dd]" placeholder="请输入地点"></a-input>
        </a-form-item>
        <a-form-item label="人员结构" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'ryjg', validatorRules.ryjg]" placeholder="请输入人员结构"></a-input>
        </a-form-item>
        <a-form-item label="是否过激" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'sfgj', validatorRules.sfgj]" placeholder="请输入是否过激"></a-input>
        </a-form-item>
        <a-form-item label="出动警力数" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'cdjls', validatorRules.cdjls]" placeholder="请输入出动警力数"></a-input>
        </a-form-item>
        <a-form-item label="未用1" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'sfshezfrs', validatorRules.sfshezfrs]" placeholder="请输入未用1" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="未用2" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'sfshizfrs', validatorRules.sfshizfrs]" placeholder="请输入未用2" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="未用3" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'sfqzfrs', validatorRules.sfqzfrs]" placeholder="请输入未用3" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="未用4" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'sfzgdwrs', validatorRules.sfzgdwrs]" placeholder="请输入未用4" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="未用5" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'sfrybq', validatorRules.sfrybq]" placeholder="请输入未用5" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="未用6" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'sfrywq', validatorRules.sfrywq]" placeholder="请输入未用6" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="民警id" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'lrmjbh', validatorRules.lrmjbh]" placeholder="请输入民警id"></a-input>
        </a-form-item>
        <a-form-item label="民警账号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'lrmjzh', validatorRules.lrmjzh]" placeholder="请输入民警账号"></a-input>
        </a-form-item>
        <a-form-item label="录入时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择录入时间" v-decorator="[ 'lrsj', validatorRules.lrsj]" :trigger-change="true" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="最后修改时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择最后修改时间" v-decorator="[ 'zhxgsj', validatorRules.zhxgsj]" :trigger-change="true" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="备注" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'bz', validatorRules.bz]" placeholder="请输入备注"></a-input>
        </a-form-item>
        <a-form-item label="群体" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'qunt', validatorRules.qunt]" placeholder="请输入群体"></a-input>
        </a-form-item>
        <a-form-item label="应用效能" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'yyxn', validatorRules.yyxn]" placeholder="请输入应用效能"></a-input>
        </a-form-item>
        <a-form-item label="jjxd" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'jjcd', validatorRules.jjcd]" placeholder="请输入jjxd"></a-input>
        </a-form-item>
        <a-form-item label="是否续报" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'sfxb', validatorRules.sfxb]" placeholder="请输入是否续报"></a-input>
        </a-form-item>
        <a-form-item label="过激行为" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'gjxw', validatorRules.gjxw]" placeholder="请输入过激行为"></a-input>
        </a-form-item>
        <a-form-item label="ccss" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'ccss', validatorRules.ccss]" placeholder="请输入ccss"></a-input>
        </a-form-item>
        <a-form-item label="受伤人数" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'ssrs', validatorRules.ssrs]" placeholder="请输入受伤人数" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="死亡人数" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'swrs', validatorRules.swrs]" placeholder="请输入死亡人数"></a-input>
        </a-form-item>
        <a-form-item label="预警时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择预警时间" v-decorator="[ 'yjsj', validatorRules.yjsj]" :trigger-change="true" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="上报至单位" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'sbzdw', validatorRules.sbzdw]" placeholder="请输入上报至单位"></a-input>
        </a-form-item>
        <a-form-item label="预警是否发生" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'yjsffs', validatorRules.yjsffs]" placeholder="请输入预警是否发生"></a-input>
        </a-form-item>
        <a-form-item label="ybsd" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'ybsd', validatorRules.ybsd]" placeholder="请输入ybsd"></a-input>
        </a-form-item>
        <a-form-item label="省厅业务大类" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'stxxlx1', validatorRules.stxxlx1]" placeholder="请输入省厅业务大类"></a-input>
        </a-form-item>
        <a-form-item label="stxxlx3" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'stxxlx3', validatorRules.stxxlx3]" placeholder="请输入stxxlx3"></a-input>
        </a-form-item>
        <a-form-item label="stxxlx3" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'stxxlx5', validatorRules.stxxlx5]" placeholder="请输入stxxlx3"></a-input>
        </a-form-item>
        <a-form-item label="区内区外" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'ddlx', validatorRules.ddlx]" placeholder="请输入区内区外"></a-input>
        </a-form-item>
        <a-form-item label="其他地点" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'ddqt', validatorRules.ddqt]" placeholder="请输入其他地点"></a-input>
        </a-form-item>
        <a-form-item label="标签1" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'bq1', validatorRules.bq1]" placeholder="请输入标签1"></a-input>
        </a-form-item>
        <a-form-item label="标签2" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'bq2', validatorRules.bq2]" placeholder="请输入标签2"></a-input>
        </a-form-item>
        <a-form-item label="标签3" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'bq3', validatorRules.bq3]" placeholder="请输入标签3"></a-input>
        </a-form-item>
        <a-form-item label="统计量1" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'tjl1', validatorRules.tjl1]" placeholder="请输入统计量1"></a-input>
        </a-form-item>
        <a-form-item label="统计量2" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'tjl2', validatorRules.tjl2]" placeholder="请输入统计量2"></a-input>
        </a-form-item>
        <a-form-item label="统计量3" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'tjl3', validatorRules.tjl3]" placeholder="请输入统计量3"></a-input>
        </a-form-item>
        <a-form-item label="录入部门id" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'lrbmid', validatorRules.lrbmid]" placeholder="请输入录入部门id"></a-input>
        </a-form-item>
        <a-form-item label="录入部门编码" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'lrbmbm', validatorRules.lrbmbm]" placeholder="请输入录入部门编码"></a-input>
        </a-form-item>
        <a-form-item label="地址主键" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'dzbh', validatorRules.dzbh]" placeholder="请输入地址主键"></a-input>
        </a-form-item>
        <a-form-item label="组织主键" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'zzbh', validatorRules.zzbh]" placeholder="请输入组织主键"></a-input>
        </a-form-item>
        <a-form-item label="省厅地点类型编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'stsadd', validatorRules.stsadd]" placeholder="请输入省厅地点类型编号"></a-input>
        </a-form-item>
        <a-form-item label="省厅地点类型" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'stsaddn', validatorRules.stsaddn]" placeholder="请输入省厅地点类型"></a-input>
        </a-form-item>
        <a-form-item label="省厅类别编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'stsslb', validatorRules.stsslb]" placeholder="请输入省厅类别编号"></a-input>
        </a-form-item>
        <a-form-item label="省厅类别" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'stsslbn', validatorRules.stsslbn]" placeholder="请输入省厅类别"></a-input>
        </a-form-item>
        <a-form-item label="stsdlb" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'stsdlb', validatorRules.stsdlb]" placeholder="请输入stsdlb"></a-input>
        </a-form-item>
        <a-form-item label="stsdlbn" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'stsdlbn', validatorRules.stsdlbn]" placeholder="请输入stsdlbn"></a-input>
        </a-form-item>
        <a-form-item label="省厅表现形式" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'stbxxs', validatorRules.stbxxs]" placeholder="请输入省厅表现形式"></a-input>
        </a-form-item>
        <a-form-item label="stbxxsn" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'stbxxsn', validatorRules.stbxxsn]" placeholder="请输入stbxxsn"></a-input>
        </a-form-item>
        <a-form-item label="省厅涉事主体" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'stsszt', validatorRules.stsszt]" placeholder="请输入省厅涉事主体"></a-input>
        </a-form-item>
        <a-form-item label="省厅涉事主体n" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'stssztn', validatorRules.stssztn]" placeholder="请输入省厅涉事主体n"></a-input>
        </a-form-item>
        <a-form-item label="省厅事件诱因" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'stsjyy', validatorRules.stsjyy]" placeholder="请输入省厅事件诱因"></a-input>
        </a-form-item>
        <a-form-item label="省厅事件诱因n" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'stsjyyn', validatorRules.stsjyyn]" placeholder="请输入省厅事件诱因n"></a-input>
        </a-form-item>
        <a-form-item label="省厅人数规模" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'strsgm', validatorRules.strsgm]" placeholder="请输入省厅人数规模"></a-input>
        </a-form-item>
        <a-form-item label="省厅人数规模n" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'strsgmn', validatorRules.strsgmn]" placeholder="请输入省厅人数规模n"></a-input>
        </a-form-item>
        <a-form-item label="省厅是否续报" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'stsfxb', validatorRules.stsfxb]" placeholder="请输入省厅是否续报"></a-input>
        </a-form-item>
        <a-form-item label="省厅应用效能" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'styyxn', validatorRules.styyxn]" placeholder="请输入省厅应用效能"></a-input>
        </a-form-item>
        <a-form-item label="省厅总人数" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'stzrs', validatorRules.stzrs]" placeholder="请输入省厅总人数" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="省厅损失金额" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'stssje', validatorRules.stssje]" placeholder="请输入省厅损失金额" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="省厅死亡人数" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'stswrs', validatorRules.stswrs]" placeholder="请输入省厅死亡人数" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="省厅受伤人数" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'stssrs', validatorRules.stssrs]" placeholder="请输入省厅受伤人数" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="stjjcd" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'stjjcd', validatorRules.stjjcd]" placeholder="请输入stjjcd"></a-input>
        </a-form-item>
        <a-form-item label="stjjcdn" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'stjjcdn', validatorRules.stjjcdn]" placeholder="请输入stjjcdn"></a-input>
        </a-form-item>
        <a-form-item label="styyxnn" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'styyxnn', validatorRules.styyxnn]" placeholder="请输入styyxnn"></a-input>
        </a-form-item>
        <a-form-item label="infoid" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'infoid', validatorRules.infoid]" placeholder="请输入infoid"></a-input>
        </a-form-item>
        <a-form-item label="信息状态" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'xxzt', validatorRules.xxzt]" placeholder="请输入信息状态"></a-input>
        </a-form-item>
        <a-form-item label="来源编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'lybh', validatorRules.lybh]" placeholder="请输入来源编号"></a-input>
        </a-form-item>
        <a-form-item label="Y,已入库，其他未入库" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'rkbj', validatorRules.rkbj]" placeholder="请输入Y,已入库，其他未入库"></a-input>
        </a-form-item>
        <a-form-item label="接收部门ID" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'jsbmid', validatorRules.jsbmid]" placeholder="请输入接收部门ID"></a-input>
        </a-form-item>
        <a-form-item label="接收人ID" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'jsrid', validatorRules.jsrid]" placeholder="请输入接收人ID"></a-input>
        </a-form-item>
        <a-form-item label="业务大类" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'ywdl', validatorRules.ywdl]" placeholder="请输入业务大类"></a-input>
        </a-form-item>
        <a-form-item label="辖区派出所" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'xqpcsdm', validatorRules.xqpcsdm]" placeholder="请输入辖区派出所"></a-input>
        </a-form-item>
        <a-form-item label="采集人" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'cjr', validatorRules.cjr]" placeholder="请输入采集人"></a-input>
        </a-form-item>
        <a-form-item label="审核人" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'shr', validatorRules.shr]" placeholder="请输入审核人"></a-input>
        </a-form-item>
        <a-form-item label="任务流转编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'rwlzbh', validatorRules.rwlzbh]" placeholder="请输入任务流转编号"></a-input>
        </a-form-item>
        <a-form-item label="校对人" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'jdr', validatorRules.jdr]" placeholder="请输入校对人"></a-input>
        </a-form-item>
        <a-form-item label="事件编号外键" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'swsjbh', validatorRules.swsjbh]" placeholder="请输入事件编号外键"></a-input>
        </a-form-item>
        <a-form-item label="信息来源类别" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'xxlylb', validatorRules.xxlylb]" placeholder="请输入信息来源类别"></a-input>
        </a-form-item>
        <a-form-item label="信息分发标记" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'xxffbj', validatorRules.xxffbj]" placeholder="请输入信息分发标记"></a-input>
        </a-form-item>
        <a-form-item label="快报标记" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'kbbj', validatorRules.kbbj]" placeholder="请输入快报标记"></a-input>
        </a-form-item>
        
      </a-form>
    </a-spin>
    <a-button type="primary" @click="handleOk">确定</a-button>
    <a-button type="primary" @click="handleCancel">取消</a-button>
  </a-drawer>
</template>

<script>

  import { httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import { validateDuplicateValue } from '@/utils/util'
  import JDate from '@/components/jeecg/JDate'  
  
  export default {
    name: "QbZdasjqbxxModal",
    components: { 
      JDate,
    },
    data () {
      return {
        form: this.$form.createForm(this),
        title:"操作",
        width:800,
        visible: false,
        model: {},
        labelCol: {
          xs: { span: 24 },
          sm: { span: 5 },
        },
        wrapperCol: {
          xs: { span: 24 },
          sm: { span: 16 },
        },
        confirmLoading: false,
        validatorRules: {
          whlx1: {rules: [
          ]},
          whlx3: {rules: [
          ]},
          whlx5: {rules: [
          ]},
          whlx7: {rules: [
          ]},
          bxxslx1: {rules: [
          ]},
          bxxslx3: {rules: [
          ]},
          bxxslx5: {rules: [
          ]},
          sbsj: {rules: [
          ]},
          bt: {rules: [
          ]},
          xxnr: {rules: [
          ]},
          fssj: {rules: [
          ]},
          lksj: {rules: [
          ]},
          cxsj: {rules: [
          ]},
          zrs: {rules: [
          ]},
          sy: {rules: [
          ]},
          xq: {rules: [
          ]},
          dd: {rules: [
          ]},
          ryjg: {rules: [
          ]},
          sfgj: {rules: [
          ]},
          cdjls: {rules: [
          ]},
          sfshezfrs: {rules: [
          ]},
          sfshizfrs: {rules: [
          ]},
          sfqzfrs: {rules: [
          ]},
          sfzgdwrs: {rules: [
          ]},
          sfrybq: {rules: [
          ]},
          sfrywq: {rules: [
          ]},
          lrmjbh: {rules: [
          ]},
          lrmjzh: {rules: [
          ]},
          lrsj: {rules: [
          ]},
          zhxgsj: {rules: [
          ]},
          bz: {rules: [
          ]},
          qunt: {rules: [
          ]},
          yyxn: {rules: [
          ]},
          jjcd: {rules: [
          ]},
          sfxb: {rules: [
          ]},
          gjxw: {rules: [
          ]},
          ccss: {rules: [
          ]},
          ssrs: {rules: [
          ]},
          swrs: {rules: [
          ]},
          yjsj: {rules: [
          ]},
          sbzdw: {rules: [
          ]},
          yjsffs: {rules: [
          ]},
          ybsd: {rules: [
          ]},
          stxxlx1: {rules: [
          ]},
          stxxlx3: {rules: [
          ]},
          stxxlx5: {rules: [
          ]},
          ddlx: {rules: [
          ]},
          ddqt: {rules: [
          ]},
          bq1: {rules: [
          ]},
          bq2: {rules: [
          ]},
          bq3: {rules: [
          ]},
          tjl1: {rules: [
          ]},
          tjl2: {rules: [
          ]},
          tjl3: {rules: [
          ]},
          lrbmid: {rules: [
          ]},
          lrbmbm: {rules: [
          ]},
          dzbh: {rules: [
          ]},
          zzbh: {rules: [
          ]},
          stsadd: {rules: [
          ]},
          stsaddn: {rules: [
          ]},
          stsslb: {rules: [
          ]},
          stsslbn: {rules: [
          ]},
          stsdlb: {rules: [
          ]},
          stsdlbn: {rules: [
          ]},
          stbxxs: {rules: [
          ]},
          stbxxsn: {rules: [
          ]},
          stsszt: {rules: [
          ]},
          stssztn: {rules: [
          ]},
          stsjyy: {rules: [
          ]},
          stsjyyn: {rules: [
          ]},
          strsgm: {rules: [
          ]},
          strsgmn: {rules: [
          ]},
          stsfxb: {rules: [
          ]},
          styyxn: {rules: [
          ]},
          stzrs: {rules: [
          ]},
          stssje: {rules: [
          ]},
          stswrs: {rules: [
          ]},
          stssrs: {rules: [
          ]},
          stjjcd: {rules: [
          ]},
          stjjcdn: {rules: [
          ]},
          styyxnn: {rules: [
          ]},
          infoid: {rules: [
          ]},
          xxzt: {rules: [
          ]},
          lybh: {rules: [
          ]},
          rkbj: {rules: [
          ]},
          jsbmid: {rules: [
          ]},
          jsrid: {rules: [
          ]},
          ywdl: {rules: [
          ]},
          xqpcsdm: {rules: [
          ]},
          cjr: {rules: [
          ]},
          shr: {rules: [
          ]},
          rwlzbh: {rules: [
          ]},
          jdr: {rules: [
          ]},
          swsjbh: {rules: [
          ]},
          xxlylb: {rules: [
          ]},
          xxffbj: {rules: [
          ]},
          kbbj: {rules: [
          ]},
        },
        url: {
          add: "/xs/qbZdasjqbxx/add",
          edit: "/xs/qbZdasjqbxx/edit",
        }
      }
    },
    created () {
    },
    methods: {
      add () {
        this.edit({});
      },
      edit (record) {
        this.form.resetFields();
        this.model = Object.assign({}, record);
        this.visible = true;
        this.$nextTick(() => {
          this.form.setFieldsValue(pick(this.model,'whlx1','whlx3','whlx5','whlx7','bxxslx1','bxxslx3','bxxslx5','sbsj','bt','xxnr','fssj','lksj','cxsj','zrs','sy','xq','dd','ryjg','sfgj','cdjls','sfshezfrs','sfshizfrs','sfqzfrs','sfzgdwrs','sfrybq','sfrywq','lrmjbh','lrmjzh','lrsj','zhxgsj','bz','qunt','yyxn','jjcd','sfxb','gjxw','ccss','ssrs','swrs','yjsj','sbzdw','yjsffs','ybsd','stxxlx1','stxxlx3','stxxlx5','ddlx','ddqt','bq1','bq2','bq3','tjl1','tjl2','tjl3','lrbmid','lrbmbm','dzbh','zzbh','stsadd','stsaddn','stsslb','stsslbn','stsdlb','stsdlbn','stbxxs','stbxxsn','stsszt','stssztn','stsjyy','stsjyyn','strsgm','strsgmn','stsfxb','styyxn','stzrs','stssje','stswrs','stssrs','stjjcd','stjjcdn','styyxnn','infoid','xxzt','lybh','rkbj','jsbmid','jsrid','ywdl','xqpcsdm','cjr','shr','rwlzbh','jdr','swsjbh','xxlylb','xxffbj','kbbj'))
        })
      },
      close () {
        this.$emit('close');
        this.visible = false;
      },
      handleOk () {
        const that = this;
        // 触发表单验证
        this.form.validateFields((err, values) => {
          if (!err) {
            that.confirmLoading = true;
            let httpurl = '';
            let method = '';
            if(!this.model.id){
              httpurl+=this.url.add;
              method = 'post';
            }else{
              httpurl+=this.url.edit;
               method = 'put';
            }
            let formData = Object.assign(this.model, values);
            console.log("表单提交数据",formData)
            httpAction(httpurl,formData,method).then((res)=>{
              if(res.success){
                that.$message.success(res.message);
                that.$emit('ok');
              }else{
                that.$message.warning(res.message);
              }
            }).finally(() => {
              that.confirmLoading = false;
              that.close();
            })
          }
         
        })
      },
      handleCancel () {
        this.close()
      },
      popupCallback(row){
        this.form.setFieldsValue(pick(row,'whlx1','whlx3','whlx5','whlx7','bxxslx1','bxxslx3','bxxslx5','sbsj','bt','xxnr','fssj','lksj','cxsj','zrs','sy','xq','dd','ryjg','sfgj','cdjls','sfshezfrs','sfshizfrs','sfqzfrs','sfzgdwrs','sfrybq','sfrywq','lrmjbh','lrmjzh','lrsj','zhxgsj','bz','qunt','yyxn','jjcd','sfxb','gjxw','ccss','ssrs','swrs','yjsj','sbzdw','yjsffs','ybsd','stxxlx1','stxxlx3','stxxlx5','ddlx','ddqt','bq1','bq2','bq3','tjl1','tjl2','tjl3','lrbmid','lrbmbm','dzbh','zzbh','stsadd','stsaddn','stsslb','stsslbn','stsdlb','stsdlbn','stbxxs','stbxxsn','stsszt','stssztn','stsjyy','stsjyyn','strsgm','strsgmn','stsfxb','styyxn','stzrs','stssje','stswrs','stssrs','stjjcd','stjjcdn','styyxnn','infoid','xxzt','lybh','rkbj','jsbmid','jsrid','ywdl','xqpcsdm','cjr','shr','rwlzbh','jdr','swsjbh','xxlylb','xxffbj','kbbj'))
      }
      
    }
  }
</script>

<style lang="less" scoped>
/** Button按钮间距 */
  .ant-btn {
    margin-left: 30px;
    margin-bottom: 30px;
    float: right;
  }
</style>