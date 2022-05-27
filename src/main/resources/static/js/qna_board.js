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
			qna_category: $("#qna_category").val()
		};
		$.ajax({
			type: "POST",
			url: "/api/qna_board",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			alert("글쓰기가 완료되었습니다.");
			location.href = "/qna_board";
		}).fail(function(error) {
		alert(JSON.stringify(error));
		});
	},

	deleteById: function() {
		var id = $("#id").text();

		$.ajax({
			type: "DELETE",
			url: "/api/qna_board/" + id,
			dataType: "json"
		}).done(function(resp) {
			alert("삭제가 완료되었습니다.");
			location.href = "/qna_board";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},

	update: function() {
		var id = $("#id").val();

		let data = {
			title: $("#title").val(),
			content: $("#content").val(),
			qna_category: $("#qna_category").val()

		};
		$.ajax({
			type: "PUT",
			url: "/api/qna_board/" + id,
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			alert("수정이 완료되었습니다.");
			location.href = "/qna_board";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},

	replySave: function() {
		let data = {
			userId: $("#userId").val(),
			boardId: $("#boardId").val(),
			content: $("#reply-content").val()
		};
		$.ajax({
			type: "POST",
			url: `/api/qna_board/${data.boardId}/reply`,
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			alert("답변글 작성이 완료되었습니다.");
			location.href = `/qna_board/${data.boardId}`;
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},

	replyDelete: function(boardId, replyId) {
		$.ajax({
			type: "DELETE",
			url: `/api/qna_board/${boardId}/reply/${replyId}`,
			data: JSON.stringify(boardId),
			dataType: "json"
		}).done(function(resp) {
			alert("답변글 삭제가 완료되었습니다.");
			location.href = `/qna_board/${boardId}`;
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	}
}
index.init();