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
		$("#btn-review-save").on("click", () => {
			this.reviewSave();
		});

	},

	save: function() {
		let data = {
			title: $("#title").val(),
			content: $("#content").val(),
			product_category: $("#product_category").val(),
			thumbnail: $("#thumbnail").val(),
			price: $("#price").val()

		};
		$.ajax({
			type: "POST",
			url: "/api/product",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			alert("상품 등록이 완료되었습니다.");
			location.href = "/product";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},


	deleteById: function() {
		var id = $("#id").text();

		$.ajax({
			type: "DELETE",
			url: `/api/product/${id}`,
			dataType: "json"
		}).done(function(resp) {
			alert("상품 삭제가 완료되었습니다.");
			location.href = "/product";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},

	update: function() {
		var id = $("#id").val();

		let data = {
			title: $("#title").val(),
			content: $("#content").val(),
			product_category: $("#product_category").val(),
			thumbnail: $("#thumbnail").val(),
			price: $("#price").val()
		};
		$.ajax({
			type: "PUT",
			url: "/api/product/" + id,
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			alert("상품 수정이 완료되었습니다.");
			location.href = "/product";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},

	reviewSave: function() {
		let data = {
			userId: $("#userId").val(),
			productId: $("#productId").val(),
			content: $("#review-content").val(),
		};
		$.ajax({
			type: "POST",
			url: `/api/product/${data.productId}/review`,
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			alert("리뷰 작성이 완료되었습니다.");
			location.href = `/product/${data.productId}`;
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},

	reviewDelete: function(productId, reviewId) {
		$.ajax({
			type: "DELETE",
			url: `/api/product/${productId}/review/${reviewId}`,
			data: JSON.stringify(productId),
			dataType: "json"
		}).done(function(resp) {
			alert("리뷰 삭제가 완료되었습니다.");
			location.href = `/product/${productId}`;
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	}
}
index.init();