{extends 'file:templates/base.tpl'}
{block 'content'}
<main class="contacts innerpage">
    <div class="background-title" uk-scrollspy="cls: uk-animation-slide-right; offset-top: -200">
        Наша команда
    </div>
    <div class="container">
        <h1 class="pagetitle">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h1>
        <div class="contacts__grid">
            <div class="contacts__map">
                <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A0fe5f581c964cdcc3f101f5bd46d8fb70a8dd57f30a7c42266eb057ba3946fec&amp;width=479&amp;height=300&amp;lang=ru_RU&amp;scroll=true"></script>
            </div>
            <div class="contacts__items">
                <div class="contacts-item contacts-item_phone">
                    <div class="contacts-item__heading">Звоните</div>
                    <span class="contacts-item__phone" title="Телефон">{'contacts.tel' | config}</span>
                </div>
                <div class="contacts-item contacts-item_email">
                    <div class="contacts-item__heading contacts-item__heading_email">Пишите</div>
                    <a href="mailto:{'contacts.email' | config}" class="contacts-item__email" title="Электронная почта">{'contacts.email' | config}</a>
                </div>
                <div class="contacts-item">
                    <div class="contacts-item__heading">Приходите</div>
                    <div class="address-text">
                        <svg class="map-pin-icon" width="16" height="24">
                            <use xlink:href="assets/components/app/web/img/sprite.svg#map-pin"/>
                        </svg>
                        {'contacts.address_first' | config}
                    </div>
                </div>
                <div class="contacts-item">
                    <div class="contacts-item__heading"></div>
                    <div class="address-text">
                        <svg class="map-pin-icon" width="16" height="24">
                            <use xlink:href="assets/components/app/web/img/sprite.svg#map-pin"/>
                        </svg>
                        {'contacts.address_second' | config}
                    </div>
                </div>
            </div>
            <div class="box-decor box-decor_contacts"></div> 
        </div>
    </div>
</main>
{include 'file:chunks/partials/aside_contacts.tpl'}
{/block}