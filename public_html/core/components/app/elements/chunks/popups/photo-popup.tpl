<div class="popup hidden"> 
    <div class="photo-popup popup-content">
        <button type="button" class="close-btn"></button>
        <div class="photo-popup__img">
            <img src="{$_pls['photo.url']}" alt="">
        </div>
        <div class="photo-popup__desc">
            <div class="photo-popup__counter">
                <span>{{$_pls['photo.rank']} + 1}}</span> 
                из 
                <span>{$total}</span>
            </div>
            <div class="photo-popup__row">
                <div class="photo-popup__date">
                    <time>{$photo.createdon | strtotime | date_format : '%d.%m.%Y'}</time>
                </div>
                {'!xLike' | snippet : [
                    'parent' => $_modx->resource.id,
                    'tpl' => '@FILE chunks/xlike/xlike_aside.tpl'
                ]}
            </div>
            <div class="photo-popup__title">
                {$_pls['photo.name']}
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