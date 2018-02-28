<footer class="footer">
    <div class="container">
        <div class="footer__menu">
            <div class="footer__contacts-flex">
                <div class="footer__tel">{'contacts.tel' | config}</div>
                <a href="{'social.vk' | config}" class="footer__vk">
                    <svg class="footer-vk" width="26" height="26">
                        <use xlink:href="assets/components/app/web/img/sprite.svg#vkontakte"/>
                    </svg>      
                    Мы ВКонтакте
                </a>
            </div>
            <div class="footer__info-flex">
                <a href="#" class="footer__agreement">Пользовательское соглашение</a>
                <a href="#" class="footer__confidence">Политика конфиденциальности</a>
            </div>
            <div class="footer__links-flex">
                <a href="{'contacts' | uri2id | url}" class="footer__contacts">Контакты</a>
                <a href="{'sitemap' | uri2id | url}">Карта сайта</a>
            </div>
        </div>
        <div class="footer__bottom">
            <div class="footer__bottom-left">
                <div class="footer__copyright">
                    © 2017 г. "Радуга" - детский хореографический ансамбль.
                    Копирование материалов без указания источника запрещено. 
                </div>
                <div class="footer__counter">
                    <img src="assets/components/app/web/img/counter.jpg" alt="">
                </div>
            </div>
            <div>
                <a href="http://domenart-studio.ru/" class="footer__developer">
                    Разработка сайта<br>
                    ДоменАРТ
                </a>
            </div>
        </div>
    </div>
</footer>   