<div class="container">
    <aside class="innerpage-aside">
        <div class="innerpage-aside__first">
            <div class="innerpage-aside__decor"></div>
                {'!pdoResources' | snippet : [
                    'parents' => 'news' | uri2id,
                    'tpl' => '@FILE chunks/items/recent-article-item.tpl',
                    'limit' => '1',
                    'sortdir' => 'DESC',
                    'sortby' => 'id',
                    'includeTVs' => 'article.image',
                    'tvPrefix' => ''
                ]} 
        </div>
        <div class="innerpage-aside__second">
            <div class="address">
                <header class="address__header">
                    <div class="address__title">
                        Детский хореографический ансамбль “Радуга”
                    </div>
                    <div class="address__age">
                        <span>от 4 лет</span>
                         <svg class="decor-dots" width="26" height="4">
                            <use xlink:href="{$.assets_url}web/img/sprite.svg#three-dot-hor"/>
                        </svg> 
                    </div>
                </header>
                <div>
                    <div class="address-text address-text_aside">
                        <svg class="map-pin-icon" width="16" height="24">
                            <use xlink:href="{$.assets_url}web/img/sprite.svg#map-pin"/>
                        </svg>
                        {'contacts.address_first' | config}
                    </div>
                    <div class="address-text address-text_aside">
                        <svg class="map-pin-icon" width="16" height="24">
                            <use xlink:href="{$.assets_url}web/img/sprite.svg#map-pin"/>
                        </svg>
                        {'contacts.address_second' | config}
                    </div>
                </div>
            </div>
        </div>
        <div class="innerpage-aside__third">
            <script type="text/javascript" src="//vk.com/js/api/openapi.js?152"></script>
            <!-- VK Widget -->
            <div class="vk-members" id="vk_members"></div>
            <script type="text/javascript">
            VK.Widgets.Group("vk_members", { mode: 3, width: "auto", height: "290" }, 82976486);
            </script>
        </div>
        <div class="innerpage-aside__fourth">
            <!-- VK Widget -->
            <div class="vk-groups" id="vk_groups">
                <h3 class="vk-group__title vk-group__title_aside">МЫ ВКонтакте</h3>
            </div>
            <script type="text/javascript">
            VK.Widgets.Group("vk_groups", { mode: 4, width: "auto", height: "580" }, 82976486);
            </script>
        </div>
    </aside>
</div>
