<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>下拉上传</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css">
    
  </head>
<body>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<form role="form">
				
				<div class="form-group">
					 <label for="exampleInputFile">上传路径</label><input type="file" id="exampleInputFile" />
					<p class="help-block">
						请选择文件的上传路径
					</p>
				</div>
				<div class="form-group">
					 <label for="exampleInputEmail1">上传备注</label>
					 <div class="form-group"><input type="text" class="form-control" id="exampleInputEmail1" /></div>
				</div>
				<div class="btn-group">
				 <button class="btn btn-default">选择文件分类</button> <button data-toggle="dropdown" class="btn btn-default dropdown-toggle"><span class="caret"></span></button>
				<ul class="dropdown-menu">
					<li>
						 <a href="#">类别1</a>
					</li>
					<li>
						 <a href="#">类别2</a>
					</li>
					<li>
						 <a href="#">类别3</a>
					</li>
				</ul>
				</div>
				<div class="form-group"><button type="submit" class="btn btn-primary">提交上传</button></div>
			</form>
		</div>
	</div>
</div>
</body>
</html>