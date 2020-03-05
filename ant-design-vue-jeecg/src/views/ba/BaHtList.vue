<template>
  <a-card :bordered="false">
    <!-- 查询区域 -->
    <div class="table-page-search-wrapper">
      <a-form layout="inline" @keyup.enter.native="searchQuery">
        <a-row :gutter="24">

        </a-row>
      </a-form>
    </div>
    <!-- 查询区域-END -->
    
    <!-- 操作按钮区域 -->
    <div class="table-operator">
      <a-button @click="handleAdd" type="primary" icon="plus">新增</a-button>
      <a-button type="primary" icon="download" @click="handleExportXls('合同')">导出</a-button>
      <a-upload name="file" :showUploadList="false" :multiple="false" :headers="tokenHeader" :action="importExcelUrl" @change="handleImportExcel">
        <a-button type="primary" icon="import">导入</a-button>
      </a-upload>
      <a-dropdown v-if="selectedRowKeys.length > 0">
        <a-menu slot="overlay">
          <a-menu-item key="1" @click="batchDel"><a-icon type="delete"/>删除</a-menu-item>
        </a-menu>
        <a-button style="margin-left: 8px"> 批量操作 <a-icon type="down" /></a-button>
      </a-dropdown>
    </div>

    <!-- table区域-begin -->
    <div>
      <div class="ant-alert ant-alert-info" style="margin-bottom: 16px;">
        <i class="anticon anticon-info-circle ant-alert-icon"></i> 已选择 <a style="font-weight: 600">{{ selectedRowKeys.length }}</a>项
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
        :rowSelection="{selectedRowKeys: selectedRowKeys, onChange: onSelectChange}"
        @change="handleTableChange">

        <template slot="htmlSlot" slot-scope="text">
          <div v-html="text"></div>
        </template>
        <template slot="imgSlot" slot-scope="text">
          <span v-if="!text" style="font-size: 12px;font-style: italic;">无此图片</span>
          <img v-else :src="getImgView(text)" height="25px" alt="图片不存在" style="max-width:80px;font-size: 12px;font-style: italic;"/>
        </template>
        <template slot="fileSlot" slot-scope="text">
          <span v-if="!text" style="font-size: 12px;font-style: italic;">无此文件</span>
          <a-button
            v-else
            :ghost="true"
            type="primary"
            icon="download"
            size="small"
            @click="uploadFile(text)">
            下载
          </a-button>
        </template>

        <span slot="action" slot-scope="text, record">
          <a @click="handleEdit(record)">编辑</a>

          <a-divider type="vertical" />
          <a-dropdown>
            <a class="ant-dropdown-link">更多 <a-icon type="down" /></a>
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

    <baHt-modal ref="modalForm" @ok="modalFormOk"></baHt-modal>
  </a-card>
</template>

<script>

  import { JeecgListMixin } from '@/mixins/JeecgListMixin'
  import BaHtModal from './modules/BaHtModal'
  import {filterMultiDictText} from '@/components/dict/JDictSelectUtil'

  export default {
    name: "BaHtList",
    mixins:[JeecgListMixin],
    components: {
      BaHtModal
    },
    data () {
      return {
        description: '合同管理页面',
        // 表头
        columns: [
          {
            title: '#',
            dataIndex: '',
            key:'rowIndex',
            width:60,
            align:"center",
            customRender:function (t,r,index) {
              return parseInt(index)+1;
            }
          },
          {
            title:'合同名称',
            align:"center",
            dataIndex: 'htmc'
          },
          {
            title:'合同编号',
            align:"center",
            dataIndex: 'htbh'
          },
          {
            title:'客户编号',
            align:"center",
            dataIndex: 'khbh_dictText'
          },
          {
            title:'付款方式',
            align:"center",
            dataIndex: 'fkfs_dictText'
          },
          {
            title:'合同状态',
            align:"center",
            dataIndex: 'htzt_dictText'
          },
          {
            title:'签订时间',
            align:"center",
            dataIndex: 'qdsj',
            customRender:function (text) {
              return !text?"":(text.length>10?text.substr(0,10):text)
            }
          },
          {
            title:'执行开始时间',
            align:"center",
            dataIndex: 'zxsj',
            customRender:function (text) {
              return !text?"":(text.length>10?text.substr(0,10):text)
            }
          },
          {
            title:'执行结束时间',
            align:"center",
            dataIndex: 'jssj',
            customRender:function (text) {
              return !text?"":(text.length>10?text.substr(0,10):text)
            }
          },
          {
            title:'合同人数',
            align:"center",
            dataIndex: 'htrs'
          },
          {
            title:'服务单价',
            align:"center",
            dataIndex: 'htdj'
          },
          {
            title:'服务总价',
            align:"center",
            dataIndex: 'htzj'
          },
          {
            title:'已收服务费',
            align:"center",
            dataIndex: 'ysfwf'
          },
          {
            title:'差额',
            align:"center",
            dataIndex: 'ce'
          },
          {
            title:'合同所属部门',
            align:"center",
            dataIndex: 'htssbm_dictText'
          },
          {
            title:'合同负责人',
            align:"center",
            dataIndex: 'htfzr_dictText'
          },
          {
            title:'联系电话',
            align:"center",
            dataIndex: 'lxdh'
          },
          {
            title:'备注',
            align:"center",
            dataIndex: 'htbz'
          },
          {
            title: '操作',
            dataIndex: 'action',
            align:"center",
            scopedSlots: { customRender: 'action' },
          }
        ],
        url: {
          list: "/ba/baHt/list",
          delete: "/ba/baHt/delete",
          deleteBatch: "/ba/baHt/deleteBatch",
          exportXlsUrl: "/ba/baHt/exportXls",
          importExcelUrl: "ba/baHt/importExcel",
        },
        dictOptions:{},
      }
    },
    computed: {
      importExcelUrl: function(){
        return `${window._CONFIG['domianURL']}/${this.url.importExcelUrl}`;
      }
    },
    methods: {
      initDictConfig(){
      }
       
    }
  }
</script>
<style scoped>
  @import '~@assets/less/common.less';
</style>