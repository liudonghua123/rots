<template>
  <a-card :bordered="false">
    <!-- 查询区域 -->
    <div class="table-page-search-wrapper">
      <a-form layout="inline" @keyup.enter.native="searchQuery">
        <a-row :gutter="24">
          <a-col :md="6" :sm="8">
            <a-form-item label="线索标题">
              <a-input placeholder="请输入线索标题" v-model="queryParam.xsbt"></a-input>
            </a-form-item>
          </a-col>
          <a-col :md="6" :sm="8">
            <a-form-item label="线索详情">
              <a-input placeholder="请输入线索详情" v-model="queryParam.xsxq"></a-input>
            </a-form-item>
          </a-col>
          <a-col :md="6" :sm="8">
            <span style="float: left;overflow: hidden;" class="table-page-search-submitButtons">
              <a-button type="primary" @click="searchQuery" icon="search">查询</a-button>
              <a-button type="primary" @click="searchReset" icon="reload" style="margin-left: 8px">重置</a-button>
              <a @click="handleToggleSearch" style="margin-left: 8px">
                {{ toggleSearchStatus ? '收起' : '展开' }}
                <a-icon :type="toggleSearchStatus ? 'up' : 'down'"/>
              </a>
            </span>
          </a-col>

        </a-row>
      </a-form>
    </div>
    <!-- 查询区域-END -->
    
    <!-- 操作按钮区域 -->
    <div class="table-operator">
      <a-button @click="handleAdd" type="primary" icon="plus">新增</a-button>
      <a-button type="primary" icon="download" @click="handleExportXls('线索')">导出</a-button>
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

    <qbSwxszb-modal ref="modalForm" @ok="modalFormOk"></qbSwxszb-modal>
  </a-card>
</template>

<script>

  import { JeecgListMixin } from '@/mixins/JeecgListMixin'
  import QbSwxszbModal from './modules/QbSwxszbModal'

  export default {
    name: "QbSwxszbList",
    mixins:[JeecgListMixin],
    components: {
      QbSwxszbModal
    },
    data () {
      return {
        description: '线索管理页面',
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
            title:'线索标题',
            align:"center",
            dataIndex: 'xsbt'
          },
          {
            title:'线索详情',
            align:"center",
            dataIndex: 'xsxq'
          },
          {
            title:'地址编号',
            align:"center",
            dataIndex: 'xsddbh'
          },
          {
            title:'地址名称',
            align:"center",
            dataIndex: 'xsddmc'
          },
          {
            title:'采集时间',
            align:"center",
            dataIndex: 'cjsj',
            customRender:function (text) {
              return !text?"":(text.length>10?text.substr(0,10):text)
            }
          },
          {
            title:'上传时间',
            align:"center",
            dataIndex: 'scsj',
            customRender:function (text) {
              return !text?"":(text.length>10?text.substr(0,10):text)
            }
          },
          {
            title:'采集人编号',
            align:"center",
            dataIndex: 'cjrbh'
          },
          {
            title:'采集部门编号',
            align:"center",
            dataIndex: 'cjbmbh'
          },
          {
            title:'线索类型',
            align:"center",
            dataIndex: 'xslx'
          },
          {
            title:'后台计算结果：危险等级',
            align:"center",
            dataIndex: 'wxdj'
          },
          {
            title:'后台计算结果：提示详情',
            align:"center",
            dataIndex: 'tsxq'
          },
          {
            title:'后台比对标记：Y是，N否',
            align:"center",
            dataIndex: 'htbdbj'
          },
          {
            title:'涉稳事件编号',
            align:"center",
            dataIndex: 'swsjbh'
          },
          {
            title:'信息编号',
            align:"center",
            dataIndex: 'zdasjqbxxbh'
          },
          {
            title: '操作',
            dataIndex: 'action',
            align:"center",
            scopedSlots: { customRender: 'action' },
          }
        ],
        url: {
          list: "/xs/qbSwxszb/list",
          delete: "/xs/qbSwxszb/delete",
          deleteBatch: "/xs/qbSwxszb/deleteBatch",
          exportXlsUrl: "/xs/qbSwxszb/exportXls",
          importExcelUrl: "xs/qbSwxszb/importExcel",
        },
        dictOptions:{
        },

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
  @import '~@assets/less/common.less'
</style>