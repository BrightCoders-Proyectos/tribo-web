document.addEventListener('turbolinks:load', function(){
  var close = document.querySelectorAll('.info-close');
  const button = document.querySelectorAll('.modal-button');
  const overlay = document.querySelectorAll('.modal-overlay');

  function openModal(event){
    var name = event.currentTarget.name;
    toggleModal(name);
  }

  function closeModal(event){
    var id = event.currentTarget.parentNode.id;
    toggleModal(id);
  }

  button.forEach(function(b){
    b.addEventListener('click', openModal);
  });
  
  overlay.forEach(function(o){
    o.addEventListener('click', closeModal);
  });

  close.forEach(function(o){
    o.addEventListener('click', closeModal);
  });
  
  function toggleModal(id) {
    const modal = document.getElementById(id);
    modal.classList.toggle('opacity-0');
    modal.classList.toggle('pointer-events-none');
  }
});
