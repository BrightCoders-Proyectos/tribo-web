document.addEventListener('turbolinks:load', function () {
  const sidebar = document.getElementById('sidebar');
  const close = document.querySelector('.sidebar-close');
  const menu = document.getElementById('menu');
  const sidebarOutside = document.querySelector('.sidebar-outside');
  const KEY_CODE_ESC = 27;

  function openNav() {
    sidebar.classList.remove('hidden');
  }

  function closeNav() {
    sidebar.classList.add('hidden');
  }

  function isClose() {
    sidebar.classList.contains('hidden');
  }

  menu.addEventListener('click', openNav);

  close.addEventListener('click', closeNav);

  sidebarOutside.addEventListener('click', closeNav);

  document.addEventListener('keydown', (e) => {
    if (e.keyCode === KEY_CODE_ESC && !this.isClose) closeNav();
  });
});
