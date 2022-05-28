var adverTop; //层距页面顶端距离
var adverLeft;
var adverObject; //层对象
function inix() {
	adverObject = document.getElementById("adver"); //获得层对象
	if (adverObject.currentStyle) {
		adverTop = parseInt(adverObject.currentStyle.top);
		adverLeft = parseInt(adverObject.currentStyle.left);
	}
	else {
		adverTop = parseInt(document.defaultView.getComputedStyle(adverObject, null).top);
		adverLeft = parseInt(document.defaultView.getComputedStyle(adverObject, null).left);
	}

}
function move() {
	var scrollTop = parseInt(document.body.scrollTop) || parseInt(document.documentElement.scrollTop);
	var scrollLeft = parseInt(document.body.scrollLeft) || parseInt(document.documentElement.scrollLeft);
	adverObject.style.top = adverTop + scrollTop + "px";

	adverObject.style.left = adverLeft + scrollLeft + "px";
}
window.onload = inix;
window.onscroll = move;

function closeAdv() {
	document.getElementById("adver").style.display = "none";
}