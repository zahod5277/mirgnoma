{extends 'file:templates/base.tpl'}
{block 'content'}
    <div class="container" id="content">
        {include 'file:chunks/common/menuClosed.tpl'}
        {include 'file:chunks/shop/category/search.tpl'}
        {include 'file:chunks/common/crumbs.tpl'}
         {$_modx->runSnippet('!mFilter2',[
            'parents' => $_modx->resource.id,
            'element' => 'msProducts',
            'limit' => '30',
            'filters' => 'ms|price:number,tv|babyWeight,tv|country,tv|babyAge,tv|venodor,tv|pcsInPack',
            'tplFilter.row.ms|price' => 'tpl.mFilter2.filter.number',
            'tplFilter.outer.default' => '@FILE:chunks/shop/filter/tplFilter.outer.default.tpl',
            'tplFilter.outer.ms|price' => '@FILE:chunks/shop/filter/slider.tpl',
            'tplOuter' => '@FILE:chunks/shop/filter/outer.tpl',
            'tpl' => '@FILE:chunks/shop/product/product.row.tpl',
            'ajaxMode' => 'button'
            ])}
    </div>
{/block}