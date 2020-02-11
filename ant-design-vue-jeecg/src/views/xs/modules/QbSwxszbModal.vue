<template>
  <a-modal
    :title="title"
    :width="1200"
    :visible="visible"
    :maskClosable="false"
    :confirmLoading="confirmLoading"
    @ok="handleOk"
    @cancel="handleCancel"
  >
    <a-spin :spinning="confirmLoading">
      <!-- 主表单区域 -->
      <a-form :form="form">
        <a-row>
          <a-col :span="12">
            <a-form-item label="线索标题" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input
                :disabled="disableSubmit"
                v-decorator="[ 'xsbt', validatorRules.xsbt]"
                placeholder="请输入线索标题"
              ></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="24">
            <a-form-item label="线索详情" :labelCol="labelCol2" :wrapperCol="wrapperCol2">
              <a-textarea
                :disabled="disableSubmit"
                v-decorator="['xsxq']"
                rows="4"
                placeholder="请输入线索详情"
              />
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="地址编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input
                :disabled="disableSubmit"
                v-decorator="[ 'xsddbh', validatorRules.xsddbh]"
                placeholder="请输入地址编号"
              ></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="地址名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input
                :disabled="disableSubmit"
                v-decorator="[ 'xsddmc', validatorRules.xsddmc]"
                placeholder="请输入地址名称"
              ></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="采集时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-date
                :disabled="disableSubmit"
                placeholder="请选择采集时间"
                v-decorator="[ 'cjsj', validatorRules.cjsj]"
                :trigger-change="true"
                style="width: 100%"
              />
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="上传时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-date
                :disabled="disableSubmit"
                placeholder="请选择上传时间"
                v-decorator="[ 'scsj', validatorRules.scsj]"
                :trigger-change="true"
                style="width: 100%"
              />
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="采集人编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input
                :disabled="disableSubmit"
                v-decorator="[ 'cjrbh', validatorRules.cjrbh]"
                placeholder="请输入采集人编号"
              ></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="采集部门编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input
                :disabled="disableSubmit"
                v-decorator="[ 'cjbmbh', validatorRules.cjbmbh]"
                placeholder="请输入采集部门编号"
              ></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="线索类型" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input
                :disabled="disableSubmit"
                v-decorator="[ 'xslx', validatorRules.xslx]"
                placeholder="请输入线索类型"
              ></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="后台计算结果：危险等级" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input
                :disabled="disableSubmit"
                v-decorator="[ 'wxdj', validatorRules.wxdj]"
                placeholder="请输入后台计算结果：危险等级"
              ></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="24">
            <a-form-item label="后台计算结果：提示详情" :labelCol="labelCol2" :wrapperCol="wrapperCol2">
              <a-textarea
                :disabled="disableSubmit"
                v-decorator="['tsxq']"
                rows="4"
                placeholder="请输入后台计算结果：提示详情"
              />
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="后台比对标记：Y是，N否" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input
                :disabled="disableSubmit"
                v-decorator="[ 'htbdbj', validatorRules.htbdbj]"
                placeholder="请输入后台比对标记：Y是，N否"
              ></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="涉稳事件编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input
                :disabled="disableSubmit"
                v-decorator="[ 'swsjbh', validatorRules.swsjbh]"
                placeholder="请输入涉稳事件编号"
              ></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="信息编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input
                :disabled="disableSubmit"
                v-decorator="[ 'zdasjqbxxbh', validatorRules.zdasjqbxxbh]"
                placeholder="请输入信息编号"
              ></a-input>
            </a-form-item>
          </a-col>
        </a-row>
      </a-form>

      <!-- 子表单区域 -->
      <a-tabs v-model="activeKey" @change="handleChangeTabs">
        <a-tab-pane tab="线索附件" :key="refKeys[0]" :forceRender="true">
          <j-editable-table
            :ref="refKeys[0]"
            :loading="qbSwxszbfjTable.loading"
            :columns="qbSwxszbfjTable.columns"
            :dataSource="qbSwxszbfjTable.dataSource"
            :maxHeight="300"
            :rowNumber="true"
            :rowSelection="true"
            :actionButton="!disableSubmit"
          />
        </a-tab-pane>
      </a-tabs>
    </a-spin>
  </a-modal>
