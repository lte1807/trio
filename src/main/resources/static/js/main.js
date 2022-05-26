let files =
	[
		"img/메인.jpg",
		"img/메인2.jpg",
		"img/메인3.jpg",
		"img/메인4.jpg",
		"img/메인5.jpg",

	];

let imgs = new Array();
for (let i = 0; i < files.length; i++) {
	imgs[i] = new Image(); //이미지 객체 생성
	imgs[i].src = files[i]; //이미지 로딩
}

let next = 1;
function change(img) {
	img.src = imgs[next].src; //이미지 변경
	next++; //다음 이미지
	next %= imgs.length; //개수를 넘으면 처음으로
}