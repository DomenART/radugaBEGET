let reviews = document.querySelectorAll('.home-reviews-item__text');
let reviewLength = 200;

if (reviews) {
	reviews.forEach(element => {
		let reviewText = element.textContent.trim(); 
		let reviewOpen = element.nextElementSibling;
		if ((reviewText.length) > reviewLength) {
			while (reviewText[reviewLength] != ' ') {
				reviewLength += 1;
			}
			let visibleText = reviewText.slice(0, reviewLength);
			element.textContent = visibleText + '...';
			reviewOpen.addEventListener('click', function() {
				element.textContent = reviewText;
				this.hidden = true;
			});
		} else {
			reviewOpen.hidden = true;
		}
	});
}

