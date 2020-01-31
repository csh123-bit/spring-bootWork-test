<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
</head>
<body>
<h1>Home에 오신 것을 환영합니다.</h1>
<a href="/home/hello?id=ssar">hello페이지 이동-href</a><br/>
<button id="hello-button">hello 페이지 이동</button><br/>
<form>
	<input type="hidden" id="id" value="ssar"/>
</form>
<button id="hello-button-form">hello 페이지 이동</button><br/>

<form>
	<input type="hidden" id="username" value="love"/>
	<input type="hidden" id="phone" value="0102222"/>
</form>
<button id="hello-put-button">hello 페이지 이동-put</button><br/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>

//delete
	$('#hello-button').on('click',function(){
		let data={
				id:ssar;
			}
		$.ajax({
				type:'DELETE'
				url:'/home/hello'
				data:JSON.stringify(data),
				contentType:'application/json: charset=utf-8',
				data Type:'json'	
			}).done(function(result){
				if(result.statusCode==200){
					alert('글이 삭제되었습니다.');
					location.href='/home/hello';
					}

			}).fail(funcftion(){
				alert('글 삭제가 실패하였습니다.');
			});
	});
//post
	$('#hello-button-form').on('click',function(){
		let data={
				id:$('#id').val();
			}
		$.ajax({
				type:'POST'
				url:'/home/hello'
				data:JSON.stringify(data),
				contentType:'application/json: charset=utf-8',
				data Type:'json'	//자바스크립트 오브젝트로 만들어줌
			}).done(function(result){
				if(result.statusCode==200){
					alert('글 작성이 성공하였습니다.');
					location.href='/home/hello';
					}

			}).fail(funcftion(){
				alert('글 작성이 실패하였습니다.');
			});
	});
//put
	$('#hello-put-button').on('click',function(){
		let data={
				id:$('#id').val(),
				phoen:$('#phone').val()
			}
		$.ajax({
				type:'PUT'
				url:'/home/hello'
				data:JSON.stringify(data),
				contentType:'application/json: charset=utf-8',
				data Type:'json'	//자바스크립트 오브젝트로 만들어줌
			}).done(function(result){
				if(result.statusCode==200){
					alert('글 수정이 성공하였습니다.');
					location.href='/home/hello';
					}

			}).fail(funcftion(){
				alert('글 수정이 실패하였습니다.');
			});
	});

</script>
</body>
</html>