function insertCheck() {
	if(frm1.pid.value.length == 0) {
		alert("선수ID가 입력되지 않았습니다!");
		frm1.pid.focus();
		return false;
	}
	
	else if(frm1.pname.value.length == 0) {
		alert("선수 이름이 입력되지 않았습니다!");
		frm1.pname.focus();
		return false;
	}
	
	else if(frm1.position.value.length == 0) {
		alert("포지션이 선택되지 않았습니다!");
		frm1.position.focus();
		return false;
	}
	
	else if(frm1.pdate.value.length == 0) {
		alert("선수 등록일이 입력되지 않았습니다!");
		frm1.pdate.focus();
		return false;
	}
	
	else if(frm1.tid.value.length == 0) {
		alert("소속팀이 입력되지 않았습니다!");
		frm1.tid.focus();
		return false;
	}
	
	else {
		alert("선수 등록이 정상적으로 완료되었습니다!");
		return true
	}
}

function reset1() {
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm1.reset();
}

function modifyCheck() {
	if(frm2.pid.value.length == 0) {
		alert("선수ID가 입력되지 않았습니다!");
		frm2.pid.focus();
		return false;
	}
	
	else if(frm2.pame.value.length == 0) {
		alert("선수 이름이 입력되지 않았습니다!");
		frm2.pname.focus();
		return false;
	}
	
	else if(frm2.position.value.length == 0) {
		alert("포지션이 선택되지 않았습니다!");
		frm2.position.focus();
		return false;
	}
	
	else if(frm2.pdate.value.length == 0) {
		alert("선수 등록일이 입력되지 않았습니다!");
		frm2.pdate.focus();
		return false;
	}
	
	else if(frm2.tid.value.length == 0) {
		alert("소속팀이 입력되지 않았습니다!");
		frm2.tid.focus();
		return false;
	}
	
	else {
		alert("등록된 선수 정보 수정이 완료되었습니다!");
		return true
	}
}

function reset2() {
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm2.reset();
}