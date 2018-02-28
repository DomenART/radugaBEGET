{extends 'file:templates/base.tpl'}
{block 'content'}
<main class="reviews innerpage">
    <div class="background-title" uk-scrollspy="cls: uk-animation-slide-right; offset-top: -200">
        о нас говорят
    </div>
    <div class="container">
        <h1 class="pagetitle">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h1>
        <div class="favorite reviews__favorite">
            <div>
                <img src="{$_modx->resource['about_page.image']}" alt="">
                <div class="box-decor"></div>
            </div>
            <div>
                <div class="favorite__title">
                    {$_modx->resource['about_page.title']}
                </div>
                <div class="favorite__subtitle">
                    {$_modx->resource['about_page.subtitle']}
                </div>
                <div class="favorite__desc">
                    {$_modx->resource['about_page.text']}
                </div>
            </div>
        </div>
        <div class="reviews__pool">
            {'!pdoResources' | snippet : [
                'tpl' => '@FILE chunks/items/review-item.tpl',
                'sortdir' => 'ASC',
                'sortby' => 'id',
                'includeTVs' => 'review.photo,review.social',
                'includeContent' => 1,
                'tvPrefix' => ''
            ]}
        </div>
    </div>
</main>
{include 'file:chunks/partials/aside.tpl'}
{/block}
