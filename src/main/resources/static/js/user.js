let index = {
	init: function() {
		$("#join-btn").on("click", () => {
			this.save();
		});
		$("#update-user").on("click", () => {
			this.update();
		});
		$("#update-social").on("click", () => {
			this.social();
		});
	},

	save: function() {
		let data = {
			naddress: $("#NADDRESS").val(),
			ndeaddress: $("#NDEADDRESS").val(),
			nemail: $("#NEMAIL").val(),
			nid: $("#NID").val(),
			nname: $("#NNAME").val(),
			npost: $("#NPOST").val(),
			npw: $("#NPW").val(),
			ntel: $("#NTEL").val(),
			nbir: $("#NBIR").val()
		};

		$.ajax({
			type: "POST",
			url: "/auth/join",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			if (resp.status === 500) {
				alert("회원가입에 실패하였습니다.");
			} else {
				alert("회원가입이 완료되었습니다.");
				console.log(data);
				location.href = "/auth/loginForm";
			}

		}).fail(function(error) {
			alert(JSON.stringify(error));
		});

	},
	update: function() {
		let data = {
			naddress: $("#NADDRESS").val(),
			ndeaddress: $("#NDEADDRESS").val(),
			nemail: $("#NEMAIL").val(),
			nid: $("#NID").val(),
			nname: $("#NNAME").val(),
			npost: $("#NPOST").val(),
			npw: $("#NPW").val(),
			ntel: $("#NTEL").val(),
			nbir: $("#NBIR").val()
		};

		$.ajax({
			type: "PUT",
			url: "/user",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			if (resp.status === 500) {
				alert("회원수정을 실패하였습니다.");
			} else {
				alert("회원수정이 완료되었습니다.");
				location.href = "/";
			}

		}).fail(function(error) {
			alert(JSON.stringify(error));
		});

	},
	social: function() { //소셜 계정 회원수정
		let data = {
			saddress: $("#SADDRESS").val(),
			sdeaddress: $("#SDEADDRESS").val(),
			semail: $("#SEMAIL").val(),
			sid: $("#SID").val(),
			sname: $("#SNAME").val(),
			spost: $("#SPOST").val(),
			spw: $("#SPW").val(),
			stel: $("#STEL").val(),
			sbir: $("#SBIR").val()
		}

		$.ajax({
			type: "PUT",
			url: "/user",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			if (resp.status === 500) {
				alert("회원수정을 실패하였습니다.");
			} else {
				alert("회원수정이 완료되었습니다.");
				location.href = "/";
			}

		}).fail(function(error) {
			alert(JSON.stringify(error));
		});

	}
}

//이메일 주소 가져오기
$("#user_email").blur(function() {
	email();
});

$("#user_email_address").blur(function() {
	email();
});

function email() {
	const email = $("#user_email").val();
	const middle = $("#middle_email").text();
	const address = $("#user_email_address").val();
	if (email != "" && address != "") {
		$("#NEMAIL").val(email + middle + address);
	}
}

//로그인 체크
function logincheck() {
	if ($("#Nid").val() == "") {
		alert("아이디를 입력해주세요.");
		$("#Nid").focus();
		return false;
	}
	if ($("#Npw").val() == "") {
		alert("비밀번호를 입력해주세요.");
		$("#Npw").focus();
		return false;
	}
	$("#login-btn").submit();
}

index.init();