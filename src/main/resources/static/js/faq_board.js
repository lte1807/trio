let index = {
	init: function() {
		$("#btn-save").on("click", () => {
			this.save();
		});
		$("#btn-delete").on("click", () => {
			this.deleteById();
		});
		$("#btn-update").on("click", () => {
			this.update();
		});
		$("#btn-reply-save").on("click", () => {
			this.replySave();
		});

	},

	save: function() {
		let data = {
			title: $("#title").val(),
			content: $("#content").val(),
			faq_category: $("#faq_category").val()
		};
		$.ajax({
			type: "POST",
			url: "/api/faq_board",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			alert("글쓰기가 완료되었습니다.");
			location.href = "/faq_board";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},


	deleteById: function() {
		var id = $("#id").text();

		$.ajax({
			type: "DELETE",
			url: "/api/faq_board/" + id,
			dataType: "json"
		}).done(function(resp) {
			alert("삭제가 완료되었습니다.");
			location.href = "/faq_board";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},

	update: function() {
		var id = $("#id").val();

		let data = {
			title: $("#title").val(),
			content: $("#content").val(),
			faq_category: $("#faq_category").val()
		};
		$.ajax({
			type: "PUT",
			url: "/api/faq_board/" + id,
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			alert("수정이 완료되었습니다.");
			location.href = "/faq_board";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},

}

index.init();


