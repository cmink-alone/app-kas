function checkAll(length){
	var chk = document.getElementById('checkboxMaster').checked;
	if(chk == true){
		for(var i = 1; i <= length; i++){
			document.getElementById('checkbox'+i).checked = true;
		}	
		checkedTrueMaster(length, "hallo");
	} else {
		for(var i = 1; i <= length; i++){
			document.getElementById('checkbox'+i).checked = false;
		}	
		checkedTrueMaster(length, "hallo");
	}
}

function checkedTrueMaster(length, bool, sts){
	/*var obj = document.getElementById('trIuranID'+i);
	var checkbox = document.getElementById('checkbox'+i).checked;
	
	if(checkbox == true){
		document.getElementById('trIuranID'+i).bgColor = '#0CF';
	} else {
		document.getElementById('trIuranID'+i).bgColor = '#FFFFFF';
	}*/
	
	var iCount = 0;
	for(var i = 1; i <= length; i++){
		var chk = document.getElementById('checkbox'+i).checked;
		if(chk == true){
			iCount++;
			document.getElementById('trIuranID'+i).bgColor = '#0CF';
		} else {
			if(i%2 == 0){
				document.getElementById('trIuranID'+i).bgColor = '#C4F0FD';
			} else {
				document.getElementById('trIuranID'+i).bgColor = '#FFFFFF';
			}
		}
	}
	if(iCount == length && bool == null){
		document.getElementById('checkboxMaster').checked = true;
	} else if(iCount != length && bool == null) {
		document.getElementById('checkboxMaster').checked = false;
	}
}
function trOnClick(length, index){
	var chk = document.getElementById('checkbox'+index).checked;
	if(chk == true){
		document.getElementById('checkbox'+index).checked = false;
		checkedTrueMaster(length);
	} else {
		document.getElementById('checkbox'+index).checked = true;
		checkedTrueMaster(length);
	}
}