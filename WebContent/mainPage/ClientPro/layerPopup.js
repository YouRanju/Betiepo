window.onload = init;

var layer;

function init() {
	layer = document.getElementsByClassName("layer-popup")[0];
}

function layerpop() {
	layer.style.visibility = "visible";
}

function pop_close() {
	layer.style.visibility = "hidden";
}