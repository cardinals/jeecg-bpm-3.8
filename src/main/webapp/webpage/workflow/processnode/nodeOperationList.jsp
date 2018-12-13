<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:datagrid name="nodeOperationList" title="operate.manage" actionUrl="processController.do?nodeOperationDatagrid&nodeId=${nodeId}" idField="id">
	<t:dgCol title="common.id" field="id" hidden="true"></t:dgCol>
	<t:dgCol title="operate.name" field="operationname" width="100"></t:dgCol>
	<t:dgCol title="operate.code" field="operationcode"></t:dgCol>
	<t:dgCol title="common.type" field="operationType" replace="common.hide_0,operationType.disabled_1"></t:dgCol>
	<t:dgCol title="common.auth.status" field="status" replace="common.auth.status.y_1,common.auth.status.n_0"></t:dgCol>
<%-- 	<t:dgCol title="common.status" field="status" replace="common.enable_0,common.disable_1"></t:dgCol> --%>
<%--     <t:dgCol title="permission.name" field="TSFunction_functionName"></t:dgCol> --%>
	<t:dgCol title="common.operation" field="opt" width="180"></t:dgCol>
	<!-- 	//update-begin--Author:zhangjq  Date:20160904 for：1332 【系统图标统一调整】讲{系统管理模块}{在线开发}的链接按钮，改成ace风格 -->
	<t:dgDelOpt url="processController.do?delop&id={id}" title="common.delete" urlclass="ace_button"  urlfont="fa-trash-o"></t:dgDelOpt>
	<t:dgFunOpt funname="editoperation(id,operationname)" title="common.edit" urlclass="ace_button"  urlfont="fa-edit"></t:dgFunOpt>
<!-- 	//update-end--Author:zhangjq  Date:20160904 for：1332 【系统图标统一调整】讲{系统管理模块}{在线开发}的链接按钮，改成ace风格 -->
	<t:dgToolBar title="common.add.param" langArg="common.operation" icon="icon-add" url="processController.do?addorupdateop&nodeId=${nodeId}" funname="add"></t:dgToolBar>
	<%-- <t:dgToolBar title="操作编辑" icon="icon-edit" url="processController.do?addorupdateop&functionId=${functionId}" funname="update"></t:dgToolBar>--%>
</t:datagrid>
<script type="text/javascript">
function editoperation(operationId,operationname)
{
	createwindow("<t:mutiLang langKey="common.edit.param" langArg="common.operation"/>","processController.do?addorupdateop&nodeId=${nodeId}&id="+operationId);
}
</script>
