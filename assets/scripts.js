function toggleItem(item){
  if (item.style.display != 'block') {
    item.style.display = 'block';
  } else {
    item.style.display = 'none';
  }
}

function toggleComments(elem){
  var detail = elem.nextElementSibling;
  if (detail.tagName == "DETAIL"){ // just making sure
    toggleItem(detail);
  }
}

function setAllCommentsDisplay(value){
  var details = document.getElementsByTagName("detail");
  for (var i = 0; i < details.length; i++) {
    details[i].style.display = value;
  }
}

function globalCommentsToggle(elem){
  var value = elem.checked ? 'block' : 'none';
  setAllCommentsDisplay(value)
  if (window.localStorage){
    window.localStorage.setItem("showComments", value)
  }
}

document.body.onload = function(){
  if (window.localStorage){
    if (window.localStorage.getItem("showComments") == 'block') {
      setAllCommentsDisplay('block');
      document.getElementById('globalCommentsSwitch').checked = true;
    }
  }
}
