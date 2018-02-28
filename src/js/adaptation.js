//адаптация под экраны меньше 639px
if (window.matchMedia('(max-width: 639px)').matches) {
    let homepage = document.querySelector('.homepage');
    let innerpage = document.querySelector('.innerpage');
    let menu = document.querySelector('.menu');
    let menuHeaderButton = document.querySelector('.header-menu');
    let menuButtons = document.querySelectorAll('.button-menu');
    let menuBar = document.querySelectorAll('.menubar');
    let menuBarThreshold = document.querySelector('.menubar__threshold');
    let menuBarLogo = document.querySelector('.menubar__logo');
    let introContainer = document.querySelector('.intro__container');
    let programIntro = document.querySelector('.programm__intro');
    let programList = document.querySelector('.program__list');
    let reviewsViewAll = document.querySelector('.reviews__all');
    let reviewsSection = document.querySelector('.reviews');
    let counterSite = document.querySelector('.footer__counter');
    let footerBottom = document.querySelector('.footer__bottom');
    let menuBarFixed;

    if (homepage) {
        let homepageHeader = document.querySelector('.intro__container');
        menu.appendChild(menuBarThreshold);
        menu.appendChild(menuBarLogo);  
        introContainer.appendChild(menuBarThreshold);
        introContainer.appendChild(menuBarLogo);  
        programList.parentNode.insertBefore(programList, programIntro);
        reviewsSection.appendChild(reviewsViewAll);
        window.addEventListener('scroll', function() {
            if (window.pageYOffset >= homepageHeader.offsetHeight) {
                menuHeaderButton.classList.add('header-menu_fixed');
            } else {
                menuHeaderButton.classList.remove('header-menu_fixed');
            }
        });
    }

    if (innerpage) {
        menu.appendChild(menuBarThreshold);
        menu.appendChild(menuBarLogo);  
        /*
        window.addEventListener('scroll', function() {
            if (window.pageYOffset >= document.documentElement.clientHeight) {
                menuHeaderButton.classList.add('header-menu_fixed');
            } else {
                menuHeaderButton.classList.remove('header-menu_fixed');
            }
        });
        */
    }

    footerBottom.appendChild(counterSite);
    menuButtons.forEach(element => {    
        element.addEventListener('click', function() {
            if (!menu.classList.contains('menu_opened')) {
                menuBarLogo.classList.add('menubar__logo_fixed');
                menuBarThreshold.classList.add('menubar__threshold_fixed');
            } else {
                menuBarLogo.classList.remove('menubar__logo_fixed');
                menuBarThreshold.classList.remove('menubar__threshold_fixed');
            }
        });
    });

}

