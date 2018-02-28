//Фиксация и стилизация синего блока меню
var homepage = document.querySelector('.homepage');
var innerpage = document.querySelector('.innerpage');
let menuBar = document.querySelector('.menubar');
let menuBarButton = document.querySelector('.menubar-button');
var menuBarLogo = document.querySelector('.menubar__logo');
let menu = document.querySelector('.menu');
var menuButtons = document.querySelectorAll('.button-menu');
let menuShow = document.querySelectorAll('.button-menu__show');
let menuHide = document.querySelectorAll('.button-menu__hide');
let menuHeaderButton = document.querySelector('.header-menu');
let menuHeaderDecor = document.querySelector('.header-menu__decor');
let homepageHeader = document.querySelector('.intro__container');
let menuBarGlued = false;

if (homepage) {
    //фиксация меню при прокрутке
    window.addEventListener('scroll', function() {
        if (window.pageYOffset >= homepageHeader.offsetHeight) {
            if (menuBarGlued == false) {
                if (window.matchMedia('(min-width: 639px)').matches) {
                    menuBar.classList.add('menubar_glued');
                }
                menuBarGlued = true;
            }
        } 
        else {
            if (!menu.classList.contains('menu_opened')) {
                if (menuBarGlued == true) {
                    menuBar.classList.remove('menubar_glued');
                    menuBarGlued = false; 
                }
                
            }
        }
    });
    //обработка переключения меню кнопками
    menuButtons.forEach(element => {    
        element.addEventListener('click', function() {
            if (!menu.classList.contains('menu_opened')) {
                menu.classList.remove('hidden');
                menu.classList.add('menu_opened');
                menuShow.forEach(element => {
                    element.classList.add('hidden');
                });
                menuHide.forEach(element => {
                    element.classList.remove('hidden');
                });
                menuBar.classList.add('menubar_menu');
                if (window.matchMedia('(min-width: 639px)').matches) {
                    menu.classList.remove('menu-anim-close');
                    menu.classList.add('menu-anim-open');
                }
                menuButtons.forEach(element => {
                    element.classList.add('button-menu_opened');
                });
            } else {
                setTimeout(function(){
                     menu.classList.add('hidden');
                }, 500)
                menu.classList.remove('menu_opened');
                menuShow.forEach(element => {   
                    element.classList.remove('hidden');
                });
                menuHide.forEach(element => {
                    element.classList.add('hidden');
                });
                menuBar.classList.remove('menubar_menu');
                if (window.matchMedia('(min-width: 639px)').matches) {
                    menu.classList.remove('menu-anim-open');
                    menu.classList.add('menu-anim-close');
                }
                menuButtons.forEach(element => {
                    element.classList.remove('button-menu_opened');
                });
                if (!menuBarGlued) {
                    menuBar.classList.remove('menubar_glued');
                }
            }
        });
    });
}

if (innerpage) {
    //обработка переключения меню кнопками
    menuButtons.forEach(element => {    
        element.addEventListener('click', function() {
            if (!menu.classList.contains('menu_opened')) {
                menu.classList.remove('hidden');
                menu.classList.add('menu_opened');
                menuShow.forEach(element => {
                    element.classList.add('hidden');
                });
                menuHide.forEach(element => {
                    element.classList.remove('hidden');
                });
                if (window.matchMedia('(min-width: 639px)').matches) {
                    menu.classList.add('menu-anim-open');
                    menu.classList.remove('menu-anim-close');
                }
                menuButtons.forEach(element => {
                    element.classList.add('button-menu_opened');
                });
               menuHeaderButton.classList.add('header-menu_menu');
            } else {
                setTimeout(function(){
                     menu.classList.add('hidden');
                }, 500)
                menu.classList.remove('menu_opened');
                menuShow.forEach(element => {
                    element.classList.remove('hidden');
                });
                menuHide.forEach(element => {
                    element.classList.add('hidden'); 
                });
                if (window.matchMedia('(min-width: 639px)').matches) {
                    menu.classList.remove('menu-anim-open');
                    menu.classList.add('menu-anim-close');
                }
                menuButtons.forEach(element => {
                    element.classList.remove('button-menu_opened');
                });
                menuHeaderButton.classList.remove('header-menu_menu');
            }
        });
    });
}
