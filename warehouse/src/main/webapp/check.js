function check() {
	if(frm.pcode.value.length == 0) {
		alert("제품코드가 입력되지 않았습니다");
		frm.pcode.focus();
		return false;
	}
	
	else if(frm.type.value.length == null) {
		alert("입출고 구분이 선택되지 않았습니다!");
		frm.type.focus();
		return false;
	}
	
	else if(frm.cnt.value.length == 0) {
		alert("수량이 입력되지 않았습니다");
		frm.cnt.focus();
		return false;
	}
	
	else if(frm.date.value.length == 0) {
		alert("거래일자가 입력되지 않았습니다!");
		frm.date.focus();
		return false;
	}
	
	else if(frm.company.value.length == 0) {
		alert("거래처가 입력되지 않았습니다!");
		frm.company.focus();
		return false;
	}
	
	else {
		alert("입출고 등록이 완료되었습니다!");
		document.frm.submit();
		return true;
	}
}

function res() {
	alert("작성을 초기화합니다.");
	document.frm.reset();
}