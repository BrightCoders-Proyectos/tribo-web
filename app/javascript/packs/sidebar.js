document.addEventListener('turbolinks:load', function(){
  let sidebar = document.getElementById("sidebar");
  let close = document.querySelector(".sidebar-close");
  let menu = document.getElementById("menu");
  let sidebar_outside = document.querySelector(".sidebar-outside");
  const KEY_CODE_ESC = 27;
  
  function openNav() {
    sidebar.classList.remove('hidden');
  }
  
  function closeNav() {
    sidebar.classList.add('hidden');
  }

  function isClose(){
    sidebar.classList.contains('hidden');
  }
  
  menu.addEventListener('click',openNav);

  close.addEventListener('click',closeNav);

  sidebar_outside.addEventListener('click',closeNav)

  document.addEventListener('keydown', e => {
    if (e.keyCode == KEY_CODE_ESC && !this.isClose)
      closeNav();
  });
});
