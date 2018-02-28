{extends 'file:templates/base.tpl'}
{block 'header'}{/block}
{block 'menubar'}{/block}  
{block 'content'}
<main class="lost">
	<div class="lost__content">
		<div class="background-title background-title_lost">ошибка</div>
		<div class="lost__box">
			<div class="lost__number">404</div>
			<div class="lost__title">Страница не найдена</div>
			<div class="lost__desc">
				Возможно, она была перемещена или удалена. <br><a href="{$.server['HTTP_REFERER']}">Вернитесь назад</a> или начните с <a href="{'site_url' | config}">главной</a>
			</div>
		</div>
		<div class="lost__control">
			<a href="{$.server['HTTP_REFERER']}" class="btn-more btn-more_left">
				<span>
					<svg class="btn-more__arrow btn-more__arrow_left" width="20" height="20">
	                    <use xlink:href="{$.assets_url}web/img/sprite.svg#arrow-left"/>
	                </svg>
	                <svg class="btn-more__tail btn-more__tail_left" width="10" height="8">
	                    <use xlink:href="{$.assets_url}web/img/sprite.svg#two-dot-hor"/>
	                </svg>
					Возвращаюсь
				</span>
			</a>
			<a href="{'site_url' | config}" class="lost__btn-home btn-home">
				<svg class="btn-home__icon" width="24" height="20">
	                <use xlink:href="{$.assets_url}web/img/sprite.svg#house"/>
	            </svg>
				На главную
			</a>	
		</div>
	</div>
	<div class="lost__logo">
	    <svg class="menu-bar-logo" width="77" height="36" fill="#fff">
            <use xlink:href="{$.assets_url}web/img/sprite.svg#logo" />
        </svg>
	</div>
	<div class="lost__copyright">
		© 2017 г. "Радуга" - детский хореографический ансамбль. Копировование материалов без указания источника запрещено.
	</div>
</main>
{/block}
{block 'footer'}{/block}