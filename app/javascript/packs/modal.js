document.addEventListener('turbolinks:load', function(){
  var buttons = document.querySelectorAll(".btn");
  var closes = document.querySelectorAll(".modal-close");
  
  function openModal(event) {
    var modal = document.querySelector("div[id="+event.currentTarget.id+"]");
    modal.classList.remove('hidden');
  }

  function closeModal(event) {
    var modal = document.querySelector("div[id="+event.currentTarget.id+"]");
    modal.classList.add('hidden');
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
      m.classList.add('hidden');
    }
  });
}
