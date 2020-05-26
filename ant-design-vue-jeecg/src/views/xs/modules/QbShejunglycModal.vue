<template>
  <a-modal
    :title="title"
    :width="width"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="handleOk"
    @cancel="handleCancel"
    cancelText="关闭"
  >
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">
        <a-form-item label="cecos" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'cecos', validatorRules.cecos]" placeholder="请输入cecos"></a-input>
        </a-form-item>
        <a-form-item label="city" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'city', validatorRules.city]" placeholder="请输入city"></a-input>
        </a-form-item>
        <a-form-item label="imeilast" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'imeilast', validatorRules.imeilast]" placeholder="请输入imeilast"></a-input>
        </a-form-item>
        <a-form-item label="isfocal" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'isfocal', validatorRules.isfocal]" placeholder="请输入isfocal"></a-input>
        </a-form-item>
        <a-form-item label="istw" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'istw', validatorRules.istw]" placeholder="请输入istw"></a-input>
        </a-form-item>
        <a-form-item label="isleave" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'isleave', validatorRules.isleave]" placeholder="请输入isleave"></a-input>
        </a-form-item>
        <a-form-item label="jzdcode" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'jzdcode', validatorRules.jzdcode]" placeholder="请输入jzdcode"></a-input>
        </a-form-item>
        <a-form-item label="lastareacode" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input
            v-decorator="[ 'lastareacode', validatorRules.lastareacode]"
            placeholder="请输入lastareacode"
          ></a-input>
        </a-form-item>
        <a-form-item label="mobile" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'mobile', validatorRules.mobile]" placeholder="请输入mobile"></a-input>
        </a-form-item>
        <a-form-item label="oftenaddr" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input
            v-decorator="[ 'oftenaddr', validatorRules.oftenaddr]"
            placeholder="请输入oftenaddr"
          ></a-input>
        </a-form-item>
        <a-form-item label="qqaccount" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input
            v-decorator="[ 'qqaccount', validatorRules.qqaccount]"
            placeholder="请输入qqaccount"
          ></a-input>
        </a-form-item>
        <a-form-item label="score" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number
            v-decorator="[ 'score', validatorRules.score]"
            placeholder="请输入score"
            style="width: 100%"
          />
        </a-form-item>
        <a-form-item label="sexstr" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'sexstr', validatorRules.sexstr]" placeholder="请输入sexstr"></a-input>
        </a-form-item>
        <a-form-item label="petiton" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number
            v-decorator="[ 'petiton', validatorRules.petiton]"
            placeholder="请输入petiton"
            style="width: 100%"
          />
        </a-form-item>
        <a-form-item label="weixinaccount" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input
            v-decorator="[ 'weixinaccount', validatorRules.weixinaccount]"
            placeholder="请输入weixinaccount"
          ></a-input>
        </a-form-item>
        <a-form-item label="xm" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'xm', validatorRules.xm]" placeholder="请输入xm"></a-input>
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
  name: 'QbShejunglycModal',
  components: {},
  data() {
    return {
      form: this.$form.createForm(this),
      title: '操作',
      width: 800,
      visible: false,
      model: {},
      labelCol: {
        xs: { span: 24 },
        sm: { span: 5 }
      },
      wrapperCol: {
        xs: { span: 24 },
        sm: { span: 16 }
      },
      confirmLoading: false,
      validatorRules: {
        cecos: { rules: [] },
        city: { rules: [] },
        imeilast: { rules: [] },
        isfocal: { rules: [] },
        istw: { rules: [] },
        isleave: { rules: [] },
        jzdcode: { rules: [] },
        lastareacode: { rules: [] },
        mobile: { rules: [] },
        oftenaddr: { rules: [] },
        qqaccount: { rules: [] },
        score: { rules: [] },
        sexstr: { rules: [] },
        petiton: { rules: [] },
        weixinaccount: { rules: [] },
        xm: { rules: [] }
      },
      url: {
        add: '/xs/qbShejunglyc/add',
        edit: '/xs/qbShejunglyc/edit'
      }
    }
  },
  created() {},
  methods: {
    add() {
      this.edit({})
    },
    edit(record) {
      this.form.resetFields()
      this.model = Object.assign({}, record)
      this.visible = true
      this.$nextTick(() => {
        this.form.setFieldsValue(
          pick(
            this.model,
            'cecos',
            'city',
            'imeilast',
            'isfocal',
            'istw',
            'isleave',
            'jzdcode',
            'lastareacode',
            'mobile',
            'oftenaddr',
            'qqaccount',
            'score',
            'sexstr',
            'petiton',
            'weixinaccount',
            'xm'
          )
        )
      })
    },
    close() {
      this.$emit('close')
      this.visible = false
    },
    handleOk() {
      const that = this
      // 触发表单验证
      this.form.validateFields((err, values) => {
        if (!err) {
          that.confirmLoading = true
          let httpurl = ''
          let method = ''
          if (!this.model.id) {
            httpurl += this.url.add
            method = 'post'
          } else {
            httpurl += this.url.edit
            method = 'put'
          }
          let formData = Object.assign(this.model, values)
          console.log('表单提交数据', formData)
          httpAction(httpurl, formData, method)
            .then(res => {
              if (res.success) {
                that.$message.success(res.message)
                that.$emit('ok')
              } else {
                that.$message.warning(res.message)
              }
            })
            .finally(() => {
              that.confirmLoading = false
              that.close()
            })
        }
      })
    },
    handleCancel() {
      this.close()
    },
    popupCallback(row) {
      this.form.setFieldsValue(
        pick(
          row,
          'cecos',
          'city',
          'imeilast',
          'isfocal',
          'istw',
          'isleave',
          'jzdcode',
          'lastareacode',
          'mobile',
          'oftenaddr',
          'qqaccount',
          'score',
          'sexstr',
          'petiton',
          'weixinaccount',
          'xm'
        )
      )
    }
  }
}
</script>