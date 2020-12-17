const boton = document.querySelector('#boton');
const menu = document.querySelector('#menu');
const nav = document.querySelector('#nav')

boton.addEventListener('click', () => {
    console.log('click')
    menu.classList.toggle('hidden')
    nav.classList.toggle('shadow-lg')
})