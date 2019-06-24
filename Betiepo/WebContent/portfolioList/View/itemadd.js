window.onload = init;

//아이템 추가
var items;
var item;
var newitem;
var newnode = [];

function init() {
    
    items = document.getElementById('items');
    item = document.getElementsByClassName('item')[0];
 
    removetext(items);
    
    for(var i = 1; i < items.childElementCount; i++) {
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

var Max;
var index = 0;

function copy() {
    //프로젝트를 추가했을 때 만들어지는 함수
    items.removeChild(items.lastChild);

    var cloneE = item.cloneNode(true);
    var cloneCreate = create.cloneNode(true);

    explanDate(cloneE);

    cloneE.style.display = 'block';

    items.appendChild(cloneE);
    items.appendChild(cloneCreate);

    removetext(items);

    if(localStorage.getItem('index') != null) {
        index = localStorage.getItem('index');
        index++;
        localStorage.setItem('index', index);
    } else {
        localStorage.setItem('index', index);
    }

    localStorage.setItem('items', items.innerHTML);
}

function explanDate(node) {
    //생성날짜를 표기하는 함수
    createdate = node.getElementsByClassName('date')[0];
    today = new Date();

    createdate.innerHTML = today.getFullYear() + "년 " + (today.getMonth()+1) + "월 " + today.getDate() + "일";
}