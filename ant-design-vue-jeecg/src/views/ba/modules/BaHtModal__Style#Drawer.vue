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

        <a-form-item label="合同名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'htmc', validatorRules.htmc]" placeholder="请输入合同名称"></a-input>
        </a-form-item>
        <a-form-item label="合同编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'htbh', validatorRules.htbh]" placeholder="请输入合同编号"></a-input>
        </a-form-item>
        <a-form-item label="客户编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="list" v-decorator="['khbh', validatorRules.khbh]" :trigger-change="true" dictCode="ba_kh,dwmc,id" placeholder="请选择客户编号"/>
        </a-form-item>
        <a-form-item label="付款方式" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="list" v-decorator="['fkfs', validatorRules.fkfs]" :trigger-change="true" dictCode="fkfs" placeholder="请选择付款方式"/>
        </a-form-item>
        <a-form-item label="合同状态" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="list" v-decorator="['htzt', validatorRules.htzt]" :trigger-change="true" dictCode="htzt" placeholder="请选择合同状态"/>
        </a-form-item>
        <a-form-item label="签订时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择签订时间" v-decorator="[ 'qdsj', validatorRules.qdsj]" :trigger-change="true" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="执行开始时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择执行开始时间" v-decorator="[ 'zxsj', validatorRules.zxsj]" :trigger-change="true" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="执行结束时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择执行结束时间" v-decorator="[ 'jssj', validatorRules.jssj]" :trigger-change="true" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="合同人数" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'htrs', validatorRules.htrs]" placeholder="请输入合同人数" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="服务单价" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'htdj', validatorRules.htdj]" placeholder="请输入服务单价" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="服务总价" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'htzj', validatorRules.htzj]" placeholder="请输入服务总价" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="已收服务费" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'ysfwf', validatorRules.ysfwf]" placeholder="请输入已收服务费" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="差额" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'ce', validatorRules.ce]" placeholder="请输入差额" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="合同所属部门" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-select-depart v-decorator="['htssbm', validatorRules.htssbm]" :trigger-change="true"/>
        </a-form-item>
        <a-form-item label="合同负责人" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-select-user-by-dep v-decorator="['htfzr', validatorRules.htfzr]" :trigger-change="true"/>
        </a-form-item>
        <a-form-item label="联系电话" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'lxdh', validatorRules.lxdh]" placeholder="请输入联系电话"></a-input>
        </a-form-item>
        <a-form-item label="备注" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-textarea v-decorator="['htbz', validatorRules.htbz]" rows="4" placeholder="请输入备注"/>
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
  import JSelectDepart from '@/components/jeecgbiz/JSelectDepart'
  import JSelectUserByDep from '@/components/jeecgbiz/JSelectUserByDep'
  import JDictSelectTag from "@/components/dict/JDictSelectTag"
  
  export default {
    name: "BaHtModal",
    components: { 
      JDate,
      JSelectDepart,
      JSelectUserByDep,
      JDictSelectTag,
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
          htmc: {rules: [
          ]},
          htbh: {rules: [
          ]},
          khbh: {rules: [
          ]},
          fkfs: {rules: [
          ]},
          htzt: {rules: [
          ]},
          qdsj: {rules: [
          ]},
          zxsj: {rules: [
          ]},
          jssj: {rules: [
          ]},
          htrs: {rules: [
          ]},
          htdj: {rules: [
          ]},
          htzj: {rules: [
          ]},
          ysfwf: {rules: [
          ]},
          ce: {rules: [
          ]},
          htssbm: {rules: [
          ]},
          htfzr: {rules: [
          ]},
          lxdh: {rules: [
          ]},
          htbz: {rules: [
          ]},
        },
        url: {
          add: "/ba/baHt/add",
          edit: "/ba/baHt/edit",
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
          this.form.setFieldsValue(pick(this.model,'htmc','htbh','khbh','fkfs','htzt','qdsj','zxsj','jssj','htrs','htdj','htzj','ysfwf','ce','htssbm','htfzr','lxdh','htbz'))
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
        this.form.setFieldsValue(pick(row,'htmc','htbh','khbh','fkfs','htzt','qdsj','zxsj','jssj','htrs','htdj','htzj','ysfwf','ce','htssbm','htfzr','lxdh','htbz'))
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