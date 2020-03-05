<template>
  <a-modal
    :title="title"
    :width="1200"
    :visible="visible"
    :maskClosable="false"
    :confirmLoading="confirmLoading"
    @ok="handleOk"
    @cancel="handleCancel">
    <a-spin :spinning="confirmLoading">
      <!-- 主表单区域 -->
      <a-form :form="form">
        <a-row>

          <a-col :span="12">
            <a-form-item label="合同名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input v-decorator="[ 'htmc', validatorRules.htmc]" placeholder="请输入合同名称"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="合同编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input v-decorator="[ 'htbh', validatorRules.htbh]" placeholder="请输入合同编号"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="客户编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-dict-select-tag type="list" v-decorator="['khbh', validatorRules.khbh]" :trigger-change="true" dictCode="ba_kh,dwmc,id" placeholder="请选择客户编号"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="付款方式" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-dict-select-tag type="list" v-decorator="['fkfs', validatorRules.fkfs]" :trigger-change="true" dictCode="ba_fkfs" placeholder="请选择付款方式"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="合同状态" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-dict-select-tag type="list" v-decorator="['htzt', validatorRules.htzt]" :trigger-change="true" dictCode="ba_htzt" placeholder="请选择合同状态"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="签订时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-date placeholder="请选择签订时间" v-decorator="[ 'qdsj', validatorRules.qdsj]" :trigger-change="true" style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="执行开始时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-date placeholder="请选择执行开始时间" v-decorator="[ 'zxsj', validatorRules.zxsj]" :trigger-change="true" style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="执行结束时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-date placeholder="请选择执行结束时间" v-decorator="[ 'jssj', validatorRules.jssj]" :trigger-change="true" style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="合同人数" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input-number v-decorator="[ 'htrs', validatorRules.htrs]" placeholder="请输入合同人数" style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="服务单价" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input-number v-decorator="[ 'htdj', validatorRules.htdj]" placeholder="请输入服务单价" style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="服务总价" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input-number v-decorator="[ 'htzj', validatorRules.htzj]" placeholder="请输入服务总价" style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="已收服务费" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input-number v-decorator="[ 'ysfwf', validatorRules.ysfwf]" placeholder="请输入已收服务费" style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="差额" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input-number v-decorator="[ 'ce', validatorRules.ce]" placeholder="请输入差额" style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="合同所属部门" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-select-depart v-decorator="['htssbm', validatorRules.htssbm]" :trigger-change="true"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="合同负责人" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-select-user-by-dep v-decorator="['htfzr', validatorRules.htfzr]" :trigger-change="true"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="联系电话" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input v-decorator="[ 'lxdh', validatorRules.lxdh]" placeholder="请输入联系电话"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="24">
            <a-form-item label="备注" :labelCol="labelCol2" :wrapperCol="wrapperCol2">
              <a-textarea v-decorator="['htbz', validatorRules.htbz]" rows="4" placeholder="请输入备注"/>
            </a-form-item>
          </a-col>

        </a-row>
      </a-form>

      <!-- 子表单区域 -->
      <a-tabs v-model="activeKey" @change="handleChangeTabs">
        <a-tab-pane tab="收付款计划" :key="refKeys[0]" :forceRender="true">
          <j-editable-table
            :ref="refKeys[0]"
            :loading="baSkjhTable.loading"
            :columns="baSkjhTable.columns"
            :dataSource="baSkjhTable.dataSource"
            :maxHeight="300"
            :rowNumber="true"
            :rowSelection="true"
            :actionButton="true"/>
        </a-tab-pane>
        
      </a-tabs>

    </a-spin>
  </a-modal>
</template>

<script>

  import pick from 'lodash.pick'
  import { FormTypes,getRefPromise } from '@/utils/JEditableTableUtil'
  import { JEditableTableMixin } from '@/mixins/JEditableTableMixin'
  import { validateDuplicateValue } from '@/utils/util'
  import JDate from '@/components/jeecg/JDate'  
  import JSelectDepart from '@/components/jeecgbiz/JSelectDepart'
  import JSelectUserByDep from '@/components/jeecgbiz/JSelectUserByDep'
  import JDictSelectTag from "@/components/dict/JDictSelectTag"

  export default {
    name: 'BaHtModal',
    mixins: [JEditableTableMixin],
    components: {
      JDate,
      JSelectDepart,
      JSelectUserByDep,
      JDictSelectTag,
    },
    data() {
      return {
        labelCol: {
          span: 6
        },
        wrapperCol: {
          span: 16
        },
        labelCol2: {
          span: 3
        },
        wrapperCol2: {
          span: 20
        },
        // 新增时子表默认添加几行空数据
        addDefaultRowNum: 1,
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
        refKeys: ['baSkjh', ],
        tableKeys:['baSkjh', ],
        activeKey: 'baSkjh',
        // 收付款计划
        baSkjhTable: {
          loading: false,
          dataSource: [],
          columns: [
            {
              title: '计划名称',
              key: 'jhmc',
              type: FormTypes.input,
              width:"200px",
              placeholder: '请输入${title}',
              defaultValue: '',
            },
            {
              title: '到期时间',
              key: 'dqsj',
              type: FormTypes.date,
              width:"200px",
              placeholder: '请输入${title}',
              defaultValue: '',
            },
            {
              title: '计划状态',
              key: 'jhzt',
              type: FormTypes.select,
              dictCode:"ba_sfkjhzt",
              width:"200px",
              placeholder: '请输入${title}',
              defaultValue: '',
            },
            {
              title: '计划类型',
              key: 'jhlx',
              type: FormTypes.select,
              dictCode:"ba_sfkjhlx",
              width:"200px",
              placeholder: '请输入${title}',
              defaultValue: '',
            },
            {
              title: '涉及金额',
              key: 'sjje',
              type: FormTypes.input,
              width:"200px",
              placeholder: '请输入${title}',
              defaultValue: '',
            },
          ]
        },
        url: {
          add: "/ba/baHt/add",
          edit: "/ba/baHt/edit",
          baSkjh: {
            list: '/ba/baHt/queryBaSkjhByMainId'
          },
        }
      }
    },
    methods: {
      getAllTable() {
        let values = this.tableKeys.map(key => getRefPromise(this, key))
        return Promise.all(values)
      },
      /** 调用完edit()方法之后会自动调用此方法 */
      editAfter() {
        let fieldval = pick(this.model,'htmc','htbh','khbh','fkfs','htzt','qdsj','zxsj','jssj','htrs','htdj','htzj','ysfwf','ce','htssbm','htfzr','lxdh','htbz')
        this.$nextTick(() => {
          this.form.setFieldsValue(fieldval)
        })
        // 加载子表数据
        if (this.model.id) {
          let params = { id: this.model.id }
          this.requestSubTableData(this.url.baSkjh.list, params, this.baSkjhTable)
        }
      },
      /** 整理成formData */
      classifyIntoFormData(allValues) {
        let main = Object.assign(this.model, allValues.formValue)

        return {
          ...main, // 展开
          baSkjhList: allValues.tablesValue[0].values,
        }
      },
      validateError(msg){
        this.$message.error(msg)
      },
     popupCallback(row){
       this.form.setFieldsValue(pick(row,'htmc','htbh','khbh','fkfs','htzt','qdsj','zxsj','jssj','htrs','htdj','htzj','ysfwf','ce','htssbm','htfzr','lxdh','htbz'))
     },

    }
  }
</script>

<style scoped>
</style>