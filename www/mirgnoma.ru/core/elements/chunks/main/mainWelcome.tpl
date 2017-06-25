<div class="col-xs-12 col-lg-8 no-padding" id="main-welcome">
    {$_modx->runSnippet('!mSearchForm',[
        'element' => 'msProducts',
        'tplForm' => '@FILE:chunks/shop/category/searchForm.tpl'
    ])}
    <div id="sliders" class="col-xs-12">
        <div class="col-xs-12 col-sm-8 col-lg-8 no-padding" id="slider">
            <ul class="bx-slider">
                {$_modx->runSnippet('BannerY',[
                    'positions' => 1,
                    'tpl' => '@FILE:chunks/main/slide.tpl'
                ])}
            </ul>
        </div>
        {$_modx->runSnippet('msProducts',[
            'parents' => 2,
            'resources' => $_modx->resource.productOfTheDay,
            'limit' => 1,
            'tpl' => '@FILE:chunks/main/productOfTheDay.tpl'
        ])}
        <div class="hidden-lg-down col-lg-12 no-padding" id="hits">
            {$_modx->runSnippet('msProducts',[
                'parents' => 2,
                'limit' => 3,
                'tpl' => '@FILE/chunks/shop/product/hitsRow.tpl'
            ])}
        </div>
    </div>
</div>