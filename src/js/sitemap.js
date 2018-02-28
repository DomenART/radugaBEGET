let sitemapTogglers = document.querySelectorAll('.sitemap__list-toggler');

if (sitemapTogglers) {
	sitemapTogglers.forEach(element => {  
		element.addEventListener('click', function() {
			element.nextElementSibling.classList.toggle('hidden');
			element.classList.toggle('sitemap__list-toggler_opened');
		})
	}); 
}