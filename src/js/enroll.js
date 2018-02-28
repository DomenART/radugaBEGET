// Popup формы записи
let enrollButtons = document.querySelectorAll('.js-enroll-btn');
let enroll = document.querySelector('.enroll');

if (enrollButtons) {
	let enroll= document.querySelector('.enroll');
	enrollButtons.forEach(element => {
        element.addEventListener('click', function() {
            enroll.parentNode.classList.remove('hidden');
        });
    });
}
