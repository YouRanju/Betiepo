//아이템 추가
var items;
var item;
var newitem;
var newnode = [];

function init() {
    
    items = document.getElementById('items');
    item = document.getElementsByClassName('item')[0];
 
    removetext(items);
    
    for(var i = 0; i < items.childElementCount; i++) {
        newnode.push(items.childNodes[i]);
    }

    s = 0;
    while(s < newnode.length) {
        removetext(newnode[s]);
        removetext(newnode[s].childNodes[0]);
        s++;
    }
}

function removetext(node) {
    //node중에서 text를 없애는 함수
    i=0;
    for(var value of node.childNodes.values()) {
        if(value.nodeName == '#text') {
            node.removeChild(node.childNodes[i]);
        }
        i++;
    }
}

function copy(name, explain, date, img) {
    var cloneE = item.cloneNode(true);
    
    cloneE.getElementsByClassName('itemlink')[0].innerHTML = name;
    cloneE.getElementsByClassName('itemexplain')[0].innerHTML = explain;
    cloneE.getElementsByClassName('date')[0].innerHTML = date;
    //일단 지금은 경로로 설정해놓음
    cloneE.getElementsByClassName('img')[0].src = img;
    
    cloneE.style.display = 'block';

    items.appendChild(cloneE);

    removetext(items);
}