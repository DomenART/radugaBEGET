<div class="likes likes_aside [ js-xlike-object ]" data-xlike-propkey="{$propkey}" data-xlike-parent="{$parent}">
	<button class="likes__btn {$value > 0 ? 'xlike__link_active' : ''} {$can ? 'js-xlike-button' : ''}" 
        {$can ? 'data-xlike-value="1" href="javascript:undefined;"' : ''}>
	    <svg class="like-icon" width="35" height="21">
	        <use xlink:href="{$.assets_url}web/img/sprite.svg#like"/> 
	    </svg>
	    <span class="js-xlike-number">{$likes | number_format : 0 : '' : ' '}</span>
	</button>
</div>	