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

        <a-form-item label="地址名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'dzjc', validatorRules.dzjc]" placeholder="请输入地址名称"></a-input>
        </a-form-item>
        <a-form-item label="标准地址名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'bzdzmc', validatorRules.bzdzmc]" placeholder="请输入标准地址名称"></a-input>
        </a-form-item>
        <a-form-item label="标准地址编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'bzdzbh', validatorRules.bzdzbh]" placeholder="请输入标准地址编号"></a-input>
        </a-form-item>
        <a-form-item label="地址别名" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'dzbiem', validatorRules.dzbiem]" placeholder="请输入地址别名"></a-input>
        </a-form-item>
        <a-form-item label="状态" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="radio" v-decorator="['dqsfzy', validatorRules.dqsfzy]" :trigger-change="true" dictCode="dict_item_status" placeholder="请选择状态"/>
        </a-form-item>
        <a-form-item label="地址编码" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'dzbm', validatorRules.dzbm]" placeholder="请输入地址编码"></a-input>
        </a-form-item>
        <a-form-item label="辖区派出所" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'xqpcs', validatorRules.xqpcs]" placeholder="请输入辖区派出所"></a-input>
        </a-form-item>
        <a-form-item label="辖区县级公安机关" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'xqxianjga', validatorRules.xqxianjga]" placeholder="请输入辖区县级公安机关"></a-input>
        </a-form-item>
        <a-form-item label="辖区市级公安机关" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'xqshijga', validatorRules.xqshijga]" placeholder="请输入辖区市级公安机关"></a-input>
        </a-form-item>
        <a-form-item label="辖区派出所编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'xqpcsbh', validatorRules.xqpcsbh]" placeholder="请输入辖区派出所编号"></a-input>
        </a-form-item>

      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>

  import { httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import { validateDuplicateValue } from '@/utils/util'
  import JDictSelectTag from "@/components/dict/JDictSelectTag"

  export default {
    name: "QbDzModal",
    components: { 
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
          dzjc: {rules: [
          ]},
          bzdzmc: {rules: [
          ]},
          bzdzbh: {rules: [
          ]},
          dzbiem: {rules: [
          ]},
          dqsfzy: {rules: [
          ]},
          dzbm: {rules: [
          ]},
          xqpcs: {rules: [
          ]},
          xqxianjga: {rules: [
          ]},
          xqshijga: {rules: [
          ]},
          xqpcsbh: {rules: [
          ]},
        },
        url: {
          add: "/xs/qbDz/add",
          edit: "/xs/qbDz/edit",
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
          this.form.setFieldsValue(pick(this.model,'dzjc','bzdzmc','bzdzbh','dzbiem','dqsfzy','dzbm','xqpcs','xqxianjga','xqshijga','xqpcsbh'))
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
        this.form.setFieldsValue(pick(row,'dzjc','bzdzmc','bzdzbh','dzbiem','dqsfzy','dzbm','xqpcs','xqxianjga','xqshijga','xqpcsbh'))
      },

      
    }
  }
</script>