const toggle = document.querySelector('.navbar_toggle');
const menu = document.querySelector('.navbar_menu');
const icons = document.querySelector('.navbar_icons');

toggle.addEventListener('click',() => {
    menu.classList.toggle('active');
    icons.classList.toggle('active');
});