</template>

<script>
import pick from 'lodash.pick'
import { FormTypes, getRefPromise } from '@/utils/JEditableTableUtil'
import { JEditableTableMixin } from '@/mixins/JEditableTableMixin'
import JDate from '@/components/jeecg/JDate'

export default {
  name: 'QbSwxszbModal',
  mixins: [JEditableTableMixin],
  components: {
    JDate
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
        xsbt: {},
        xsxq: {},
        xsddbh: {},
        xsddmc: {},
        cjsj: {},
        scsj: {},
        cjrbh: {},
        cjbmbh: {},
        xslx: {},
        wxdj: {},
        tsxq: {},
        htbdbj: {},
        swsjbh: {},
        zdasjqbxxbh: {}
      },
      refKeys: ['qbSwxszbfj'],
      tableKeys: ['qbSwxszbfj'],
      activeKey: 'qbSwxszbfj',
      // 线索附件
      qbSwxszbfjTable: {
        loading: false,
        dataSource: [],
        columns: [
          {
            title: '文件路劲',
            key: 'wjlj',
            type: FormTypes.multimedia,
            token: true,
            responseName: 'message',
            width: '200px',
            placeholder: '请选择文件',
            defaultValue: '',
            disabled: !this.editable
          },
          {
            title: '附件名称',
            key: 'fjmc',
            type: FormTypes.input,
            width: '200px',
            placeholder: '请输入${title}',
            defaultValue: '',
            disabled: !this.editable
          },
          {
            title: '上传设备编码',
            key: 'scsbbm',
            type: FormTypes.input,
            width: '200px',
            placeholder: '请输入${title}',
            defaultValue: '',
            disabled: !this.editable
          }
        ]
      },
      url: {
        add: '/xs/qbSwxszb/add',
        edit: '/xs/qbSwxszb/edit',
        qbSwxszbfj: {
          list: '/xs/qbSwxszb/queryQbSwxszbfjByMainId'
        }
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
      let fieldval = pick(
        this.model,
        'xsbt',
        'xsxq',
        'xsddbh',
        'xsddmc',
        'cjsj',
        'scsj',
        'cjrbh',
        'cjbmbh',
        'xslx',
        'wxdj',
        'tsxq',
        'htbdbj',
        'swsjbh',
        'zdasjqbxxbh'
      )
      // this.editable = this.disableSubmit
      // console.info(`this.disableSubmit: ${this.disableSubmit}, this.editable: ${this.editable}`)
      this.$nextTick(() => {
        this.form.setFieldsValue(fieldval)
      })
      // 加载子表数据
      if (this.model.id) {
        let params = { id: this.model.id }
        this.requestSubTableData(this.url.qbSwxszbfj.list, params, this.qbSwxszbfjTable)
      }
    },
    /** 整理成formData */
    classifyIntoFormData(allValues) {
      let main = Object.assign(this.model, allValues.formValue)

      return {
        ...main, // 展开
        qbSwxszbfjList: allValues.tablesValue[0].values
      }
    },
    validateError(msg) {
      this.$message.error(msg)
    },
    popupCallback(row) {
      this.form.setFieldsValue(
        pick(
          row,
          'xsbt',
          'xsxq',
          'xsddbh',
          'xsddmc',
          'cjsj',
          'scsj',
          'cjrbh',
          'cjbmbh',
          'xslx',
          'wxdj',
          'tsxq',
          'htbdbj',
          'swsjbh',
          'zdasjqbxxbh'
        )
      )
    }
  }
}
</script>

<style scoped>
</style>