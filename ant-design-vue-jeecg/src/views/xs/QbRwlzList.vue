<template>
  <a-card :bordered="false">
    <!-- 查询区域 -->
    <div class="table-page-search-wrapper">
      <a-form layout="inline" @keyup.enter.native="searchQuery">
        <a-row :gutter="24"></a-row>
      </a-form>
    </div>
    <!-- 查询区域-END -->

    <!-- 操作按钮区域 -->
    <div class="table-operator">
      <a-button @click="handleAccept" type="primary" icon="download">签收</a-button>
      <a-button @click="handleAdd" type="primary" icon="plus">新增</a-button>
      <a-button type="primary" icon="download" @click="handleExportXls('任务流转')">导出</a-button>
      <a-upload
        name="file"
        :showUploadList="false"
        :multiple="false"
        :headers="tokenHeader"
        :action="importExcelUrl"
        @change="handleImportExcel"
      >
        <a-button type="primary" icon="import">导入</a-button>
      </a-upload>
      <a-dropdown v-if="selectedRowKeys.length > 0">
        <a-menu slot="overlay">
          <a-menu-item key="1" @click="batchDel">
            <a-icon type="delete" />删除
          </a-menu-item>
        </a-menu>
        <a-button style="margin-left: 8px">
          批量操作
          <a-icon type="down" />
        </a-button>
      </a-dropdown>
    </div>

    <!-- table区域-begin -->
    <div>
      <div class="ant-alert ant-alert-info" style="margin-bottom: 16px;">
        <i class="anticon anticon-info-circle ant-alert-icon"></i> 已选择
        <a style="font-weight: 600">{{ selectedRowKeys.length }}</a>项
        <a style="margin-left: 24px" @click="onClearSelected">清空</a>
      </div>

      <a-table
        ref="table"
        size="middle"
        bordered
        rowKey="id"
        :columns="columns"
        :dataSource="dataSource"
        :pagination="ipagination"
        :loading="loading"
        :rowSelection="{fixed:true,selectedRowKeys: selectedRowKeys, onChange: onSelectChange}"
        @change="handleTableChange"
      >
        <template slot="htmlSlot" slot-scope="text">
          <div v-html="text"></div>
        </template>
        <template slot="imgSlot" slot-scope="text">
          <span v-if="!text" style="font-size: 12px;font-style: italic;">无此图片</span>
          <img
            v-else
            :src="getImgView(text)"
            height="25px"
            alt="图片不存在"
            style="max-width:80px;font-size: 12px;font-style: italic;"
          />
        </template>
        <template slot="fileSlot" slot-scope="text">
          <span v-if="!text" style="font-size: 12px;font-style: italic;">无此文件</span>
          <a-button
            v-else
            :ghost="true"
            type="primary"
            icon="download"
            size="small"
            @click="uploadFile(text)"
          >下载</a-button>
        </template>

        <span slot="action" slot-scope="text, record">
          <a @click="handleEdit(record)">编辑</a>

          <a-divider type="vertical" />
          <a-dropdown>
            <a class="ant-dropdown-link">
              更多
              <a-icon type="down" />
            </a>
            <a-menu slot="overlay">
              <a-menu-item>
                <a-popconfirm title="确定删除吗?" @confirm="() => handleDelete(record.id)">
                  <a>删除</a>
                </a-popconfirm>
              </a-menu-item>
            </a-menu>
          </a-dropdown>
        </span>
      </a-table>
    </div>

    <qbRwlz-modal ref="modalForm" @ok="modalFormOk"></qbRwlz-modal>
  </a-card>
</template>

<script>
import { httpAction } from '@/api/manage'
import { JeecgListMixin } from '@/mixins/JeecgListMixin'
import QbRwlzModal from './modules/QbRwlzModal'
import { filterMultiDictText } from '@/components/dict/JDictSelectUtil'

