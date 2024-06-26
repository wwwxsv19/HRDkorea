function icheck() {
	if(ifrm.pname.value.length == 0) {
		alert("선수 이름이 입력되지 않았습니다!");
		ifrm.pname.focus();
		return false;
	}
	
	else if(ifrm.pposition.value.length == 0) {
		alert("선수 포지션이 선택되지 않았습니다!");
		ifrm.pposition.focus();
		return false;
	}
	
	else if(ifrm.pdate.value.length == 0) {
		alert("선수 등록일이 입력되지 않았습니다!");
		ifrm.pdate.focus();
		return false;
	}
	
	else if(ifrm.pdate.value.length != 8) {
		alert("선수 등록일은 8자리입니다!");
		ifrm.pdate.focus();
		return false;
	}
	
	else if(ifrm.pgrade.value.length == 0) {
		alert("선수 등급이 선택되지 않았습니다!");
		ifrm.pgrade.focus();
		return false;
	}
	
	else {
		alert("선수 등록이 완료되었습니다!");
		document.ifrm.submit();
		return true;
	}
} 

function res() {
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.ifrm.reset();
}

function mcheck() {
	alert("선수의 정보 수정이 완료되었습니다.");
	document.mfrm.submit();
}

function can() {
	alert("선수의 정보 수정을 취소합니다.");
	document.mfrm.reset();
	window.location = "list.jsp"
}