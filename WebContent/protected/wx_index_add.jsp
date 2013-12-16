
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/protected/header.jsp"%>


<div class="row">
  <div class="col-md-2 col-md-offset-1">
  	<div class="btn-group-vertical sidebar-offcanvas" role="navigation">

		<div class="list-group">
            <a href="${ctx}/protected/wx_index" class="list-group-item">普通索引</a>
            <a href="#" class="list-group-item">接口索引</a>
			<a href="${ctx}/protected/wx_index_add" class="list-group-item  active">添加索引</a>
          </div>
	</div>
  </div>
  <div class="col-md-8">
  		 <form role="form">
 			 <div class="form-group">
  			  <label for="keyword">索引关键词</label>
  			  <input type="text" class="form-control" id="keyword" placeholder="keyword" required>
 			 </div>
  			<div class="form-group">
    			<label for="indextype">索引类型</label>
  			    <select class="form-control">
  					<option>1</option>
 					 <option>2</option>
  					<option>3</option>
  					<option>4</option>
  					<option>5</option>
				</select>

  			    
  			</div>
 			 <div class="form-group">
   				 <label for="msgtype">消息类型</label>
   				 <select class="form-control">
  					<option>1</option>
 					 <option>2</option>
  					<option>3</option>
  					<option>4</option>
  					<option>5</option>
				</select>
  			</div>
  			
  			<div class="form-group">
   				 <label for="return">回复内容</label>
   				 <div class="row" style="background-color: #E1E1E1;padding:10px 10px 10px 10px">
   				 	<div  class="col-md-2">
   				 		<span class="btn btn-default glyphicon glyphicon-pencil">&nbsp;文字</span>
   				 	</div>
   				 	<div  class="col-md-2">
   				 		<span class="btn btn-default glyphicon glyphicon-picture">&nbsp;图片</span>
   				 	</div>
   				 	<div  class="col-md-2">
   				 		<span class="btn btn-default glyphicon glyphicon-volume-up">&nbsp;语音</span>
   				 	</div>
   				 	<div  class="col-md-2">
   				 		<span class="btn btn-default glyphicon glyphicon-film">&nbsp;视频</span>
   				 	</div>
   				 	<div  class="col-md-2">
   				 		<span class="btn btn-default glyphicon glyphicon-list-alt">&nbsp;图文</span>
   				 	</div>
   				 
   				 </div>
  			</div>
  		
  		
  		
  		<div class="form-group">
    		<div class="col-md-offset-4 col-md-10">
      			<button  class="btn btn-default" type="submit">提交</button>
      			
    		</div>
 		 </div>

  		
  		
  		
  		
	</form>
   
   
   
   </div>
   
  	
  </div>






		

<%@ include file="/protected/footer.jsp"%>