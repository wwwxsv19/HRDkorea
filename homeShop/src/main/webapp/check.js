function check() {
	if(frm.custname.value.length == 0) {
		alert("회원성명이 올바르지 않습니다.");
		frm.custname.focus();
		return false;
	}
	
	else if(frm.phone.value.length == 0) {
		alert("전화번호가 올바르지 않습니다.");
		frm.phone.focus();
		return false;
	}
	
	else if(frm.address.value.length == 0) {
		alert("회원주소가 올바르지 않습니다.");
		frm.address.focus();
		return false;
	}
	
	else if(frm.joindate.value.length == 0) {
		alert("가입일자가 올바르지 않습니다.");
		frm.joindate.focus();
		return false;
	}
	
	else if(frm.grade.value.length == 0) {
		alert("고객등급이 올바르지 않습니다.");
		frm.grade.focus();
		return false;
	}
	
	else if(frm.city.value.length == 0) {
		alert("도시코드가 올바르지 않습니다.");
		frm.city.focus();
		return false;
	}
	
	else {
		alert("정상적으로 등록이 완료되었습니다.");
		document.frm.submit();
		return true;
	}
}

function check1() {
	if(frm1.custname.value.length == 0) {
		alert("회원성명이 올바르지 않습니다.");
		frm1.custname.focus();
		return false;
	}
	
	else if(frm1.phone.value.length == 0) {
		alert("전화번호가 올바르지 않습니다.");
		frm1.phone.focus();
		return false;
	}
	
	else if(frm1.address.value.length == 0) {
		alert("회원주소가 올바르지 않습니다.");
		frm1.address.focus();
		return false;
	}
	
	else if(frm1.joindate.value.length == 0) {
		alert("가입일자가 올바르지 않습니다.");
		frm1.joindate.focus();
		return false;
	}
	
	else if(frm1.grade.value.length == 0) {
		alert("고객등급이 올바르지 않습니다.");
		frm1.grade.focus();
		return false;
	}
	
	else if(frm1.city.value.length == 0) {
		alert("도시코드가 올바르지 않습니다.");
		frm1.city.focus();
		return false;
	}
	
	else {
		alert("정상적으로 수정이 완료되었습니다.");
		document.frm1.submit();
		return true;
	}
}

function goList() {
	window.location = "list.jsp";
}