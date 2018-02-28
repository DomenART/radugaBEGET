{extends 'file:templates/base.tpl'}
{block 'content'}
<main class="category innerpage">
    <div class="background-title" uk-scrollspy="cls: uk-animation-slide-right; offset-top: -200">
        Фотоальбом
    </div>
    <div class="container">
        <h1 class="pagetitle pagetitle_videos">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h1>
        <div class="resources-count">В этом альбоме <b>РУСЛАН, ВЫВЕДИ МЕНЯ!</b> фото</div>
        <div class="category__favorite favorite">
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
                <div class="favorite__text">
                    {$_modx->resource['about_page.text']}
                </div>
            </div>
        </div>
        <div class="category__pool">
            {'!ms2Gallery' | snippet : [
                'tplRow' => '@FILE chunks/items/photo-item.tpl',
                'tplOuter' => '@INLINE {$rows}',
                'includeOriginal' => true,
                'includeThumbs' => '370x310'
            ]}
        </div>
    </div>  
    <div class="popup hidden"> 
        <div class="photo-popup popup-content">
            <button type="button" class="close-btn"></button>
            <div class="photo-popup__img">
                <img src="{$photo.url}" alt="">
            </div>
            <div class="photo-popup__desc">
                <div class="photo-popup__counter">
                    <span>{$photo.rank + 1}</span> 
                    из 
                    <span>{$total}</span>
                </div>
                <div class="photo-popup__row">
                    <div class="photo-popup__date">
                        <time>{$photo.createdon | strtotime | date_format : '%d.%m.%Y'}</time>
                    </div>
                    <div class="likes">
                        <svg width="24" height="21">
                            <use href="#like"/> 
                        </svg>
                        147
                    </div>
                </div>
                <div class="photo-popup__title">
                    {$photo.name}
                </div>
                <div class="photo-popup__text">
                    {$photo.description}                
                </div>
                <div class="photo-popup__share">
                    <script src="http://yastatic.net/es5-shims/0.0.2/es5-shims.min.js"></script>
                    <script src="http://yastatic.net/share2/share.js"></script>
                    <div class="photo-popup__share-text">
                        Поделись с друзьями:
                    </div>
                    <div class="photo-popup__share-bar ya-share2" data-services="vkontakte,facebook,odnoklassniki,moimir,gplus,twitter" data-size="s"></div>                                             
                </div>
            </div>
            {if $prev?}
                <button class="photo-popup__control photo-popup__control_left" data-id="{$prev.id}"></button>
            {/if}
            {if $next?}
                <button class="photo-popup__control photo-popup__control_right" data-id="{$next.id}"></button>
            {/if}
        </div>
    </div> 
</main>
{/block}