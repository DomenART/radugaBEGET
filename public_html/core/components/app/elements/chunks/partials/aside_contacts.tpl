<div class="container">
    <aside class="innerpage-aside">
        <div class="innerpage-aside__first">
            <div class="innerpage-aside__decor"></div>
            <div class="enroll">
                {'!AjaxForm@Form' | snippet : [
                    'emailSubject'  => 'Запись на урок',
                    'validate'      => 'nomail:blank,tel:required',
                    'form'          => '@FILE chunks/forms/enroll.tpl'
                ]}
            </div>
        </div>
        <div class="innerpage-aside__second">
            <img src="{$.assets_url}web/img/contacts-aside-image.jpg" alt="">
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
