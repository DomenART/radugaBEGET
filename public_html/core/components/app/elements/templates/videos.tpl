{extends 'file:templates/base.tpl'}
{block 'content'}
<main class="videos innerpage">
    <div class="background-title" uk-scrollspy="cls: uk-animation-slide-right; offset-top: -200">
        информация
    </div>
    <div class="container">
        <h1 class="pagetitle pagetitle_videos">Видео</h1>
        <div class="resources-count">Загружено <b>РУСЛАН, ВЫВЕДИ МЕНЯ!</b> видео</div>
        {'pdoResources' | snippet: [
            'includeTVs' => 'favorite',
            'includeContent' => '1',
            'tvPrefix' => '',
            'tpl' => '@FILE chunks/favorites/videos-favorite.tpl',
            'limit' => 1,
            'sortby' => 'id',
            'sortdir' => 'DESC',
            'where' => ['favorite' => 1 ]
        ]}
        <div id="pdopage">
            <div class="rows">
                <div class="videos__pool">
                    {'!pdoPage' | snippet : [
                        'element' => 'pdoResources',
                        'sortby' => 'id',
                        'sortdir' => 'DESC',
                        'limit' => 2,
                        'includeTVs' => '',
                        'includeContent' => 1,
                        'tvPrefix' => '',
                        'tpl' => '@FILE chunks/items/videos-item.tpl',
                        'tplPageWrapper' => '@FILE chunks/pagination/pagination-wrapper.tpl',
                        'tplPagePrev' => '@FILE chunks/pagination/pagination-prev.tpl',
                        'tplPageNext' => '@FILE chunks/pagination/pagination-next.tpl',
                        'tplPagePrevEmpty' => '@FILE chunks/pagination/pagination-prev-empty.tpl',
                        'tplPageNextEmpty' => '@FILE chunks/pagination/pagination-next-empty.tpl',
                        'tplPageFirst' => '@FILE chunks/pagination/pagination-first.tpl',
                        'tplPageFirstEmpty' => '@FILE chunks/pagination/pagination-first-empty.tpl',
                        'tplPageLastEmpty' => '@FILE chunks/pagination/pagination-last-empty.tp'
                    ]}
                </div>
            </div>  
            {'page.nav' | placeholder}
        </div>
    </div>
</main>
{include 'file:chunks/partials/aside.tpl'}
{/block}