function insertCheck() {
	if(frm.resvno.value.lenght == 0) {
		alert("예약번호가 입력되지 않았습니다.");
		frm.resvno.focus();
		return false;
	}
	
	else if(frm.empno.value.lenght == 0) {
		alert("사원번호가 입력되지 않았습니다.");
		frm.empno.focus();
		return false;
	}
	
	else if(frm.resvdate.value.lenght == 0) {
		alert("예약날짜가 입력되지 않았습니다.");
		frm.resvdate.focus();
		return false;
	}
	
	else if(frm.seatno.value.lenght == 0) {
		alert("좌석번호가 입력되지 않았습니다.");
		frm.seatno.focus();
		return false;
	}
	
	else {
		alert("예약이 정상적으로 등록되었습니다.");
		document.frm.submit();
		return true;
	}
}

function rev() {
	alert("초기화 후 다시 작성합니다.");
	document.frm.reset();
}

function readCheck() {
	if(frm.empno.value.length == 0) {
		alert("사원번호가 입력되지 않았습니다.");
		frm.empno.focus();
		return false;
	}
	
	else {
		document.frm.submit();
		return true;
	}
}

function goHome() {
	window.location = "index.jsp";
}

function goList() {
	window.location = "list.jsp";
}