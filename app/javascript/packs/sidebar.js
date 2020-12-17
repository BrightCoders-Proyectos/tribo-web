document.addEventListener('turbolinks:load', function(){
  var sidebar = document.getElementById("sidebar");
  var close = document.querySelector(".sidebar-close");
  var menu = document.getElementById("menu");
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

  close.addEventListener('click',closeNav)

  document.addEventListener('keydown', e => {
    if (e.keyCode == KEY_CODE_ESC && !this.isClose)
      closeNav();
  });
});
