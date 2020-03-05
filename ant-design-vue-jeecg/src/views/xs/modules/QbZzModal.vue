<template>
  <a-modal
    :title="title"
    :width="width"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="handleOk"
    @cancel="handleCancel"
    :destroyOnClose="true"
    cancelText="关闭">
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">

        <a-form-item label="父级节点" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-tree-select
            ref="treeSelect"
            placeholder="请选择父级节点"
            v-decorator="['pid', validatorRules.pid]"
            dict="qb_zz,zzcymc,id"
            pidField="pid"
            pidValue="0"
            hasChildField="has_child">
          </j-tree-select>
        </a-form-item>
        <a-form-item label="常用名" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'zzcymc', validatorRules.zzcymc]" placeholder="请输入常用名"></a-input>
        </a-form-item>
        <a-form-item label="组织简称" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'zzjc', validatorRules.zzjc]" placeholder="请输入组织简称"></a-input>
        </a-form-item>
        <a-form-item label="组织编码" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'zzbm', validatorRules.zzbm]" placeholder="请输入组织编码"></a-input>
        </a-form-item>
        <a-form-item label="组织别名" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'zzbiem', validatorRules.zzbiem]" placeholder="请输入组织别名"></a-input>
        </a-form-item>
        <a-form-item label="状态" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="radio" v-decorator="['dqsfzy', validatorRules.dqsfzy]" :trigger-change="true" dictCode="dict_item_status" placeholder="请选择状态"/>
        </a-form-item>
        <a-form-item label="备注" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'bz', validatorRules.bz]" placeholder="请输入备注"></a-input>
        </a-form-item>
        <a-form-item label="组织拼音码" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'zzpym', validatorRules.zzpym]" placeholder="请输入组织拼音码"></a-input>
        </a-form-item>
        <a-form-item label="组织层序" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'zzcj', validatorRules.zzcj]" placeholder="请输入组织层序"></a-input>
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
  import JTreeSelect from '@/components/jeecg/JTreeSelect'
  
  export default {
    name: "QbZzModal",
    components: { 
      JDictSelectTag,
      JTreeSelect
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
          pid: {rules: [
          ]},
          zzcymc: {rules: [
          ]},
          zzjc: {rules: [
          ]},
          zzbm: {rules: [
          ]},
          zzbiem: {rules: [
          ]},
          dqsfzy: {rules: [
          ]},
          bz: {rules: [
          ]},
          zzpym: {rules: [
          ]},
          zzcj: {rules: [
          ]},
        },
        url: {
          add: "/xs/qbZz/add",
          edit: "/xs/qbZz/edit",
        },
        expandedRowKeys:[],
        pidField:"pid"
     
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
          this.form.setFieldsValue(pick(this.model,'pid','zzcymc','zzjc','zzbm','zzbiem','dqsfzy','bz','zzpym','zzcj'))
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
            let old_pid = this.model[this.pidField]
            let formData = Object.assign(this.model, values);
            let new_pid = this.model[this.pidField]
            console.log("表单提交数据",formData)
            httpAction(httpurl,formData,method).then((res)=>{
              if(res.success){
                that.$message.success(res.message);
                that.submitSuccess(formData,old_pid==new_pid)
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
        this.form.setFieldsValue(pick(row,'pid','zzcymc','zzjc','zzbm','zzbiem','dqsfzy','bz','zzpym','zzcj'))
      },
      submitSuccess(formData,flag){
        if(!formData.id){
          let treeData = this.$refs.treeSelect.getCurrTreeData()
          this.expandedRowKeys=[]
          this.getExpandKeysByPid(formData[this.pidField],treeData,treeData)
          this.$emit('ok',formData,this.expandedRowKeys.reverse());
        }else{
          this.$emit('ok',formData,flag);
        }
      },
      getExpandKeysByPid(pid,arr,all){
        if(pid && arr && arr.length>0){
          for(let i=0;i<arr.length;i++){
            if(arr[i].key==pid){
              this.expandedRowKeys.push(arr[i].key)
              this.getExpandKeysByPid(arr[i]['parentId'],all,all)
            }else{
              this.getExpandKeysByPid(pid,arr[i].children,all)
            }
          }
        }
      }
      
      
    }
  }
</script>