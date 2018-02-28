<a href="{$uri}" class="article-item">
    <span class="article-item__date">
        <time>{$publishedon | date_format: "%d %B %Y"}</time>
    </span>
    <span class="article-item__title">
        {$pagetitle}
    </span>
    <span class="article-item__text">
        {$introtext}
    </span>
    <span class="article-item__img">
        <img src="{$_pls['article.image']}" alt="">
    </span>
</a>