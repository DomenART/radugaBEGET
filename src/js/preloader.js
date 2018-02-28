 let preloader = document.querySelector('.preloader');

if (preloader) {
	window.addEventListener('load', function() {
		preloader.classList.add('preloader_hidden');
		preloader.addEventListener('animationend', function() {
			preloader.classList.add('hidden');
		});
		window.scrollTo(0,0);
	});
}