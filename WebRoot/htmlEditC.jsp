<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/js/kindeditor-4.1.7/themes/default/default.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/js/kindeditor-4.1.7/plugins/code/prettify.css" />
<script charset="utf-8" src="<%=request.getContextPath() %>/js/kindeditor-4.1.7/kindeditor.js"></script>
<script charset="utf-8" src="<%=request.getContextPath() %>/js/kindeditor-4.1.7/lang/zh_CN.js"></script>
<script charset="utf-8" src="<%=request.getContextPath() %>/js/kindeditor-4.1.7/plugins/code/prettify.js"></script>
<script>
	KindEditor.ready(function(K) {
		var editor1 = K.create('textarea[class="htmlEditCss"]', {
			cssPath : '<%=request.getContextPath() %>/js/kindeditor-4.1.7/plugins/code/prettify.css',
			uploadJson : '<%=request.getContextPath() %>/js/kindeditor-4.1.7/jsp/upload_json.jsp',
			fileManagerJson : '<%=request.getContextPath() %>/js/kindeditor-4.1.7/jsp/file_manager_json.jsp',
			items:[
			        'source', '|','cut', 'copy', 'paste','image','multiimage','fullscreen',
			],
			resizeType:0,
			height:170,
			width:850,
			afterBlur : function(ob) {
				var self = this;
				self.sync();
				K.ctrl(document, 13, function() {
					self.sync();
					K('form[title=htmlEditForm')[0].submit();
				});
				K.ctrl(self.edit.doc, 13, function() {
					self.sync();
					K('form[title=htmlEditForm')[0].submit();
				});
			}
		});
		prettyPrint();
	});
</script>