function submitfindIdForm(form){
	form.Nname.value = form.Nname.value.trim();
	if(form.Nname.value.length == 0){
		alert('이름을 입력해주세요.');
		form.Nname.focus();
		return false;
	}
	
	form.Nemail.value = form.Nemail.value.trim();
	
	if(form.Nemail.value.length == 0){
		alert('이메일을 입력해주세요.');
		form.Nemail.focus();
		return false;
	}
	
	form.submit();
}