document.addEventListener("turbolinks:load", initItems())
function initItems() {
  var item = document.querySelectorAll('.item')
  if(item) {
    for(let i of item) {
      i.querySelector('.itemTitle').addEventListener('click', function(e) {
        if(i.classList.contains('active')) {
          i.classList.remove('active')
          var answear = i.querySelector('.itemDesc')
          answear.className = 'itemDesc'
        }
        else {
          i.classList.add('active')
          var answear = i.querySelector('.itemDesc')
          answear.className = 'itemDesc'
        }
      })
    }
  }
}