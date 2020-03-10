<template>
  <a-modal
    :title="title"
    :width="width"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="handleOk"
    @cancel="handleCancel"
    cancelText="关闭">
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">

        <a-form-item label="流程类别" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'lclb', validatorRules.lclb]" placeholder="请输入流程类别"></a-input>
        </a-form-item>
        <a-form-item label="任务类别" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'rwlb', validatorRules.rwlb]" placeholder="请输入任务类别"></a-input>
        </a-form-item>
        <a-form-item label="信息源编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'ybh', validatorRules.ybh]" placeholder="请输入信息源编号"></a-input>
        </a-form-item>
        <a-form-item label="发起人编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'fqrbh', validatorRules.fqrbh]" placeholder="请输入发起人编号"></a-input>
        </a-form-item>
        <a-form-item label="目标信息类型" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'mblx', validatorRules.mblx]" placeholder="请输入目标信息类型"></a-input>
        </a-form-item>
        <a-form-item label="目标编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'mbbh', validatorRules.mbbh]" placeholder="请输入目标编号"></a-input>
        </a-form-item>
        <a-form-item label="任务状态" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'rwzt', validatorRules.rwzt]" placeholder="请输入任务状态"></a-input>
        </a-form-item>
        <a-form-item label="接收人编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'jsrbh', validatorRules.jsrbh]" placeholder="请输入接收人编号"></a-input>
        </a-form-item>
        <a-form-item label="接收时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择接收时间" v-decorator="[ 'jssj', validatorRules.jssj]" :trigger-change="true" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="处理意见" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'clyj', validatorRules.clyj]" placeholder="请输入处理意见"></a-input>
        </a-form-item>
        <a-form-item label="处理结果" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'cljg', validatorRules.cljg]" placeholder="请输入处理结果"></a-input>
        </a-form-item>
        <a-form-item label="发起部门编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'fqbmbh', validatorRules.fqbmbh]" placeholder="请输入发起部门编号"></a-input>
        </a-form-item>
        <a-form-item label="目标部门编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'mbbmbh', validatorRules.mbbmbh]" placeholder="请输入目标部门编号"></a-input>
        </a-form-item>
        <a-form-item label="办结时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择办结时间" v-decorator="[ 'bjsj', validatorRules.bjsj]" :trigger-change="true" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="发起时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择发起时间" v-decorator="[ 'fqsj', validatorRules.fqsj]" :trigger-change="true" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="任务标题" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'rwbt', validatorRules.rwbt]" placeholder="请输入任务标题"></a-input>
        </a-form-item>
        <a-form-item label="已归档入库（暂时未用到）" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'ygdrk', validatorRules.ygdrk]" placeholder="请输入已归档入库（暂时未用到）"></a-input>
        </a-form-item>
        <a-form-item label="发送意见" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'fsyj', validatorRules.fsyj]" placeholder="请输入发送意见"></a-input>
        </a-form-item>
        <a-form-item label="流转方式（信息流转：XXLZ，人员采集指令：RYCJZL，线索采集指令:XSCJZL）" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'lzfs', validatorRules.lzfs]" placeholder="请输入流转方式（信息流转：XXLZ，人员采集指令：RYCJZL，线索采集指令:XSCJZL）"></a-input>
        </a-form-item>
        <a-form-item label="反馈截止时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择反馈截止时间" v-decorator="[ 'fkjzsj', validatorRules.fkjzsj]" :trigger-change="true" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="反馈说明" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'fksm', validatorRules.fksm]" placeholder="请输入反馈说明"></a-input>
        </a-form-item>
        <a-form-item label="实际反馈时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择实际反馈时间" v-decorator="[ 'sjfksj', validatorRules.sjfksj]" :trigger-change="true" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="发起参数" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'fqcs', validatorRules.fqcs]" placeholder="请输入发起参数" style="width: 100%"/>
        </a-form-item>

      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>

  import { httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import { validateDuplicateValue } from '@/utils/util'
  import JDate from '@/components/jeecg/JDate'  

  export default {
    name: "QbRwlzModal",
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
          lclb: {rules: [
          ]},
          rwlb: {rules: [
          ]},
          ybh: {rules: [
          ]},
          fqrbh: {rules: [
          ]},
          mblx: {rules: [
          ]},
          mbbh: {rules: [
          ]},
          rwzt: {rules: [
          ]},
          jsrbh: {rules: [
          ]},
          jssj: {rules: [
          ]},
          clyj: {rules: [
          ]},
          cljg: {rules: [
          ]},
          fqbmbh: {rules: [
          ]},
          mbbmbh: {rules: [
          ]},
          bjsj: {rules: [
          ]},
          fqsj: {rules: [
          ]},
          rwbt: {rules: [
          ]},
          ygdrk: {rules: [
          ]},
          fsyj: {rules: [
          ]},
          lzfs: {rules: [
          ]},
          fkjzsj: {rules: [
          ]},
          fksm: {rules: [
          ]},
          sjfksj: {rules: [
          ]},
          fqcs: {rules: [
          ]},
        },
        url: {
          add: "/xs/qbRwlz/add",
          edit: "/xs/qbRwlz/edit",
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
          this.form.setFieldsValue(pick(this.model,'lclb','rwlb','ybh','fqrbh','mblx','mbbh','rwzt','jsrbh','jssj','clyj','cljg','fqbmbh','mbbmbh','bjsj','fqsj','rwbt','ygdrk','fsyj','lzfs','fkjzsj','fksm','sjfksj','fqcs'))
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
        this.form.setFieldsValue(pick(row,'lclb','rwlb','ybh','fqrbh','mblx','mbbh','rwzt','jsrbh','jssj','clyj','cljg','fqbmbh','mbbmbh','bjsj','fqsj','rwbt','ygdrk','fsyj','lzfs','fkjzsj','fksm','sjfksj','fqcs'))
      },

      
    }
  }
</script>