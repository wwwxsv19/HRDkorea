function readCheck() {
	if(frm.carNum.value.length == 0) {
		alert("차량번호가 입력되지 않았습니다!");
		frm.carNum.focus();
		return false;
	}
	
	else {
		alert("차량 조회가 정상적으로 완료되었습니다.");
		document.frm.submit();
		return true;
	}
}

function home() {
	window.location("index.jsp");
}


function updateCheck() {
	if(frm1.carNum.value.length == 0) {
		alert("차량번호가 입력되지 않았습니다.");
		frm1.carNum.focus();
		return false;
	}
	
	else if(frm1.depTime.value.length == 0) {
		alert("출차시간이 입력되지 않았습니다.");
		frm1.depTime.focus();
		return false;
	}
	
	else {
		alert("차량 출차 등록이 정상적으로 완료되었습니다.");
		document.frm1.submit();
		return true;
	}
}

function updateRes() {
	alert("작성한 내용을 초기화합니다.");
	document.frm1.reset();
}


function insertCheck() {
	if(frm2.carNum.value.length == 0) {
		alert("차량번호가 입력되지 않았습니다.");
		frm2.carNum.focus();
		return false;
	}
	
	else if(frm2.ownerName.value.length == 0) {
		alert("소유자 이름이 입력되지 않았습니다.");
		frm2.ownerName.focus();
		return false;
	}
	
	else if(frm2.location.value.length == null) {
		alert("주차 위치가 선택되지 않았습니다.");
		frm2.location.focus();
		return false;
	}
	
	else if(frm2.entTime.value.length == 0) {
		alert("입차시간이 입력되지 않았습니다.");
		frm2.entTime.focus();
		return false;
	}
	
	else {
		alert("차량 입차 등록이 정상적으로 완료되었습니다.");
		document.frm2.submit();
		return true;
	}
}

function insertRes() {
	alert("작성한 내용을 초기화합니다.");
	document.frm2.reset();
}