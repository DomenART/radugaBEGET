let header = document.querySelector('.header');
let headerSocial = document.querySelector('.header__social');
let headerPhone = document.querySelector('.header__tel');
let headerEmail = document.querySelector('.header__email');

if (header && window.matchMedia('(min-width: 959px)').matches) {
	window.addEventListener('scroll', function(){
		if (document.documentElement.scrollTop > 0) {
			header.classList.add('header_fixed');
			headerSocial.classList.add('header__social_fixed');
			headerPhone.classList.add('header__tel_fixed');
			headerEmail.classList.add('header__email_fixed');
		} else {
			header.classList.remove('header_fixed');
			headerSocial.classList.remove('header__social_fixed');
			headerPhone.classList.remove('header__tel_fixed');
			headerEmail.classList.remove('header__email_fixed');
		}
	});
}