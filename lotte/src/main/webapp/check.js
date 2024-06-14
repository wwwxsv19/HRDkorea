function mcheck() {
	if(frm1.pname.value.length == 0) {
		alert("선수 이름이 입력되지 않았습니다!");
		frm1.pname.focus();
		return false;
	}
	
	else if(frm1.pposition.value.length == 0) {
		alert("선수포지션이 선택되지 않았습니다");
		frm1.pposition.focus();
		return false;
	}
	
	else if(frm1.pdate.value.length == 0) {
		alert("선수 등록일이 입력되지 않았습니다!");
		frm1.pdate.focus();
		return false;
	}
	
	else if(frm1.pgrade.value.length == null) {
		alert("선수 등급이 선택되지 않았습니다!");
		frm1.pgrade.focus();
		return false;
	}
	
	else {
		alert("선수의 정보 수정이 완료되었습니다!");
		document.frm1.submit();
		return true;
	}
}

function mres() {
	alert("선수의 정보 수정을 취소합니다.");
	document.frm1.reset();
	window.location("list.jsp");
}