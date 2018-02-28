//обработка popup
let popup = document.querySelector('.popup');

let close = document.querySelector('.close-btn');
if (close) {
    close.addEventListener('click',function() {
        popup.classList.add('hidden');
    });
}

if (popup) {
    popup.addEventListener('click', function(event) {
        if (event.target === popup) {
            popup.classList.add('hidden');
        }
    });
    document.addEventListener('keydown', function(event) {
    	if (event.keyCode == 27) {
    		popup.classList.add('hidden');
    	}
    });
}

