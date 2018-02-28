// Popup просмотра фото
let category = document.querySelector('.category');

if (category) {
    let photos = document.querySelectorAll('.play-btn');
    let photoPopup = document.querySelector('.photo-popup');
    let photoControls = document.querySelectorAll('.photo-popup__control');
    let photoImage = document.querySelector('.photo-popup__img');
    photos.forEach(element => {
        element.addEventListener('click', function() {
            photoPopup.parentNode.classList.remove('hidden');
        });
    });
    if (window.matchMedia('(max-width: 639px)').matches) {
        photoImage.appendChild(photoControls);
    }
}



