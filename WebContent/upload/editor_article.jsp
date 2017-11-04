<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>写新文章</title>
</head>

<!-- 网站图标 -->
<link rel="shortcut icon" href="/images/favicon.ico">

<%@include file="/plugins/plugins.jsp"%>

<!-- editormd start -->
<link rel="stylesheet" href="/plugins/editormd/css/editormd.min.css" />
<!-- jquery confirm -->
<link rel="stylesheet"
	href="/plugins/jqueryconfirm/css/jquery-confirm.min.css" />
<!-- 自定义css -->
<link rel="stylesheet" href="/css/upload/editor-article.css">


<script src="/plugins/jquery/js/jquery-3.2.1.min.js"></script>
<!-- JQuery cookie -->
<script src="/plugins/jquery/js/jquery.cookie.js"></script>
<!-- editormd -->
<script src="/plugins/editormd/js/editormd.min.js"></script>
<script src="/js/editor/editor.js"></script>
<!-- 自定开开发工具包  -->
<script src="/js/customize-sdk.js"></script>
<!-- jquery confirm -->
<script src="/plugins/jqueryconfirm/js/jquery-confirm.min.js"></script>

<body>
	<div class="form-horizontal editor-form-div ">
		<!-- 标题 -->
		<div class="form-group">
			<label for="txt_title" class="col-sm-1 control-label">标题</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="txt_title"
					placeholder="标题">
			</div>
		</div>
		<div class="form-group">
			<!-- 作者  -->
			<label for="txt_author" class="col-sm-1 control-label">作者</label>
			<div class="col-sm-1">
				<input type="text" class="form-control" id="txt_author"
					placeholder="作者">
			</div>
			<!-- 文章类型  -->
			<div class="col-sm-2 article-type">
				<label class="radio-inline"> <input type="radio"
					name="article" value="blog" checked="checked" /> 博客
				</label> 
				<label class="radio-inline"> <input type="radio"
					name="article" value="code" /> 代码
				</label>
			</div>
			<!-- 文章标签  -->
			<label for="txt_articleLabel" class="col-sm-1 control-label">标签</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="txt_articleLabel"
					placeholder="文章标签,用空格分隔">
			</div>
			<!-- 发布按钮 -->
			<div class="col-sm-1">
				<button id="btn_publish" type="button"
					class="btn btn-success btn-lg">发布</button>
			</div>
			<!-- 清空按钮 -->
			<div class="col-sm-1">
				<button id="btn_clearEditor" type="button" class="btn btn-danger">清空</button>
			</div>
		</div>
		<!-- 摘要 -->
		<div class="form-group">
			<label for="txt_summary" class="col-sm-1 control-label">摘要</label>
			<div class="col-sm-10">
				<textarea id="txt_summary" class="form-control" rows="3"
					placeholder="摘要"></textarea>
			</div>
		</div>
		<hr class="dotted-line" />
		<!-- 正文 -->
		<!-- editormd start -->
		<div class="editormd" id="div_editorMd">
			<textarea class="editormd-markdown-textarea" name="editorMd"
				id="txt_editorMdContent"></textarea>
			<!-- 第二个隐藏文本域，用来构造生成的HTML代码，方便表单POST提交，这里的name可以任意取，后台接受时以这个name键为准 -->
			<!-- html textarea 需要开启配置项 saveHTMLToTextarea == true -->
			<textarea class="editormd-html-textarea" name="editorHtml"
				id="txt_editorHtml"></textarea>
		</div>
		<!-- editormd end -->
	</div>
</body>
</html>