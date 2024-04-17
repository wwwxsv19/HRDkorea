function check() {
	if (frm.id.value.lenght == 0) {
		alert("학번이 입력되지 않았습니다.");
		frm.id.focus();
		return false;
	}
	
	else if (frm.fin.value.lenght == 0) {
		alert("기말고사는 숫자가 아니거나 입력하지 않았습니다.");
		frm.fin.focus();
		return false;
	}
	
	else if (frm.att.value.lenght == 0) {
		alert("출석은 숫자가 아니거나 입력하지 않았습니다.");
		frm.att.focus();
		return false;
	}
	
	else if (frm.rep.value.lenght == 0) {
		alert("레포트는 숫자가 아니거나 입력하지 않았습니다.");
		frm.rep.focus();
		return false;
	}
	
	else if (frm.etc.value.lenght == 0) {
		alert("기타는 숫자가 아니거나 입력하지 않았습니다.");
		frm.etc.focus();
		return false;
	}
	
	else {
		alert("정보가 정상적으로 등록되었습니다.");
		document.frm.submit();
		return true;
	}
}

function res() {
	alert("정보를 지우고 처음부터 다시 입력합니다.");
	document.frm.reset();
}

function search() {
	document.frm2.submit();
}