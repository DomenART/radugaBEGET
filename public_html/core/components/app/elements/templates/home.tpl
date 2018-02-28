{extends 'file:templates/base.tpl'}
{block 'header'}
    {include 'file:chunks/partials/header_homepage.tpl'}
{/block}
{block 'menubar'}
    {include 'file:chunks/partials/menubar_homepage.tpl'}
{/block}
{block 'content'}
<main class="homepage">
    <section class="intro">
        <div class="intro__container">
            <div class="intro__logo">
                <span>детский хореографический ансамбль</span>
                <svg class="svg-logo" width="330" height="160">
                    <use xlink:href="{$.assets_url}web/img/sprite.svg#logo" />
                </svg>
            </div>
            <nav class="intro-nav">
                <ul class="intro-nav__major">
                    <li>
                        <a href="{'about' | uri2id | url}">Об Ансамбле</a>
                    </li>
                    <li aria-hidden="true">
                        <svg class="intro-nav__dot-vertical" width="5" height="20">
                            <use xlink:href="{$.assets_url}web/img/sprite.svg#three-circles" />
                        </svg>
                    </li>
                    <li>
                        <a href="{'contacts' | uri2id | url}">Контакты</a>
                    </li>
                </ul>
                <ul class="intro-nav__minor">
                    <li>
                        <a href="{'routes' | uri2id | url}">Направления</a>
                    </li>
                    <li>
                        <a href="{'timetable' | uri2id | url}">Расписание</a>
                    </li>
                    <li>
                        <a href="#">Тренировки&nbsp;с&nbsp;родителями</a>
                    </li>
                </ul>
            </nav>
        </div>
    </section>
    <section class="ensemble">
        <h2 class="ensemble__background-title">Об ансамбле</h2>
        <div class="container">
            <div class="ensemble__heading">
                {$_modx->resource['ensemble.heading']}
            </div>
            <div class="ensemble__grid">
                <div>
                    <ul class="ensemble__list lovely-list lovely-list_homepage">
                        {foreach $_modx->resource['ensemble.list']| fromJSON as $row}
                        <li>{$row['item']}</li>
                        {/foreach}
                    </ul>
                    <a href="{'about' | uri2id | url}" class="btn-more btn-more_right btn-more_ensemble">
                        <span>
                            Подробнее
                            <svg class="btn-more__tail btn-more__tail_right" width="10" height="8">
                                <use xlink:href="{$.assets_url}web/img/sprite.svg#two-dot-hor"/>
                            </svg>
                            <svg class="btn-more__arrow btn-more__arrow_right" width="20" height="20">
                                <use xlink:href="{$.assets_url}web/img/sprite.svg#arrow-right"/>
                            </svg>
                        </span>
                    </a>
                </div>
                <div>
                    <iframe width="560" height="315" class="ensemble__video" src="https://www.youtube.com/embed/{$_modx->resource['ensemble.video']}?controls=0&fs=0&rel=0&showinfo=0"
                    frameborder="0" allowfullscreen></iframe>
                    <div class="ensemble__about">
                        {$_modx->resource['ensemble.text']}
                    </div>
                </div>
            </div>
        </div>
        <div class="link-box js-ensemble-links">
            <div>
                <a href="{'tutors' | uri2id | url}" class="link-object">
                    <span class="link-object__image uk-cover-container ensemble__tutors-image">
                        <img src="{$.assets_url}web/img/home-tutor.jpg" class=" js-ensemble-tutors-image" alt="" uk-cover>
                    </span>
                    <span class="link-object__title ensemble__tutors-title">
                        Преподаватели
                        <svg width="4" height="28" class="link-object__border">
                            <use xlink:href="{$.assets_url}web/img/sprite.svg#four-circles"/>
                        </svg>
                        <svg class="link-object__arrow">
                            <use xlink:href="{$.assets_url}web/img/sprite.svg#long-arrow"/>
                        </svg>
                    </span>
                </a>
            </div>
            <div>
                <a href="{'photoalbum' | uri2id | url}" class="link-object">
                    <span class="link-object__image uk-cover-container uk-cover-container ensemble__photoalbum-image">
                        <img src="{$.assets_url}web/img/home-album.jpg" class="js-ensemble-photoalbum-image" alt="" uk-cover>
                    </span>
                    <span class="link-object__title ensemble__photoalbum-title">
                        Фотоальбом
                        <svg width="4" height="28" class="link-object__border">
                            <use xlink:href="{$.assets_url}web/img/sprite.svg#four-circles"/>
                        </svg>
                        <svg class="link-object__arrow">
                            <use xlink:href="{$.assets_url}web/img/sprite.svg#long-arrow"/>
                        </svg>
                    </span>
                </a>
            </div>
            <div>
                <a href="{'videos' | uri2id | url}" class="link-object">
                    <span class="link-object__image uk-cover-container uk-cover-container ensemble__videos-image">
                        <img src="{$.assets_url}web/img/home-video.jpg" class="" alt="" uk-cover>
                    </span>
                    <span class="link-object__title ensemble__videos-title">
                        Видео
                        <svg width="4" height="28" class="link-object__border">
                            <use xlink:href="{$.assets_url}web/img/sprite.svg#four-circles"/>
                        </svg>
                        <svg class="link-object__arrow">
                            <use xlink:href="{$.assets_url}web/img/sprite.svg#long-arrow"/>
                        </svg>
                    </span>
                </a>
            </div>
        </div>
    </section>
    <section class="program">
        <div class="container">
            <h2 class="program__title"><span>В нашей программе обучения</span></h2>
            <div class="programm__intro clearfix">
                Занятия способствуют развитию фантазии, воображения и творческого подхода, веру в собственные силы, приобщают ребенка к танцевальному искусству, раскрывая перед ним его многообразие и красоту.
            </div>
            <ul class="program__list">
                <li>Гимнастика</li>
                <li>Классическая хореография</li>
                <li>Народный танец</li>
                <li>Эстрадный танец</li>
                <li>Детский танец</li>
                <li>Современная хореография</li>
            </ul>
        </div>

        <div class="container">
            <div class="program__costumedgirl clearfix">
                <img src="{$.assets_url}web/img/costumedgirl.jpg">
            </div>
            <div class="program-features program-features_homepage">
                <div class="program-features__years program-features__years_homepage">
                    <span class="program-features__number">12</span><span class="program-features__text">лет работы</span>
                </div>
                <div class="program-features__international program-features__international_homepage">
                    Участие в международных конкурсах
                </div>
                <div class="program-features__reports program-features__reports_homepage">
                    <a href="#" class="program-features__concerts program-features__concerts_homepage">Отчетные концерты</a>
                    <a href="#" class="program-features__lessons program-features__lessons_homepage">Открытые уроки</a>
                </div>
            </div>
            <div class="program__collective">
                <div class="program__collective-text">
                    <p>
                        В нашем коллективе Ваш ребёнок освоит комплекс упражнений, которые сформируют правильную осанку, красивую походку, выразительную пластику, разовьют ритмичность и музыкальность, координацию движений.
                    </p>
                    <p>
                        Занятия создают ощущение радости, свободы движения, вызывают эмоциональный отклик
                        на музыку, формируют более светлое восприятие жизни.
                    </p>
                </div>
            </div>
        </div>

    </section>
    <div class="container">
        <div class="social-grid">
            <section class="reviews">
                <header class="reviews__heading">
                    <h2 class="reviews__title">О нас говорят:</h2>
                    <a href="{'reviews' | uri2id | url}" class="reviews__all">Все отзывы</a>
                </header>
                {'!pdoResources' | snippet : [
                    'parents' => 'reviews' | uri2id,
                    'limit' => 3,
                    'tpl' => '@FILE chunks/items/review-item_home.tpl',
                    'sortdir' => 'ASC',
                    'sortby' => 'RAND()',
                    'includeTVs' => 'review.photo',
                    'includeContent' => 1,
                    'tvPrefix' => ''
                ]}
            </section>
            <div class="vk-group">
                <h3 class="vk-group__title vk-group__title_home">МЫ ВКонтакте</h3>
                <script type="text/javascript" src="//vk.com/js/api/openapi.js?152"></script>
                <!-- VK Widget -->
                <div id="vk_groups"></div>
                <script type="text/javascript">
                VK.Widgets.Group("vk_groups", { mode: 4, width: "auto", height: "580" }, 82976486);
                </script>
            </div>
        </div>
        <section class="parents clearfix">
            <div class="parents-box">
                <div class="parents-box__heading">
                    А также наша команда професионалов приглашает родителей на тренировки:
                </div>
                <div class="parents-box__grid parents-box__grid_homepage">
                    <div class="parents-item">
                        <div class="parents-item__image">
                            <img src="{$.assets_url}web/img/fitness.png" alt="">
                        </div>
                        <div class="parent-item__title">
                            Фитнес
                        </div>
                    </div>
                    <div class="parents-item">
                        <div class="parents-item__image">
                            <img src="{$.assets_url}web/img/ioga.png" alt="">
                        </div>
                        <div class="parent-item__title">
                            Стрейч - йога
                        </div>
                    </div>
                    <div class="parents-item">
                        <div class="parents-item__image">
                            <img src="{$.assets_url}web/img/ballet.png" alt="">
                        </div>
                        <div class="parent-item__title">
                            Боди - балет
                        </div>
                    </div>
                    <div class="parents-item">
                        <div class="parents-item__image">
                            <img src="{$.assets_url}web/img/dances.png" alt="">
                        </div>
                        <div class="parent-item__title">
                            бальные танцы
                        </div>
                    </div>
                </div>
                <div class="parents-box__more">
                    + индивидуальные тренировки по всем направлениям
                </div>
                <button type="button" class="btn-more btn-more_right js-enroll-btn js-parents-button-more">
                    <span>
                    Записаться
                        <svg class="btn-more__tail btn-more__tail_right" width="10" height="8" fill="#ffffff">
                            <use xlink:href="{$.assets_url}web/img/sprite.svg#two-dot-hor"/>
                        </svg>
                        <svg class="btn-more__arrow btn-more__arrow_right" width="20" height="20">
                            <use xlink:href="{$.assets_url}web/img/sprite.svg#arrow-right"/>
                        </svg>
                    </span>
                </button>
            </div>
        </section>
    </div>
    <div class="container container_map">
        <section class="map">
            <div class="js-toggler-usman toggler-usman-unactive">
                <span class="map__toggler-content">Мы на карте в <span class="map__toggler-larger">Новой Усмани</span></span>
            </div>
            <div class="js-toggler-otradnoe toggler-otradnoe-active">
                    <span class="map__toggler-content">Мы на карте в <span class="map__toggler-larger">Отрадном</span></span>
            </div>
            <div class="map__wrapper">
                <div class="map__otradnoe">
                    <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A482a0734e1e4193343293d9b8fec72bf6f05e3e1b87eda5f88ca6046f0d5c62a&amp;width=1120&amp;height=600&amp;lang=ru_RU&amp;scroll=true"></script>
                </div>
                <div class="map__usman" hidden>
                    <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3Afb26eab5d8de156d638ad266d9cb6685589258117234cb4b321f7a3ce4a3b571&amp;width=1120&amp;height=600&amp;lang=ru_RU&amp;scroll=true"></script>
                </div>
            </div>
        </section>
    </div>
    <div class="preloader" style="display: flex; align-items: center; justify-content: center; flex-direction: column; width: 100%; height: 100%; position: fixed; top: 0; left: 0; z-index: 5000; background: #043f3f url('{$.assets_url}web/img/intro.jpg') no-repeat 50% 50%; background-size: cover; color: #fff; fill: #fff;">
        <span style="position: relative; top: 60px; right: -30px; transform: rotate(8.4deg); transform-origin: 50% 50%; font-size: 15px;">
        детский хореографический ансамбль</span>
        <svg class="svg-logo" style="max-width: 500px; height: 200px;">
            <use xlink:href="{$.assets_url}web/img/sprite.svg#logo"/>
        </svg>
        <div class="fingerprint-spinner"><div class="spinner-ring"></div> <div class="spinner-ring"></div> <div class="spinner-ring"></div> <div class="spinner-ring"></div> <div class="spinner-ring"></div> <div class="spinner-ring"></div> <div class="spinner-ring"></div> <div class="spinner-ring"></div> <div class="spinner-ring"></div></div>
    </div>
</main>
 <canvas class="canvas-homepage" id="canvasHomepage"></canvas>
{/block}
