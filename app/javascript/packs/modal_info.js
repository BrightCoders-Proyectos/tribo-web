document.addEventListener('turbolinks:load', function () {
  const close = document.querySelectorAll('.info-close');
  const button = document.querySelectorAll('.modal-button');
  const overlay = document.querySelectorAll('.modal-overlay');

  function toggleModal(id) {
    const modal = document.getElementById(id);
    modal.classList.toggle('opacity-0');
    modal.classList.toggle('pointer-events-none');
  }

  function openModal(event) {
    const { name } = event.currentTarget;
    toggleModal(name);
  }

  function closeModal(event) {
    const { id } = event.currentTarget.parentNode;
    toggleModal(id);
  }

  function closeModalIcon(event) {
    const { id } = event.currentTarget.parentNode.parentNode.parentNode.parentNode;
    toggleModal(id);
  }

  button.forEach(function (b) {
    b.addEventListener('click', openModal);
  });

  overlay.forEach(function (o) {
    o.addEventListener('click', closeModal);
  });

  close.forEach(function (o) {
    o.addEventListener('click', closeModalIcon);
  });
});
