{extends 'file:templates/base.tpl'}
{block 'content'}
<main class="photoalbum innerpage">
    <div class="background-title" uk-scrollspy="cls: uk-animation-slide-right; offset-top: -200">
        наша жизнь
    </div>
        <div class="container">
            <h1 class="pagetitle pagetitle_photoalbum">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h1>
        </div>
        <div class="link-box link-box_photoalbum">     
            {'ms2galleryResources' | snippet: [
                'includeThumbs' => '530x',
                'includeOriginal' => true,
                'sortby' => 'id',
                'sortdir' => 'ASC',
                'limit' => 3,
                'depth' => 0,
                'sortby' => 'id',
                'tpl' => '@FILE chunks/link-objects/link-object.tpl',
            ]}    
        </div>          
        <div class="photoalbum__pool">
            {'ms2galleryResources' | snippet: [
                'includeThumbs' => '530x',
                'includeOriginal' => true,
                'offset' => 3,
                'depth' => 0,
                'sortby' => 'id',
                'sortdir' => 'ASC',
                'tpl' => '@FILE chunks/link-objects/link-object.tpl'
            ]}
        </div>
</main>
{include 'file:chunks/partials/aside.tpl'}
{/block}