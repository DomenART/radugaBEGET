{extends 'file:templates/base.tpl'}
{block 'content'}
<main class="prices innerpage">
    <div class="container">
        <h1 class="pagetitle pagetitle_prices">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h1>
        {foreach $_modx->resource['banners'] | fromJSON as $row}
            <div class="prices__action">
                <img src="{$row['banner']}" alt="">
            </div>
        {/foreach}
        <div class="tab-bar" uk-switcher>
            <div class="tab-bar__item  js-price-control-usman">
                <span>Новая Усмань</span>
            </div>
            <div class="tab-bar__item js-price-control-otradnoe">
                <span>Отрадное</span>
            </div>
        </div>
        <div class="prices__table-wrapper uk-switcher">
            {'pdoResources' | snippet : [
                'tpl' => '@FILE chunks/pricelists/table-pricelist.tpl',
                'includeContent' => '1'
            ]}
        </div>
    </div> 
</main>
{include 'file:chunks/partials/aside.tpl'}
{/block}