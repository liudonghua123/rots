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

        <a-form-item label="单位名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'dwmc', validatorRules.dwmc]" placeholder="请输入单位名称"></a-input>
        </a-form-item>
        <a-form-item label="地址" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'dwdz', validatorRules.dwdz]" placeholder="请输入地址"></a-input>
        </a-form-item>
        <a-form-item label="联系电话" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'dwlxdh', validatorRules.dwlxdh]" placeholder="请输入联系电话"></a-input>
        </a-form-item>
        <a-form-item label="电子邮箱" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'dwdzyx', validatorRules.dwdzyx]" placeholder="请输入电子邮箱"></a-input>
        </a-form-item>
        <a-form-item label="负责人" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'dwfzr', validatorRules.dwfzr]" placeholder="请输入负责人"></a-input>
        </a-form-item>
        <a-form-item label="联系电话" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'dwlxr', validatorRules.dwlxr]" placeholder="请输入联系电话"></a-input>
        </a-form-item>
        <a-form-item label="证书序列号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'dwzsxlh', validatorRules.dwzsxlh]" placeholder="请输入证书序列号"></a-input>
        </a-form-item>
        <a-form-item label="组织机构证号码" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'zzjgzhm', validatorRules.zzjgzhm]" placeholder="请输入组织机构证号码"></a-input>
        </a-form-item>
        <a-form-item label="备注" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'dwbz', validatorRules.dwbz]" placeholder="请输入备注"></a-input>
        </a-form-item>

      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>

  import { httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import { validateDuplicateValue } from '@/utils/util'

  export default {
    name: "BaKhModal",
    components: { 
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
          dwmc: {rules: [
          ]},
          dwdz: {rules: [
          ]},
          dwlxdh: {rules: [
            {pattern:/\d{6,18}/, message: '请输入6到16位数字!'},
          ]},
          dwdzyx: {rules: [
           {pattern:/^([\w]+\.*)([\w]+)@[\w]+\.\w{3}(\.\w{2}|)$/, message: '请输入正确的电子邮件!'},
          ]},
          dwfzr: {rules: [
          ]},
          dwlxr: {rules: [
          ]},
          dwzsxlh: {rules: [
          ]},
          zzjgzhm: {rules: [
          ]},
          dwbz: {rules: [
          ]},
        },
        url: {
          add: "/ba/baKh/add",
          edit: "/ba/baKh/edit",
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
          this.form.setFieldsValue(pick(this.model,'dwmc','dwdz','dwlxdh','dwdzyx','dwfzr','dwlxr','dwzsxlh','zzjgzhm','dwbz'))
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
        this.form.setFieldsValue(pick(row,'dwmc','dwdz','dwlxdh','dwdzyx','dwfzr','dwlxr','dwzsxlh','zzjgzhm','dwbz'))
      },

      
    }
  }
</script>