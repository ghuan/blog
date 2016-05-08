// JavaScript Document

/* 后台登陆 */
function htdl() {
	if (document.getElementById("name").value == "") {
		alert("用户名不能为空！！")
		return false;
	}

	if (document.getElementById("password").value == "") {
		alert("密码不能为空！！")
		return false;
	}
	if(document.getElementById("rand").value==""){
		alert("请输入验证码！");
		return false;
	}
	return true;
}
