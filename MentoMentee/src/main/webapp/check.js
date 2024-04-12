function check() {
	if(frm.eid.value.lenght == 0) {
		alert("ID가 입력되지 않았습니다.");
		frm.eid.focus();
		return false;
	}
	
	if(frm.ename.value.lenght == 0) {
		alert("학생명이 입력되지 않았습니다.");
		frm.ename.focus();
		return false;
	}
	
	else if(frm.num.value.lenght == 0) {
		alert("학번이 입력되지 않았습니다.");
		frm.num.focus();
		return false;
	}
	
	else if(frm.phone.value.lenght == 0) {
		alert("전화번호가 입력되지 않았습니다.");
		frm.phone.focus();
		return false;
	}
	
	else if(frm.eclass.value.lenght == 0) {
		alert("희망 수업이 입력되지 않았습니다.");
		frm.eclass.focus();
		return false;
	}
	
	else {
		alert("정상적으로 신청이 접수되었습니다.");
		document.frm.submit();
		return true;
	}
}

function res() {
	alret("신청서를 초기화합니다.");
	document.frm.reset();
}