export default {
  name: 'QbRwlzList',
  mixins: [JeecgListMixin],
  components: {
    QbRwlzModal
  },
  data() {
    return {
      description: '任务流转管理页面',
      // 表头
      columns: [
        {
          title: '#',
          dataIndex: '',
          key: 'rowIndex',
          width: 60,
          align: 'center',
          customRender: function(t, r, index) {
            return parseInt(index) + 1
          }
        },
        {
          title: '流程类别',
          align: 'center',
          dataIndex: 'lclb'
        },
        {
          title: '任务类别',
          align: 'center',
          dataIndex: 'rwlb'
        },
        {
          title: '信息源编号',
          align: 'center',
          dataIndex: 'ybh'
        },
        {
          title: '发起人编号',
          align: 'center',
          dataIndex: 'fqrbh'
        },
        {
          title: '目标信息类型',
          align: 'center',
          dataIndex: 'mblx'
        },
        {
          title: '目标编号',
          align: 'center',
          dataIndex: 'mbbh'
        },
        {
          title: '任务状态',
          align: 'center',
          dataIndex: 'rwzt'
        },
        {
          title: '接收人编号',
          align: 'center',
          dataIndex: 'jsrbh'
        },
        {
          title: '接收时间',
          align: 'center',
          dataIndex: 'jssj',
          customRender: function(text) {
            return !text ? '' : text.length > 10 ? text.substr(0, 10) : text
          }
        },
        {
          title: '处理意见',
          align: 'center',
          dataIndex: 'clyj'
        },
        {
          title: '处理结果',
          align: 'center',
          dataIndex: 'cljg'
        },
        {
          title: '发起部门编号',
          align: 'center',
          dataIndex: 'fqbmbh'
        },
        {
          title: '目标部门编号',
          align: 'center',
          dataIndex: 'mbbmbh'
        },
        {
          title: '办结时间',
          align: 'center',
          dataIndex: 'bjsj',
          customRender: function(text) {
            return !text ? '' : text.length > 10 ? text.substr(0, 10) : text
          }
        },
        {
          title: '发起时间',
          align: 'center',
          dataIndex: 'fqsj',
          customRender: function(text) {
            return !text ? '' : text.length > 10 ? text.substr(0, 10) : text
          }
        },
        {
          title: '任务标题',
          align: 'center',
          dataIndex: 'rwbt'
        },
        {
          title: '已归档入库（暂时未用到）',
          align: 'center',
          dataIndex: 'ygdrk'
        },
        {
          title: '发送意见',
          align: 'center',
          dataIndex: 'fsyj'
        },
        {
          title: '流转方式（信息流转：XXLZ，人员采集指令：RYCJZL，线索采集指令:XSCJZL）',
          align: 'center',
          dataIndex: 'lzfs'
        },
        {
          title: '反馈截止时间',
          align: 'center',
          dataIndex: 'fkjzsj',
          customRender: function(text) {
            return !text ? '' : text.length > 10 ? text.substr(0, 10) : text
          }
        },
        {
          title: '反馈说明',
          align: 'center',
          dataIndex: 'fksm'
        },
        {
          title: '实际反馈时间',
          align: 'center',
          dataIndex: 'sjfksj',
          customRender: function(text) {
            return !text ? '' : text.length > 10 ? text.substr(0, 10) : text
          }
        },
        {
          title: '发起参数',
          align: 'center',
          dataIndex: 'fqcs'
        },
        {
          title: '操作',
          dataIndex: 'action',
          align: 'center',
          scopedSlots: { customRender: 'action' }
        }
      ],
      url: {
        list: '/xs/qbRwlz/list',
        delete: '/xs/qbRwlz/delete',
        deleteBatch: '/xs/qbRwlz/deleteBatch',
        exportXlsUrl: '/xs/qbRwlz/exportXls',
        importExcelUrl: 'xs/qbRwlz/importExcel'
        //accept: '/xs/qbRwlz/accept'
      },
      dictOptions: {}
    }
  },
  computed: {
    importExcelUrl: function() {
      return `${window._CONFIG['domianURL']}/${this.url.importExcelUrl}`
    }
  },
  methods: {
    initDictConfig() {},
    handleAccept: function() {
      const that = this
      let httpurl = '/xs/qbRwlz/accept'
      let method = 'post'
      let formData = { acceptALL: 'Y' } //Object.assign(this.model, values)
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
  }
}
</script>
<style scoped>
@import '~@assets/less/common.less';
</style>