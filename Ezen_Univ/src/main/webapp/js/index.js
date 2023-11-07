const wrapper = document.querySelector('.wrapper');
const first = document.querySelector('.first');
const loginLink = document.querySelector('.login-link');
const registerLink = document.querySelector('.register-link');
const btnpopup = document.querySelector('.btnLogin-popup');
const closebtn = document.querySelector('.icon-close');

registerLink.addEventListener('click', ()=> {
    wrapper.classList.add('active');
});

loginLink.addEventListener('click', ()=> {
    wrapper.classList.remove('active');
});

btnpopup.addEventListener('click', ()=> {
    wrapper.classList.add('active-popup');
    first.classList.add('active-popup');
});

closebtn.addEventListener('click', ()=> {
    wrapper.classList.remove('active-popup');
    first.classList.remove('active-popup');
});

