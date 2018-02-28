<article class="home-reviews-item">
    <div class="home-reviews-item__photo">
        <img src="{$_pls['review.photo']}" alt="">
    </div>
    <div class="home-reviews-item__caption">
        <div class="home-reviews-item__name">
            {$pagetitle}
        </div>
        <div class="home-reviews-item__text">
            {$content}
        </div>
        <span class="control-link control-link_right">
            Показать полностью
            <svg class="control-link__tail control-link__tail_right" width="10" height="8">
                <use xlink:href="{$.assets_url}web/img/sprite.svg#two-dot-hor"/>
            </svg>
            <svg class="control-link__arrow control-link__arrow_right" width="20" height="20">
                <use xlink:href="{$.assets_url}web/img/sprite.svg#arrow-right"/>
            </svg>
        </span>
    </div>
</article>