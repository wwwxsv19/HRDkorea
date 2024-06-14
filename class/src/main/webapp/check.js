function check() {
	if(frm.id.value.length == 0) {
		alert("과목 코드가 입력되지 않았습니다!");
		frm.id.focus();
		return false;
	}
	
	else if(frm.name.value.length == 0) {
		alert("과목명이 입력되지 않았습니다!");
		frm.name.focus();
		return false;
	}
	
	else if(frm.score.value.length == 0) {
		alert("학점이 입력되지 않았습니다!");
		frm.score.focus();
		return false;
	}
	
	else if(frm.teacher.value.length == 0) {
		alert("담당 강사가 선택되지 않았습니다!");
		frm.teacher.focus();
		return false;
	}
	
	else if(frm.weekday.value.length == 0) {
		alert("요일이 선택되지 않았습니다!");
		frm.weekday.focus();
		return false;
	}
	
	else if(frm.shour.value.length == 0) {
		alert("시작 시간이 입력되지 않았습니다!");
		frm.shour.focus();
		return false;
	}
	
	else if(frm.ehour.value.length == 0) {
		alert("종료 시간이 입력되지 않았습니다!");
		frm.ehour.focus();
		return false;
	}
	
	else {
		alert("교과목 등록이 완료되었습니다!");
		document.frm.submit();
		return true;
	}
}

function toList() {
	location.replace("list.jsp");
}

function check2() {
	if(frm2.id.value.length == 0) {
		alert("과목 코드가 입력되지 않았습니다!");
		frm2.id.focus();
		return false;
	}
	
	else if(frm2.name.value.length == 0) {
		alert("과목명이 입력되지 않았습니다!");
		frm2.name.focus();
		return false;
	}
	
	else if(frm2.score.value.length == 0) {
		alert("학점이 입력되지 않았습니다!");
		frm2.score.focus();
		return false;
	}
	
	else if(frm2.teacher.value.length == 0) {
		alert("담당 강사가 선택되지 않았습니다!");
		frm2.teacher.focus();
		return false;
	}
	
	else if(frm2.weekday.value.length == 0) {
		alert("요일이 선택되지 않았습니다!");
		frm2.weekday.focus();
		return false;
	}
	
	else if(frm2.shour.value.length == 0) {
		alert("시작 시간이 입력되지 않았습니다!");
		frm2.shour.focus();
		return false;
	}
	
	else if(frm2.ehour.value.length == 0) {
		alert("종료 시간이 입력되지 않았습니다!");
		frm2.ehour.focus();
		return false;
	}
	
	else {
		alert("교과목 수정이 완료되었습니다!");
		document.frm2.submit();
		return true;
	}
}

function res() {
	alert("교과목 수정이 취소되었습니다.");
	document.frm2.reset();
}