function getOk(){
	if(document.getElementById("username").value==""){
		alert("名字不能为空！！");
		return false;
	}
	if(document.getElementById("text").value==""){
		alert("评论内容不能为空！！");
		return false;
	}
	if(document.getElementById("rand").value==""){
		alert("请输入验证码！");
		return false;
	}
	return true;
}