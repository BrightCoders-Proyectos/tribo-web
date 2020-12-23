document.addEventListener('turbolinks:load', function(){
  var close = document.querySelector('.info-close');
  close.addEventListener('click', toggleModal);

  const button = document.querySelector('.modal-button');
  button.addEventListener('click', toggleModal);
  
  const overlay = document.querySelector('.modal-overlay');
  overlay.addEventListener('click', toggleModal);
  
  function toggleModal () {
    const modal = document.querySelector('.modal');
    modal.classList.toggle('opacity-0');
    modal.classList.toggle('pointer-events-none');
  }
});
