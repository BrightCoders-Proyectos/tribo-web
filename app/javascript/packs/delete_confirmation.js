document.addEventListener('turbolinks:load', function () {
  const buttons = document.querySelectorAll('.btn');
  const closes = document.querySelectorAll('.cancel');

  function openModal(event) {
    const modal = document.querySelector(`div[id=${event.currentTarget.id}]`);
    modal.classList.remove('hidden');
  }

  function closeModal(event) {
    const modal = document.querySelector(
      `div[id=${event.currentTarget.parentNode.parentNode.parentNode.parentNode.id}]`
    );
    modal.classList.add('hidden');
  }

  buttons.forEach(function (b) {
    b.addEventListener('click', openModal);
  });

  closes.forEach(function (c) {
    c.addEventListener('click', closeModal);
  });
});

window.onclick = function (event) {
  const modal = document.querySelectorAll('.modal-full');
  modal.forEach(function (m) {
    if (event.target === m) {
      m.classList.add('hidden');
    }
  });
};
