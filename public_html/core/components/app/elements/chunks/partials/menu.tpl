<nav class="menu hidden">
    {'pdoMenu' | snippet : [
        'parents' => 0,
        'sortby' => 'menuindex',
        'level' => 1,
        'outerClass' => 'menu__list',
        'displayStart' => 1,
        'tpl' => '@INLINE <li><a class="menu-item" href="{$link}">{$menutitle}</a>{$wrapper}</li>',
    ]}
    <div class="menu__substrate"></div>
</nav>