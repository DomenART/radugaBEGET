 <a href="{$uri}" class="recent-article">
	<div class="recent-article__heading">
	    Последние новости
	</div>
	<span class="recent-article__date">
	    <time>{$publishedon | date_format: "%d.%m.%Y"}</time>
	</span>
	<span class="recent-article__title">
	    {$pagetitle}
	</span>
	<span class="recent-article__text">
	    {$introtext}
	</span>
	<span class="recent-article__img">
	    <img src="{$_pls['article.image']}" alt="">
	</span>
</a>
