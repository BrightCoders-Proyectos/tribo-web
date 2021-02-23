let i = 0;
document.addEventListener('DOMContentLoaded', function () {
  const elements = document.getElementsByTagName('INPUT');
  console.log(elements[1]);
  while (i < elements.length) {
    elements[i].oninvalid = function (e) {
      console.log(e);
      console.log(e.target);
      e.target.setCustomValidity('');
      if (!e.target.validity.valid) {
        e.target.setCustomValidity('Aún faltan campos por llenar');
        e.target.style.border = '3px solid hsl(0, 87%, 67%)';
        e.target.classList.add('placeholder-red-300');
      } else {
        e.target.style.border = '3px solid black';
      }
    };
    elements[i].oninput = function (e) {
      e.target.setCustomValidity('');
      e.target.style.border = '0px';
      e.target.classList.remove('placeholder-red-300');
    };
    i += 1;
  }
});
