document.addEventListener('turbolinks:load', function(){
  var buttons = document.querySelectorAll(".btn");
  var closes = document.querySelectorAll(".modal-close");
  
  function openModal(event) {
    var modal = document.querySelector("div[id="+event.currentTarget.id+"]");
    modal.classList.add('opacity-100', 'z-50');
  }

  function closeModal(event) {
    var modal = document.querySelector("div[id="+event.currentTarget.id+"]");
    modal.classList.remove('opacity-100', 'z-50');
  }

  buttons.forEach(function (b){
      b.addEventListener('click',openModal);
    }
  );
  
  closes.forEach(function(c){
      c.addEventListener('click',closeModal);
    }
  );
});

window.onclick = function(event) {
  var modal = document.querySelectorAll(".modal-bg");
  modal.forEach(function(m){
    if(event.target === m){
      m.classList.remove('opacity-100', 'z-50');
    }
  });
}
