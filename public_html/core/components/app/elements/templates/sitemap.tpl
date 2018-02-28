{extends 'file:templates/base.tpl'}
{block 'header'}{/block}
{block 'content'}
<main class="sitemap innerpage">
    <div class="background-title" uk-scrollspy="cls: uk-animation-slide-right; offset-top: -200">
        Весь сайт<br> на одной странице
    </div>
        <div class="container">
            <h1 class="pagetitle pagetitle_sitemap">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h1>
            {'pdoMenu' | snippet : [
                'parents' => 0,
            	'sortby' => 'menuindex',
            	'outerClass' => 'sitemap__list',
            	'displayStart' => 1,
            	'tplOuter' => '@INLINE <ul class="sitemap__outer-list">{$wrapper}</ul>'
            	'tpl' => '@INLINE <li><a class="sitemap__outer-list-item" href="{$link}">{$menutitle}</a>{$wrapper}</li>',
            	'tplParentRow' => '@INLINE <li><a class="sitemap__outer-list-item" href="{$link}">{$menutitle}</a><button type="button" class="sitemap__list-toggler"></button>{$wrapper}</li>',
            	'tplInner' => '@INLINE <ul class="sitemap__inner-list hidden">{$wrapper}</ul>',
            	'tplInnerRow' => '@INLINE <li><a class="sitemap__inner-list-item" href="{$link}">{$menutitle}</a></li>'
            ]}
        </div>
    </div>
</main>
{/block}