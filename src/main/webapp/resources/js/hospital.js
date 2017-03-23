function goPage(path) {
	location.href=path;
}

function goList(path, action, page, pageNO) {
	location.href=path+'?action='+action+'&page='+page+'&pageNO='+pageNO;
}
